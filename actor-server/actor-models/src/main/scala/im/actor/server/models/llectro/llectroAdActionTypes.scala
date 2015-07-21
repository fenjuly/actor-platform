package im.actor.server.models.llectro

sealed trait AdActionType {
  def toInt: Int
}

case object AdClick extends AdActionType {
  def toInt: Int = 0
}

case object AdShow extends AdActionType {
  def toInt: Int = 1
}

object AdActionType {
  def fromInt(i: Int): AdActionType = i match {
    case 0 ⇒ AdClick
    case 1 ⇒ AdShow
  }
}