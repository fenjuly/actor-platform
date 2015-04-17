package im.actor.server.persist

import com.github.tototoshi.slick.PostgresJodaSupport._
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import im.actor.server.models

class HistoryMessageTable(tag: Tag) extends Table[models.HistoryMessage](tag, "history_messages") {
  def userId = column[Int]("user_id", O.PrimaryKey)

  def peerType = column[Int]("peer_type", O.PrimaryKey)

  def peerId = column[Int]("peer_id", O.PrimaryKey)

  def date = column[DateTime]("date", O.PrimaryKey)

  def senderUserId = column[Int]("sender_user_id", O.PrimaryKey)

  def randomId = column[Long]("random_id", O.PrimaryKey)

  def messageContentHeader = column[Int]("message_content_header")

  def messageContentData = column[Array[Byte]]("message_content_data")

  def deletedAt = column[Option[DateTime]]("deleted_at")

  def * = (userId, peerType, peerId, date, senderUserId, randomId, messageContentHeader, messageContentData, deletedAt) <>
    (applyHistoryMessage.tupled, unapplyHistoryMessage)

  private def applyHistoryMessage: (Int, Int, Int, DateTime, Int, Long, Int, Array[Byte], Option[DateTime]) => models.HistoryMessage = {
    case (userId, peerType, peerId, date, senderUserId, randomId, messageContentHeader, messageContentData, deletedAt) =>
      models.HistoryMessage(
        userId = userId,
        peer = models.Peer(models.PeerType.fromInt(peerType), peerId),
        date = date,
        senderUserId = senderUserId,
        randomId = randomId,
        messageContentHeader = messageContentHeader,
        messageContentData = messageContentData,
        deletedAt = deletedAt
      )
  }

  private def unapplyHistoryMessage: models.HistoryMessage => Option[(Int, Int, Int, DateTime, Int, Long, Int, Array[Byte], Option[DateTime])] = { historyMessage =>
    models.HistoryMessage.unapply(historyMessage) map {
      case (userId, peer, date, senderUserId, randomId, messageContentHeader, messageContentData, deletedAt) =>
        (userId, peer.typ.toInt, peer.id, date, senderUserId, randomId, messageContentHeader, messageContentData, deletedAt)
    }
  }
}

object HistoryMessage {
  val messages = TableQuery[HistoryMessageTable]

  val notDeletedMessages = messages.filter(_.deletedAt.isEmpty)

  def create(message: models.HistoryMessage) =
    messages += message

  def create(newMessages: Seq[models.HistoryMessage]) =
    messages ++= newMessages

  def find(userId: Int, peer: models.Peer, dateOpt: Option[DateTime], limit: Int) = {
    val baseQuery = notDeletedMessages
      .filter(m =>
      m.userId === userId &&
        m.peerType === peer.typ.toInt &&
        m.peerId === peer.id)

    val query = dateOpt match {
      case Some(date) =>
        baseQuery.filter(_.date <= date).sortBy(_.date.desc)
      case None =>
        baseQuery.sortBy(_.date.asc)
    }

    query.take(limit).result
  }
}