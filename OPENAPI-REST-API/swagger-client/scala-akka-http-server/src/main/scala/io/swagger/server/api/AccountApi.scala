package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.AccountFeatures
import io.swagger.server.model.AccountInfo
import io.swagger.server.model.AccountInfoPost
import io.swagger.server.model.AccountSshKey
import io.swagger.server.model.Account_2fa_body_1
import io.swagger.server.model.GenericResponse
import io.swagger.server.model.Home
import io.swagger.server.model.IpLimitRange
import io.swagger.server.model.PasswordRequest
import io.swagger.server.model.SearchAutocompleteResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.inline_response_200
import io.swagger.server.model.inline_response_401

class AccountApi(
    accountService: AccountApiService,
    accountMarshaller: AccountApiMarshaller
) {
  import accountMarshaller._

  lazy val route: Route =
    path() { (name) => 
      delete {
        
          
            
              
                
                  accountService.deleteAccountOauthName(name = name)
               
             
           
         
       
      }
    } ~
    path() { 
      delete {
        
          
            
              
                
                  accountService.deleteAccountTfa()
               
             
           
         
       
      }
    } ~
    path() { 
      patch {
        
          
            
              
                entity(as[IpLimitRange]){ body =>
                  accountService.deleteIpLimit(body = body)
                }
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  accountService.getAccountInfo()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  accountService.getAccountTfaSetup()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  accountService.getHome()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  accountService.getSearch()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  accountService.logout()
               
             
           
         
       
      }
    } ~
    path() { (name) => 
      get {
        
          
            
              
                
                  accountService.logoutAccountOauth(name = name)
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        
          
            
              
                
                  accountService.updateAccountApiKey()
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("disable_reset".as[Int], "disable_reinstall".as[Int]) { (disableReset, disableReinstall) =>
              
                entity(as[AccountFeatures]){ body =>
                  accountService.updateAccountFeatures(disableReset = disableReset, disableReinstall = disableReinstall, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("name".as[String], "company".as[String], "address".as[String], "address2".as[String], "city".as[String], "state".as[String], "zip".as[String], "country".as[String], "phone".as[String], "locale".as[String], "email_invoices".as[String], "email_abuse".as[String], "disable_reset".as[Boolean], "disable_reinstall".as[Boolean], "disable_server_notifications".as[Boolean], "disable_email_notifications".as[Boolean], "gstin".as[String]) { (name, company, address, address2, city, state, zip, country, phone, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin) =>
              
                entity(as[AccountInfoPost]){ body =>
                  accountService.updateAccountInfo(name = name, company = company, address = address, address2 = address2, city = city, state = state, zip = zip, country = country, phone = phone, locale = locale, emailInvoices = emailInvoices, emailAbuse = emailAbuse, disableReset = disableReset, disableReinstall = disableReinstall, disableServerNotifications = disableServerNotifications, disableEmailNotifications = disableEmailNotifications, gstin = gstin, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("start".as[String], "end".as[String]) { (start, end) =>
              
                entity(as[IpLimitRange]){ body =>
                  accountService.updateAccountIpLimits(start = start, end = end, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("password".as[String]) { (password) =>
              
                entity(as[PasswordRequest]){ body =>
                  accountService.updateAccountPassword(password = password, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("ssh_key".as[String]) { (sshKey) =>
              
                entity(as[AccountSshKey]){ body =>
                  accountService.updateAccountSshKey(sshKey = sshKey, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("2fa_google_code".as[String]) { (2faGoogleCode) =>
              
                entity(as[Account_2fa_body_1]){ body =>
                  accountService.updateAccountTfa(2faGoogleCode = 2faGoogleCode, body = body)
                }
             
            }
         
       
      }
    }
}

trait AccountApiService {

  def deleteAccountOauthName200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteAccountOauthName401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteAccountOauthName(name: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteAccountTfa200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteAccountTfa401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteAccountTfa()
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteIpLimit200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def deleteIpLimit401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: IP Range removed., DataType: GenericResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteIpLimit(body: IpLimitRange)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAccountInfo200(responseAccountInfo: AccountInfo)(implicit toEntityMarshallerAccountInfo: ToEntityMarshaller[AccountInfo]): Route =
    complete((200, responseAccountInfo))
  def getAccountInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Your account information., DataType: AccountInfo
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAccountInfo()
      (implicit toEntityMarshallerAccountInfo: ToEntityMarshaller[AccountInfo], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAccountTfaSetup200(responseinline_response_200: inline_response_200)(implicit toEntityMarshallerinline_response_200: ToEntityMarshaller[inline_response_200]): Route =
    complete((200, responseinline_response_200))
  def getAccountTfaSetup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Two-factor authentication setup data., DataType: inline_response_200
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAccountTfaSetup()
      (implicit toEntityMarshallerinline_response_200: ToEntityMarshaller[inline_response_200], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getHome200(responseHome: Home)(implicit toEntityMarshallerHome: ToEntityMarshaller[Home]): Route =
    complete((200, responseHome))
  def getHome401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: General information for use on the home page., DataType: Home
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getHome()
      (implicit toEntityMarshallerHome: ToEntityMarshaller[Home], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getSearch200(responseSearchAutocompleteResponse: SearchAutocompleteResponse)(implicit toEntityMarshallerSearchAutocompleteResponse: ToEntityMarshaller[SearchAutocompleteResponse]): Route =
    complete((200, responseSearchAutocompleteResponse))
  def getSearch401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Search autocomplete results for the account., DataType: SearchAutocompleteResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getSearch()
      (implicit toEntityMarshallerSearchAutocompleteResponse: ToEntityMarshaller[SearchAutocompleteResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def logout200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def logout401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def logout()
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def logoutAccountOauth200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def logoutAccountOauth401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def logoutAccountOauth(name: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAccountApiKey200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountApiKey401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateAccountApiKey()
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAccountFeatures200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountFeatures401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def updateAccountFeatures422(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((422, responseTextResponse))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 422, Message: Request was valid but did not contain updatable values., DataType: TextResponse
   */
  def updateAccountFeatures(disableReset: Int, disableReinstall: Int, body: AccountFeatures)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

  def updateAccountInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def updateAccountInfo422(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((422, responseTextResponse))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 422, Message: Validation error while updating account data., DataType: TextResponse
   */
  def updateAccountInfo(name: String, company: String, address: String, address2: String, city: String, state: String, zip: String, country: String, phone: String, locale: String, emailInvoices: String, emailAbuse: String, disableReset: Boolean, disableReinstall: Boolean, disableServerNotifications: Boolean, disableEmailNotifications: Boolean, gstin: String, body: AccountInfoPost)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

  def updateAccountIpLimits200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountIpLimits401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def updateAccountIpLimits422(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((422, responseTextResponse))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 422, Message: IP limit payload contains an invalid address., DataType: TextResponse
   */
  def updateAccountIpLimits(start: String, end: String, body: IpLimitRange)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

  def updateAccountPassword200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def updateAccountPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateAccountPassword(password: String, body: PasswordRequest)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAccountSshKey200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountSshKey401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateAccountSshKey(sshKey: String, body: AccountSshKey)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAccountTfa200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateAccountTfa401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def updateAccountTfa422(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((422, responseTextResponse))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 422, Message: Provided two-factor verification code was invalid., DataType: TextResponse
   */
  def updateAccountTfa(2faGoogleCode: String, body: Account_2fa_body_1)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

}

trait AccountApiMarshaller {
  implicit def fromRequestUnmarshallerAccountFeatures: FromRequestUnmarshaller[AccountFeatures]

  implicit def fromRequestUnmarshallerPasswordRequest: FromRequestUnmarshaller[PasswordRequest]

  implicit def fromRequestUnmarshallerAccountSshKey: FromRequestUnmarshaller[AccountSshKey]

  implicit def fromRequestUnmarshallerAccount_2fa_body_1: FromRequestUnmarshaller[Account_2fa_body_1]

  implicit def fromRequestUnmarshallerAccountInfoPost: FromRequestUnmarshaller[AccountInfoPost]

  implicit def fromRequestUnmarshallerIpLimitRange: FromRequestUnmarshaller[IpLimitRange]


  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerAccountInfo: ToEntityMarshaller[AccountInfo]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200: ToEntityMarshaller[inline_response_200]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerHome: ToEntityMarshaller[Home]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSearchAutocompleteResponse: ToEntityMarshaller[SearchAutocompleteResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

}

