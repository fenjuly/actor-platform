package im.actor.server.api.rpc.service

import im.actor.api.rpc.misc.ResponseVoid
import im.actor.api.rpc.{ ClientData, Ok }
import im.actor.server.api.rpc.service.llectro.LlectroServiceImpl
import im.actor.server.llectro.{ Llectro, LlectroAdUpdater }
import im.actor.server.models.llectro.{ AdClick, AdShow }
import im.actor.server.oauth.{ GoogleProvider, OAuth2GoogleConfig }
import im.actor.server.{ BaseAppSuite, ImplicitRegions, persist }

import scala.concurrent.Future

class LlectroServiceSpec extends BaseAppSuite with ImplicitRegions {
  behavior of "LlectroService"

  it should "write user clicks and shows to database" in s.e1

  object s {

    val oauthGoogleConfig = OAuth2GoogleConfig.load(system.settings.config.getConfig("services.google.oauth"))
    implicit val oauth2Service = new GoogleProvider(oauthGoogleConfig)
    implicit val authService = buildAuthService()

    val llectro = new Llectro
    val service = new LlectroServiceImpl(llectro)
    LlectroAdUpdater.startSingleton(llectro)
    val updaterProxy = LlectroAdUpdater.startSingletonProxy()

    def e1() = {
      val (user, authId, _) = createUser()
      implicit val clientData = ClientData(authId, createSessionId(), Some(user.id))

      whenReady(service.handleInitLlectro(700, 1920))(_ ⇒ ())

      val views = Future.sequence(List(
        service.jhandleNotifyBannerView(1, 0, clientData),
        service.jhandleNotifyBannerView(2, 0, clientData),
        service.jhandleNotifyBannerView(3, 0, clientData),
        service.jhandleNotifyBannerView(4, 0, clientData)
      ))

      val clicks = Future.sequence(List(
        service.jhandleNotifyBannerClick(22, clientData),
        service.jhandleNotifyBannerClick(40, clientData),
        service.jhandleNotifyBannerClick(3, clientData)
      ))

      whenReady(clicks) { resps ⇒
        resps foreach { resp ⇒
          resp should matchPattern {
            case Ok(ResponseVoid) ⇒
          }
        }
      }

      whenReady(views) { resps ⇒
        resps foreach { resp ⇒
          resp should matchPattern {
            case Ok(ResponseVoid) ⇒
          }
        }
      }

      val userUUID = whenReady(db.run(persist.llectro.LlectroUser.findByUserId(user.id)))(_.get.uuid)

      whenReady(db.run(persist.llectro.LlectroAdAction.findNotSent(AdShow))) { shows ⇒
        shows should have length 4
        shows map (_.bannerId) should contain allOf (1, 2, 3, 4)
      }
      whenReady(db.run(persist.llectro.LlectroAdAction.findNotSent(AdClick))) { clicks ⇒
        clicks should have length 3
        clicks map (_.bannerId) should contain allOf (22, 40, 3)
      }

      LlectroAdUpdater.forceUpdate(updaterProxy)
      Thread.sleep(5000)

      whenReady(db.run(persist.llectro.LlectroAdAction.findNotSent(AdShow))) { shows ⇒
        shows foreach (_.sentAt shouldBe defined)
      }
      whenReady(db.run(persist.llectro.LlectroAdAction.findNotSent(AdClick))) { clicks ⇒
        clicks foreach (_.sentAt shouldBe defined)
      }

    }
  }

}
