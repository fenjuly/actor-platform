package im.actor.server.models.llectro

import java.time.LocalDateTime
import java.util.UUID

case class LlectroAdAction(id: Long, userUUID: UUID, bannerId: Int, actionType: AdActionType, sentAt: Option[LocalDateTime])