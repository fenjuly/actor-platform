package im.actor.server.persist.llectro

import im.actor.server.models.llectro
import im.actor.server.models.llectro.AdActionType
import slick.driver.PostgresDriver.api._

object AdActionTypeColumnType {
  implicit val adActionTypeColumnType =
    MappedColumnType.base[AdActionType, Int](_.toInt, llectro.AdActionType.fromInt)
}
