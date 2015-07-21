package im.actor.server.persist.llectro

import java.time.{ LocalDateTime, ZoneOffset }
import java.util.UUID

import im.actor.server.db.ActorPostgresDriver.api._
import im.actor.server.models

class LlectroAdActionTable(tag: Tag) extends Table[models.llectro.LlectroAdAction](tag, "llectro_ad_actions") {
  import AdActionTypeColumnType._

  def id = column[Long]("id", O.PrimaryKey)
  def userUUID = column[UUID]("user_uuid")
  def bannerId = column[Int]("banner_id")
  def actionType = column[models.llectro.AdActionType]("action_type")
  def sentAt = column[Option[LocalDateTime]]("sent_at")

  def * = (id, userUUID, bannerId, actionType, sentAt) <> (models.llectro.LlectroAdAction.tupled, models.llectro.LlectroAdAction.unapply)
}

object LlectroAdAction {
  import AdActionTypeColumnType._

  val actions = TableQuery[LlectroAdActionTable]

  val notSent = actions.filter(_.sentAt.isEmpty)

  def create(adActions: models.llectro.LlectroAdAction) =
    actions += adActions

  def findNotSent(actionType: models.llectro.AdActionType) =
    notSent.filter(_.actionType === actionType).groupBy(_.userUUID).result

  def markSent(ids: Set[Long]) =
    actions.filter(_.id inSet ids).map(_.sentAt).update(Some(LocalDateTime.now(ZoneOffset.UTC)))

}
