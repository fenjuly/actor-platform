package im.actor.server.api.rpc.service.llectro

import play.api.libs.json._

object MessageFormats {
  implicit val imageFormat: Format[Image] = Json.format[Image]
  implicit val bannerDataFormat: Format[BannerData] = Json.format[BannerData]
  implicit val dataWrites: Writes[Data] = Writes[Data] {
    case d: BannerData ⇒ Json.writes[BannerData].writes(d)
  }
  implicit val messageWrites: Writes[Message] = Json.writes[Message]
}

object Message {
  def banner(bannerId: Int, advertUrl: String, fileId: Long, fileAccessHash: Long, fileSize: Long) = {
    Message(BannerData.dataType, BannerData(bannerId, advertUrl, Image(fileId, fileAccessHash, fileSize)))
  }
}

case class Message(dataType: String, data: Data)

sealed trait Data

object BannerData {
  val dataType = "banner"
}
case class BannerData(bannerId: Int, advertUrl: String, image: Image) extends Data
case class Image(fileId: Long, fileAccessHash: Long, fileSize: Long)
