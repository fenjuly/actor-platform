package im.actor.server.llectro

import akka.actor._
import akka.contrib.pattern.ClusterSingletonManager
import akka.event.Logging
import akka.stream.Materializer
import im.actor.server.util.AnyRefLogSource
import im.actor.server.{ models, persist }
import slick.driver.PostgresDriver.api._

import scala.concurrent.ExecutionContextExecutor
import scala.concurrent.duration._

object LlectroAdUpdater {

  private[llectro] case object Update

  private val singletonName: String = "llectroAdUpdater"

  def startSingleton(llectro: Llectro)(
    implicit
    db:           Database,
    system:       ActorSystem,
    materializer: Materializer
  ): ActorRef = {
    system.actorOf(
      ClusterSingletonManager.props(
        singletonProps = props(db, llectro),
        singletonName = singletonName,
        terminationMessage = PoisonPill,
        role = None
      ),
      name = s"${singletonName}Manager"
    )
  }

  private def props(implicit db: Database, llectro: Llectro) =
    Props(classOf[LlectroAdUpdater], db, llectro)
}

class LlectroAdUpdater(implicit db: Database, llectro: Llectro) extends Actor with ActorLogging {

  import AnyRefLogSource._
  import LlectroAdUpdater._

  implicit val ec: ExecutionContextExecutor = context.system.dispatcher

  override val log = Logging(context.system, this)

  val scheduledSend = context.system.scheduler.schedule(10.minutes, 10.minutes, self, Update)

  override def postStop(): Unit = {
    super.postStop()
    scheduledSend.cancel()
  }

  def receive: Receive = {
    case Update ⇒
      val showsUpdate: DBIO[Unit] = for {
        bannerShows ← persist.llectro.LlectroAdAction.findNotSent(models.llectro.AdShow)
        _ = log.debug("Updaing llectro ad shows")
        _ ← DBIO.sequence(bannerShows map {
          case (uuid, shows) ⇒
            for {
              banners ← shows.result
              actionIds = banners.map(_.id)
              update ← DBIO.from(llectro.updateAdShows(uuid, banners.map(_.bannerId)))
              _ ← update match {
                case Left(e) ⇒
                  log.error(s"unable to send banner shows for user: $uuid, adActionIds: $actionIds")
                  DBIO.successful(0)
                case Right(_) ⇒
                  log.debug(s"successfully updated banner shows for user: $uuid")
                  persist.llectro.LlectroAdAction.markSent(actionIds.toSet)
              }
            } yield ()
        })
      } yield ()
      db.run(showsUpdate)

      val clicksUpdate: DBIO[Unit] = for {
        bannerClicks ← persist.llectro.LlectroAdAction.findNotSent(models.llectro.AdClick)
        _ = log.debug("Updaing llectro ad clicks")
        _ ← DBIO.sequence(bannerClicks map {
          case (uuid, clicks) ⇒
            for {
              banners ← clicks.result
              actionIds = banners.map(_.id)
              update ← DBIO.from(llectro.updateAdClicks(uuid, banners.map(_.bannerId)))
              _ ← update match {
                case Left(e) ⇒
                  log.error(s"unable to send banner clicks for user: $uuid, adActionIds: $actionIds")
                  DBIO.successful(0)
                case Right(_) ⇒
                  log.debug(s"successfully updated banner clicks for user: $uuid")
                  persist.llectro.LlectroAdAction.markSent(actionIds.toSet)
              }
            } yield ()
        })
      } yield ()
      db.run(clicksUpdate)
    case _ ⇒
  }

}
