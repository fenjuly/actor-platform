package im.actor.server.persist.llectro

import im.actor.server.models
import slick.driver.PostgresDriver.api._

object AdActionTypeColumnType {
  implicit val adActionTypeColumnType =
    MappedColumnType.base[models.llectro.AdActionType, Int](_.toInt, models.llectro.AdActionType.fromInt)
}
