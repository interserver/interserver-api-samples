package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.IpObject
import io.swagger.server.model.License
import io.swagger.server.model.LicenseOrderRequest
import io.swagger.server.model.LicenseRow
import io.swagger.server.model.LicensesOrder
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.inline_response_200_5
import io.swagger.server.model.inline_response_401

class LicensesApi(
    licensesService: LicensesApiService,
    licensesMarshaller: LicensesApiMarshaller
) {
  import licensesMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[LicenseOrderRequest]){ body =>
                  licensesService.addLicense(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  licensesService.getLicenseInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  licensesService.getLicenseInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  licensesService.getLicenseList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  licensesService.getLicensesWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  licensesService.getNewLicense()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  licensesService.licensesCancel(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ip".as[String]) { (ip) =>
              
                entity(as[IpObject]){ body =>
                  licensesService.postLicenseChangeIp(body = body, ip = ip, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[LicenseOrderRequest]){ body =>
                  licensesService.putLicenses(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  licensesService.updateLicenseInfo(id = id)
               
             
           
         
       
      }
    }
}

trait LicensesApiService {

  def addLicense200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addLicense401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addLicense(body: LicenseOrderRequest)
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getLicenseInfo200(responseLicense: License)(implicit toEntityMarshallerLicense: ToEntityMarshaller[License]): Route =
    complete((200, responseLicense))
  def getLicenseInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: License information., DataType: License
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getLicenseInfo(id: Int)
      (implicit toEntityMarshallerLicense: ToEntityMarshaller[License], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getLicenseInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getLicenseInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getLicenseInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getLicenseList200(responseLicenseRowarray: List[LicenseRow])(implicit toEntityMarshallerLicenseRowarray: ToEntityMarshaller[List[LicenseRow]]): Route =
    complete((200, responseLicenseRowarray))
  def getLicenseList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Licenses&#x60; services on your account., DataType: List[LicenseRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getLicenseList()
      (implicit toEntityMarshallerLicenseRowarray: ToEntityMarshaller[List[LicenseRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getLicensesWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getLicensesWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getLicensesWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewLicense200(responseLicensesOrder: LicensesOrder)(implicit toEntityMarshallerLicensesOrder: ToEntityMarshaller[LicensesOrder]): Route =
    complete((200, responseLicensesOrder))
  def getNewLicense401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: License ordering information., DataType: LicensesOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewLicense()
      (implicit toEntityMarshallerLicensesOrder: ToEntityMarshaller[LicensesOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def licensesCancel200(responseinline_response_200_5: inline_response_200_5)(implicit toEntityMarshallerinline_response_200_5: ToEntityMarshaller[inline_response_200_5]): Route =
    complete((200, responseinline_response_200_5))
  def licensesCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: License Cancel, DataType: inline_response_200_5
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def licensesCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_5: ToEntityMarshaller[inline_response_200_5], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postLicenseChangeIp200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def postLicenseChangeIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postLicenseChangeIp(body: IpObject, ip: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putLicenses200: Route =
    complete((200, "Validate Licenses order response"))
  def putLicenses401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Licenses order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putLicenses(body: LicenseOrderRequest)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateLicenseInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateLicenseInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateLicenseInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait LicensesApiMarshaller {
  implicit def fromRequestUnmarshallerIpObject: FromRequestUnmarshaller[IpObject]

  implicit def fromRequestUnmarshallerLicenseOrderRequest: FromRequestUnmarshaller[LicenseOrderRequest]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerLicense: ToEntityMarshaller[License]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerLicenseRowarray: ToEntityMarshaller[List[LicenseRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerLicensesOrder: ToEntityMarshaller[LicensesOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_5: ToEntityMarshaller[inline_response_200_5]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

