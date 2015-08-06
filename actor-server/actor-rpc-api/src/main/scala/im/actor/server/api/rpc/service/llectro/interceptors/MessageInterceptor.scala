package im.actor.server.api.rpc.service.llectro.interceptors

import scala.concurrent.ExecutionContext
import scala.concurrent.duration._

import akka.actor._
import akka.contrib.pattern.{ ClusterSingletonManager, ClusterSingletonProxy }
import slick.driver.PostgresDriver.api._

import im.actor.api.rpc.peers.Peer
import im.actor.api.rpc.peers.PeerType.{ Group, Private }
import im.actor.server.api.rpc.service.llectro.LlectroAds
import im.actor.server.db.DbExtension
import im.actor.server.llectro.Llectro
import im.actor.server.persist
import im.actor.server.push.SeqUpdatesManagerRegion
import im.actor.server.util.{ S3StorageExtension, FileStorageAdapter }
import im.actor.utils.http.DownloadManager

import scala.util.Try

object MessageInterceptor {

  private case object FetchUsers
  private case class SubscribeUsers(users: Set[Int])

  private def props(
    llectroAds: LlectroAds,
    mediator:   ActorRef
  ): Props =
    Props(classOf[MessageInterceptor], llectroAds, mediator)

  val singletonName: String = "messagesInterceptor"

  def startSingleton(
    llectro:         Llectro,
    downloadManager: DownloadManager,
    mediator:        ActorRef
  )(
    implicit
    system: ActorSystem
  ): ActorRef = {
    val fsAdapter = S3StorageExtension(system).s3StorageAdapter

    val llectroAds = new LlectroAds(llectro, downloadManager, fsAdapter)
    system.actorOf(
      ClusterSingletonManager.props(
        singletonProps = props(llectroAds, mediator),
        singletonName = singletonName,
        terminationMessage = PoisonPill,
        role = None
      ),
      name = s"${singletonName}Manager"
    )
  }

  def startSingletonProxy()(implicit system: ActorSystem): ActorRef = {
    system.actorOf(
      ClusterSingletonProxy.props(
        singletonPath = s"/user/${singletonName}Manager/${singletonName}",
        role = None
      ),
      name = s"${singletonName}Proxy"
    )
  }

  def reFetch(singleton: ActorRef)(implicit system: ActorSystem) = {
    singleton ! FetchUsers
  }
}

private[interceptors] final class MessageInterceptor(
  llectroAds: LlectroAds,
  mediator:   ActorRef
) extends Actor with ActorLogging {

  import MessageInterceptor._
  import PeerInterceptor._

  private[this] implicit val ec: ExecutionContext = context.dispatcher
  private[this] implicit val system: ActorSystem = context.system

  private[this] implicit val db: Database = DbExtension(context.system).db

  private[this] val scheduledFetch = context.system.scheduler.schedule(Duration.Zero, 1.minute) { reFetch(self) }

  private[this] var users = Set.empty[Int]
  private[this] var groups = Set.empty[Int]

  override def preRestart(reason: Throwable, message: Option[Any]): Unit = {
    super.preRestart(reason, message)

    log.error(reason, "MessageInterceptor crashed")
  }

  override def postStop(): Unit = {
    super.postStop()
    scheduledFetch.cancel()
  }

  def receive = {
    case FetchUsers ⇒ fetchUsers()
    case SubscribeUsers(userIds) ⇒
      val newUsers = userIds diff users
      newUsers foreach createPrivateInterceptor
      users ++= newUsers
  }

  private def fetchUsers(): Unit = {
    log.debug("Fetching llectro users")
    for (userIds ← db.run(persist.llectro.LlectroUser.findIds())) yield {
      log.debug("Llectro userIds are {}", userIds)
      self ! SubscribeUsers(userIds.toSet)
    }
  }

  private def createPrivateInterceptor(userId: Int): Unit = {
    log.debug("Subscribing to {}", userId)

    db.run {
      for {
        llectroUser ← persist.llectro.LlectroUser.findByUserId(userId) map (_.getOrElse {
          throw new Exception(s"Failed to find llectro user ${userId}")
        })
        optFrequency ← persist.configs.Parameter.findValue(userId, UserPeerInterceptor.BannerFrequencyProperty)
        bannerFrequency = Try(optFrequency.map(_.toDouble).get).getOrElse(UserPeerInterceptor.DefaultBannerFrequency)
      } yield {
        context.actorOf(
          UserPeerInterceptor.props(
            llectroAds,
            llectroUser,
            bannerFrequency,
            mediator
          ),
          interceptorGroupId(Peer(Private, userId))
        )
      }
    } onFailure {
      case e ⇒
        // FIXME: resubscribe
        log.error(e, s"Failed to subscribe user ${userId}")
    }
  }
}
