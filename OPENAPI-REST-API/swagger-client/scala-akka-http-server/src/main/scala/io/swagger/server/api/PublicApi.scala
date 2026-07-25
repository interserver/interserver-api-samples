package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.BuyItNowList
import io.swagger.server.model.CaptchaResponse
import io.swagger.server.model.LoginErrorResponse
import io.swagger.server.model.LoginInfo
import io.swagger.server.model.LoginSubmissionExample
import io.swagger.server.model.LoginSubmissionExample_grecaptcharesponse
import io.swagger.server.model.LoginSuccessResponse
import io.swagger.server.model.Oauth_body
import io.swagger.server.model.Oauth_body_2
import io.swagger.server.model.ServicesInfo
import io.swagger.server.model.inline_response_200_6
import io.swagger.server.model.inline_response_200_7
import io.swagger.server.model.inline_response_200_8
import io.swagger.server.model.inline_response_401
import io.swagger.server.model.inline_response_map200

class PublicApi(
    publicService: PublicApiService,
    publicMarshaller: PublicApiMarshaller
) {
  import publicMarshaller._

  lazy val route: Route =
    path() { 
      get {
        
          
            
              
                
                  publicService.getAccountCurrencies()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getAccountLocales()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getCaptcha()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        parameters("fetch_by".as[String].?) { (fetchBy) =>
          
            
              
                
                  publicService.getCountries(fetchBy = fetchBy)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getInfo()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getLoginInfo()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getMPServers()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        parameters("provider".as[String]) { (provider) =>
          
            
              
                
                  publicService.getOauthRedirect(provider = provider)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.getTimezones()
               
             
           
         
       
      }
    } ~
    path() { 
      patch {
        
          
            formFields("account_id".as[Int], "code".as[String]) { (accountId, code) =>
              
                entity(as[Oauth_body_2]){ body =>
                  publicService.patchOauthTwoFactor(body = body, accountId = accountId, code = code)
                }
             
            }
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  publicService.pingServer()
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        parameters("provider".as[String]) { (provider) =>
          
            formFields("provider".as[String].?) { (provider) =>
              
                entity(as[Oauth_body]){ body =>
                  publicService.postOauthCallback(provider = provider, body = body, provider = provider)
                }
             
            }
         
        }
      }
    } ~
    path() { 
      post {
        
          
            formFields("login".as[String], "passwd".as[String], "remember".as[String], "g-recaptcha-response".as[String], "tfa".as[String]) { (login, passwd, remember, gRecaptchaResponse, tfa) =>
              
                entity(as[LoginSubmissionExample]){ body =>
                  publicService.submitLogin(login = login, passwd = passwd, remember = remember, gRecaptchaResponse = gRecaptchaResponse, tfa = tfa, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            
              
                entity(as[LoginSubmissionExample]){ body =>
                  publicService.submitSignup(body = body)
                }
             
           
         
       
      }
    }
}

trait PublicApiService {

  def getAccountCurrencies200(responseStringarray: List[String]): Route =
    complete((200, responseStringarray))
  def getAccountCurrencies401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: An array of enabled currency codes., DataType: List[String]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAccountCurrencies()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAccountLocales200(responseinline_response_map200map: Map[String, inline_response_map200])(implicit toEntityMarshallerinline_response_map200map: ToEntityMarshaller[Map[String, inline_response_map200]]): Route =
    complete((200, responseinline_response_map200map))
  def getAccountLocales401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Map of locale identifiers to display names., DataType: Map[String, inline_response_map200]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAccountLocales()
      (implicit toEntityMarshallerinline_response_map200map: ToEntityMarshaller[Map[String, inline_response_map200]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getCaptcha200(responseCaptchaResponse: CaptchaResponse)(implicit toEntityMarshallerCaptchaResponse: ToEntityMarshaller[CaptchaResponse]): Route =
    complete((200, responseCaptchaResponse))
  def getCaptcha401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: An array containing a &#x60;captcha&#x60; field containing a string with a base64 encoded captcha image., DataType: CaptchaResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getCaptcha()
      (implicit toEntityMarshallerCaptchaResponse: ToEntityMarshaller[CaptchaResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getCountries200(responseObject: Object): Route =
    complete((200, responseObject))
  def getCountries401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The list of countries with both 2 letter abbreviations and the country names., DataType: Object
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getCountries(fetchBy: Option[String])
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getInfo200(responseServicesInfo: ServicesInfo)(implicit toEntityMarshallerServicesInfo: ToEntityMarshaller[ServicesInfo]): Route =
    complete((200, responseServicesInfo))
  def getInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The modules and services information from the server., DataType: ServicesInfo
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getInfo()
      (implicit toEntityMarshallerServicesInfo: ToEntityMarshaller[ServicesInfo], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getLoginInfo200(responseLoginInfo: LoginInfo)(implicit toEntityMarshallerLoginInfo: ToEntityMarshaller[LoginInfo]): Route =
    complete((200, responseLoginInfo))
  def getLoginInfo403(responseLoginErrorResponse: LoginErrorResponse)(implicit toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route =
    complete((403, responseLoginErrorResponse))
  /**
   * Code: 200, Message: Various pieces of information useful for rendering a login page., DataType: LoginInfo
   * Code: 403, Message: Error response to a login request., DataType: LoginErrorResponse
   */
  def getLoginInfo()
      (implicit toEntityMarshallerLoginInfo: ToEntityMarshaller[LoginInfo], toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route

  def getMPServers200(responseBuyItNowList: BuyItNowList)(implicit toEntityMarshallerBuyItNowList: ToEntityMarshaller[BuyItNowList]): Route =
    complete((200, responseBuyItNowList))
  def getMPServers401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Marketplace Buy it now servers list, DataType: BuyItNowList
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMPServers()
      (implicit toEntityMarshallerBuyItNowList: ToEntityMarshaller[BuyItNowList], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getOauthRedirect200(responseinline_response_200_6: inline_response_200_6)(implicit toEntityMarshallerinline_response_200_6: ToEntityMarshaller[inline_response_200_6]): Route =
    complete((200, responseinline_response_200_6))
  def getOauthRedirect401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: OAuth redirect URL for the requested provider., DataType: inline_response_200_6
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getOauthRedirect(provider: String)
      (implicit toEntityMarshallerinline_response_200_6: ToEntityMarshaller[inline_response_200_6], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getTimezones200(responseStringarray: List[String]): Route =
    complete((200, responseStringarray))
  /**
   * Code: 200, Message: An array of all available timezone identifiers., DataType: List[String]
   */
  def getTimezones(): Route

  def patchOauthTwoFactor200(responseinline_response_200_8: inline_response_200_8)(implicit toEntityMarshallerinline_response_200_8: ToEntityMarshaller[inline_response_200_8]): Route =
    complete((200, responseinline_response_200_8))
  def patchOauthTwoFactor401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: OAuth 2FA verification result., DataType: inline_response_200_8
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def patchOauthTwoFactor(body: Oauth_body_2, accountId: Int, code: String)
      (implicit toEntityMarshallerinline_response_200_8: ToEntityMarshaller[inline_response_200_8], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def pingServer200(responseString: String): Route =
    complete((200, responseString))
  def pingServer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def pingServer0: Route =
    complete((0, "Something is wrong"))
  /**
   * Code: 200, Message: A simple response of \&quot;pong\&quot; for use with simple tests to see if a service is up. , DataType: String
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 0, Message: Something is wrong
   */
  def pingServer()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postOauthCallback200(responseinline_response_200_7: inline_response_200_7)(implicit toEntityMarshallerinline_response_200_7: ToEntityMarshaller[inline_response_200_7]): Route =
    complete((200, responseinline_response_200_7))
  def postOauthCallback401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: OAuth callback result., DataType: inline_response_200_7
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postOauthCallback(provider: String, body: Oauth_body, provider: Option[String])
      (implicit toEntityMarshallerinline_response_200_7: ToEntityMarshaller[inline_response_200_7], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def submitLogin200(responseLoginSuccessResponse: LoginSuccessResponse)(implicit toEntityMarshallerLoginSuccessResponse: ToEntityMarshaller[LoginSuccessResponse]): Route =
    complete((200, responseLoginSuccessResponse))
  def submitLogin402(responseLoginErrorResponse: LoginErrorResponse)(implicit toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route =
    complete((402, responseLoginErrorResponse))
  def submitLogin0: Route =
    complete((0, "Default response"))
  /**
   * Code: 200, Message: Successful login response containing the session token., DataType: LoginSuccessResponse
   * Code: 402, Message: Error response to a login request., DataType: LoginErrorResponse
   * Code: 0, Message: Default response
   */
  def submitLogin(login: String, passwd: String, remember: String, gRecaptchaResponse: String, tfa: String, body: LoginSubmissionExample)
      (implicit toEntityMarshallerLoginSuccessResponse: ToEntityMarshaller[LoginSuccessResponse], toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route

  def submitSignup200: Route =
    complete((200, "Account created successfully."))
  def submitSignup402(responseLoginErrorResponse: LoginErrorResponse)(implicit toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route =
    complete((402, responseLoginErrorResponse))
  /**
   * Code: 200, Message: Account created successfully.
   * Code: 402, Message: Error response to a login request., DataType: LoginErrorResponse
   */
  def submitSignup(body: LoginSubmissionExample)
      (implicit toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]): Route

}

trait PublicApiMarshaller {
  implicit def fromRequestUnmarshallerOauth_body_2: FromRequestUnmarshaller[Oauth_body_2]

  implicit def fromRequestUnmarshallerLoginSubmissionExample: FromRequestUnmarshaller[LoginSubmissionExample]

  implicit def fromRequestUnmarshallerOauth_body: FromRequestUnmarshaller[Oauth_body]


  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_map200map: ToEntityMarshaller[Map[String, inline_response_map200]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerCaptchaResponse: ToEntityMarshaller[CaptchaResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServicesInfo: ToEntityMarshaller[ServicesInfo]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerLoginInfo: ToEntityMarshaller[LoginInfo]

  implicit def toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]

  implicit def toEntityMarshallerBuyItNowList: ToEntityMarshaller[BuyItNowList]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_6: ToEntityMarshaller[inline_response_200_6]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_8: ToEntityMarshaller[inline_response_200_8]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_7: ToEntityMarshaller[inline_response_200_7]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerLoginSuccessResponse: ToEntityMarshaller[LoginSuccessResponse]

  implicit def toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]

  implicit def toEntityMarshallerLoginErrorResponse: ToEntityMarshaller[LoginErrorResponse]

}

