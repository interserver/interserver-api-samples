package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SslOrderRequest
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.inline_response_200_23
import io.swagger.server.model.inline_response_401

class SSLCertificatesApi(
    sSLCertificatesService: SSLCertificatesApiService,
    sSLCertificatesMarshaller: SSLCertificatesApiMarshaller
) {
  import sSLCertificatesMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[SslOrderRequest]){ body =>
                  sSLCertificatesService.addSsl(body = body)
                }
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  sSLCertificatesService.getNewSsl()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  sSLCertificatesService.getSslInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  sSLCertificatesService.getSslInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  sSLCertificatesService.getSslList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  sSLCertificatesService.getSslWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[SslOrderRequest]){ body =>
                  sSLCertificatesService.putSsl(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  sSLCertificatesService.sslCancel(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  sSLCertificatesService.updateSslInfo(id = id)
               
             
           
         
       
      }
    }
}

trait SSLCertificatesApiService {

  def addSsl200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addSsl401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addSsl(body: SslOrderRequest)
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewSsl200(responseObject: Object): Route =
    complete((200, responseObject))
  def getNewSsl401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Available SSL certificate types and pricing for ordering., DataType: Object
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewSsl()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getSslInfo200(responseObject: Object): Route =
    complete((200, responseObject))
  def getSslInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Detailed SSL certificate information., DataType: Object
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getSslInfo(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getSslInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getSslInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getSslInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getSslList200: Route =
    complete((200, "The listing of &#x60;SSL&#x60; services on your account."))
  def getSslList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getSslList0: Route =
    complete((0, "Default response"))
  /**
   * Code: 200, Message: The listing of &#x60;SSL&#x60; services on your account.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 0, Message: Default response
   */
  def getSslList()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getSslWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getSslWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getSslWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putSsl200: Route =
    complete((200, "Validate SSL Order response"))
  def putSsl401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate SSL Order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putSsl(body: SslOrderRequest)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def sslCancel200(responseinline_response_200_23: inline_response_200_23)(implicit toEntityMarshallerinline_response_200_23: ToEntityMarshaller[inline_response_200_23]): Route =
    complete((200, responseinline_response_200_23))
  def sslCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: SSL Cancel, DataType: inline_response_200_23
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def sslCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_23: ToEntityMarshaller[inline_response_200_23], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateSslInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateSslInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateSslInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait SSLCertificatesApiMarshaller {
  implicit def fromRequestUnmarshallerSslOrderRequest: FromRequestUnmarshaller[SslOrderRequest]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_23: ToEntityMarshaller[inline_response_200_23]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

