package im.actor.server.api.rpc.service.llectro.interceptors

import scala.concurrent.Future
import scala.concurrent.duration._
import scala.concurrent.forkjoin.ThreadLocalRandom
import scala.util.{ Failure, Success }

import akka.actor._
import akka.contrib.pattern.DistributedPubSubMediator
import akka.pattern.pipe
import play.api.libs.json.Json
import shapeless._, syntax.std.tuple._
import slick.driver.PostgresDriver.api._

import im.actor.api.PeersImplicits
import im.actor.api.rpc.Update
import im.actor.api.rpc.files.FileLocation
import im.actor.api.rpc.messaging.{ JsonMessage, UpdateMessage }
import im.actor.api.rpc.peers.Peer
import im.actor.api.rpc.peers.PeerType._
import im.actor.server.api.rpc.service.llectro.{ LlectroAds, Message, MessageFormats }
import im.actor.server.api.rpc.service.messaging.{ Events, MessagingService }
import im.actor.server.db.DbExtension
import im.actor.server.llectro.results.Banner
import im.actor.server.{ persist, models }
import im.actor.server.push.{ SeqUpdatesManager, SeqUpdatesExtension }

object UserPeerInterceptor {

  /**
   * Message that stores optional `randomId` of an ad message
   * it should be a collection of authId -> randomIdOpt pairs
   * @param randomIds `randomId` of an ad message
   */
  case class PublishedAd(randomIds: Seq[(Long, Option[Long])])

  private[llectro] case object FetchGroups

  private[llectro] case class SubscribeGroups(groups: Set[Int])

  private[llectro] val DefaultBannerFrequency: Double = 0.5
  private[llectro] val MaxInterval: Int = 17
  private[llectro] val MinInterval: Int = 3

  val BannerFrequencyProperty: String = "llectro.banners.frequency"

  case class UpdateFrequency(frequency: Double)

  def props(
    llectroAds:      LlectroAds,
    adsUser:         models.llectro.LlectroUser,
    bannerFrequency: Double,
    mediator:        ActorRef
  ) =
    Props(classOf[UserPeerInterceptor], llectroAds, adsUser, bannerFrequency, mediator)
}

private[interceptors] final class UserPeerInterceptor(
  llectroAds:      LlectroAds,
  adsUser:         models.llectro.LlectroUser,
  bannerFrequency: Double,
  mediator:        ActorRef
) extends PeerInterceptor with PeersImplicits {
  import DistributedPubSubMediator._

  import PeerInterceptor._
  import MessageFormats._
  import UserPeerInterceptor._

  private implicit val db: Database = DbExtension(context.system).db
  private implicit val seqUpdExt: SeqUpdatesExtension = SeqUpdatesExtension(context.system)

  private[this] val initialInterval = calculateAdsInterval(bannerFrequency)
  private[this] val scheduledResubscribe = system.scheduler.schedule(Duration.Zero, 5.minutes) { self ! Resubscribe }

  private[this] var adRandomIds = Map.empty[Long, Long]
  private[this] var userGroups: Set[Int] = Set.empty[Int]

  def receive = init(initialInterval)

  def init(adsInterval: Int): Receive = {
    case Resubscribe ⇒
      val privatePeer = Peer(Private, adsUser.userId)
      mediator ! Subscribe(MessagingService.messagesTopic(privatePeer), Some(interceptorGroupId(privatePeer)), self)
    case SubscribeAck(Subscribe(topic, _, _)) ⇒
      log.debug("Intercepting {} with interval {}", adsUser.userId, adsInterval)
      scheduledResubscribe.cancel()
      context become working(adsInterval, adsInterval)
      system.scheduler.schedule(Duration.Zero, 1.minute) { self ! FetchGroups }
  }

  def working(adsInterval: Int, countdown: Int): Receive = {
    case UpdateFrequency(newFrequency)        ⇒ context become working(calculateAdsInterval(newFrequency), countdown)
    case FetchGroups                          ⇒ fetchGroups()
    case SubscribeAck(Subscribe(topic, _, _)) ⇒ log.debug("got ack to topic {}", topic)
    case SubscribeGroups(groupIds) ⇒
      val newGroups = groupIds diff userGroups
      newGroups foreach { groupId ⇒
        val peer = Peer(Group, groupId)
        mediator ! Subscribe(MessagingService.messagesTopic(peer), Some(interceptorGroupId(peer)), self)
      }
      userGroups ++= groupIds
    case Events.PeerMessage(fromPeer, toPeer, _, _, _) ⇒
      log.debug("New message, decrement counter: {} of {}", countdown - 1, adsInterval)
      if (adsInterval != 0) {
        if ((countdown - 1) == 0) {
          context become working(adsInterval, adsInterval)
          val dialogPeer = if (toPeer.id == adsUser.userId) fromPeer else toPeer
          insertAds(dialogPeer.asStruct)
        } else {
          context become working(adsInterval, countdown - 1)
        }
      }
    case PublishedAd(ids) ⇒
      ids foreach {
        case (authId, randomIdOpt) ⇒
          randomIdOpt foreach { randomId ⇒
            adRandomIds = adRandomIds + (authId → randomId)
          }
      }
  }

  private def fetchGroups(): Unit = {
    log.debug("Fetching groups for llectroUser {}", adsUser.uuid)
    db.run {
      for {
        groupUsers ← persist.GroupUser.findByUserId(adsUser.userId)
        groupIds = groupUsers map (_.groupId)
      } yield {
        log.debug("Subscribing user: {} for groups: {}", adsUser.userId, groupIds)
        self ! SubscribeGroups(groupIds.toSet)
      }
    }
  }

  private def insertAds(dialogPeer: Peer): Future[PublishedAd] = {
    log.debug("Inserting ads for peer {}", dialogPeer)

    val randomIdFuture =
      db.run(for {
        devices ← getLlectroDevices(adsUser.userId)
        devicesBanners ← DBIO.sequence(devices map { device ⇒
          DBIO.from(llectroAds.getBanner(adsUser.uuid, device.screenWidth, device.screenHeight) map (device → _))
        })
        devicesBannersFiles ← DBIO.sequence(
          devicesBanners map (deviceBanner ⇒ DBIO.from(fetchBanner(llectroAds, deviceBanner._2) map (deviceBanner ++ _)))
        )
        ids ← DBIO.sequence(
          devicesBannersFiles map {
            case (device, banner, fileLocation, fileSize) ⇒
              val (randomIdOpt, updates) = getUpdates(dialogPeer, banner, device.authId, fileLocation, fileSize)
              DBIO.sequence(updates map (SeqUpdatesManager.persistAndPushUpdate(device.authId, _, None, isFat = false))) map (_ ⇒ device.authId → randomIdOpt)
          }
        )
      } yield PublishedAd(ids)) andThen {
        case Success(randomId) ⇒
          log.debug("Inserted an ad with randomId {}", randomId)
        case Failure(e) ⇒
          log.error(e, "Failed to insert ad")
      }
    randomIdFuture pipeTo self
  }

  private def getUpdates(dialogPeer: Peer, banner: Banner, authId: Long, fileLocation: FileLocation, fileSize: Long): (Option[Long], Seq[Update]) = {
    val message = JsonMessage(
      Json.stringify(Json.toJson(
        Message.banner(banner.id, banner.advertUrl, fileLocation.fileId, fileLocation.accessHash, fileSize)
      ))
    )

    adRandomIds get authId match {
      /*case Some(randomId) ⇒
        None → Seq(
          UpdateMessageContentChanged(dialogPeer, randomId, message),
          UpdateMessageDateChanged(dialogPeer, randomId, System.currentTimeMillis())
        )
      case None ⇒*/
      case _ ⇒
        val randomId = ThreadLocalRandom.current().nextLong()
        Some(randomId) → Seq(UpdateMessage(dialogPeer, adsUser.userId, System.currentTimeMillis(), randomId, message))
    }
  }

  private def calculateAdsInterval(frequency: Double): Int = MaxInterval - (frequency * (MaxInterval - MinInterval)).toInt
}