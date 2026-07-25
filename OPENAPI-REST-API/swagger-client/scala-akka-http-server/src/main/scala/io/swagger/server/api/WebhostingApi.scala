package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.Id_buy_ip_body
import io.swagger.server.model.Id_migration_body
import io.swagger.server.model.ReverseDnsEntries
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.Website
import io.swagger.server.model.WebsiteBackups
import io.swagger.server.model.WebsiteLoginResponse
import io.swagger.server.model.WebsiteOrderPostRequest
import io.swagger.server.model.WebsiteOrderPutRequest
import io.swagger.server.model.WebsiteRow
import io.swagger.server.model.WebsitesOrder
import io.swagger.server.model.inline_response_200_25
import io.swagger.server.model.inline_response_200_26
import io.swagger.server.model.inline_response_200_27
import io.swagger.server.model.inline_response_200_28
import io.swagger.server.model.inline_response_401

class WebhostingApi(
    webhostingService: WebhostingApiService,
    webhostingMarshaller: WebhostingApiMarshaller
) {
  import webhostingMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[WebsiteOrderPostRequest]){ body =>
                  webhostingService.addWebsite(body = body)
                }
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  webhostingService.getNewWebsite()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsiteBuyIp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsiteInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsiteInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  webhostingService.getWebsiteList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsitesBackups(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsitesLogin(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.getWebsitesWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  webhostingService.gettWebsiteReverseDns(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ips".as[String]) { (ips) =>
              
                entity(as[Id_buy_ip_body]){ body =>
                  webhostingService.postWebsiteBuyIp(body = body, ips = ips, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("custPortal".as[String], "regEmail".as[String], "password".as[String], "ctrlPanel".as[String], "ftpUsername".as[String], "ftpPassword".as[String], "siteBusyMig".as[String], "splReqMig".as[String], "domainReg".as[String], "dataMig".as[String], "domainRegPortal".as[String], "domainRegEmail".as[String], "domainRegPassword".as[String]) { (custPortal, regEmail, password, ctrlPanel, ftpUsername, ftpPassword, siteBusyMig, splReqMig, domainReg, dataMig, domainRegPortal, domainRegEmail, domainRegPassword) =>
              
                entity(as[Id_migration_body]){ body =>
                  webhostingService.postWebsiteMigration(body = body, custPortal = custPortal, regEmail = regEmail, password = password, ctrlPanel = ctrlPanel, ftpUsername = ftpUsername, ftpPassword = ftpPassword, siteBusyMig = siteBusyMig, splReqMig = splReqMig, domainReg = domainReg, dataMig = dataMig, domainRegPortal = domainRegPortal, domainRegEmail = domainRegEmail, domainRegPassword = domainRegPassword, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ips".as[String]) { (ips) =>
              
                entity(as[ReverseDnsEntries]){ body =>
                  webhostingService.postWebsitesReverseDns(body = body, ips = ips, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[WebsiteOrderPutRequest]){ body =>
                  webhostingService.putWebsites(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  webhostingService.updateWebsiteInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  webhostingService.webhostingCancel(id = id)
               
             
           
         
       
      }
    }
}

trait WebhostingApiService {

  def addWebsite200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addWebsite401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addWebsite(body: WebsiteOrderPostRequest)
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewWebsite200(responseWebsitesOrder: WebsitesOrder)(implicit toEntityMarshallerWebsitesOrder: ToEntityMarshaller[WebsitesOrder]): Route =
    complete((200, responseWebsitesOrder))
  def getNewWebsite401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Website ordering details including available plans and pricing., DataType: WebsitesOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewWebsite()
      (implicit toEntityMarshallerWebsitesOrder: ToEntityMarshaller[WebsitesOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsiteBuyIp200(responseinline_response_200_26: inline_response_200_26)(implicit toEntityMarshallerinline_response_200_26: ToEntityMarshaller[inline_response_200_26]): Route =
    complete((200, responseinline_response_200_26))
  def getWebsiteBuyIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Current IP addresses and their reverse DNS hostnames for the website., DataType: inline_response_200_26
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsiteBuyIp(id: Int)
      (implicit toEntityMarshallerinline_response_200_26: ToEntityMarshaller[inline_response_200_26], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsiteInfo200(responseWebsite: Website)(implicit toEntityMarshallerWebsite: ToEntityMarshaller[Website]): Route =
    complete((200, responseWebsite))
  def getWebsiteInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Website details, DataType: Website
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsiteInfo(id: Int)
      (implicit toEntityMarshallerWebsite: ToEntityMarshaller[Website], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsiteInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getWebsiteInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsiteInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsiteList200(responseWebsiteRowarray: List[WebsiteRow])(implicit toEntityMarshallerWebsiteRowarray: ToEntityMarshaller[List[WebsiteRow]]): Route =
    complete((200, responseWebsiteRowarray))
  def getWebsiteList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Websites&#x60; services on your account., DataType: List[WebsiteRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsiteList()
      (implicit toEntityMarshallerWebsiteRowarray: ToEntityMarshaller[List[WebsiteRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsitesBackups200(responseWebsiteBackups: WebsiteBackups)(implicit toEntityMarshallerWebsiteBackups: ToEntityMarshaller[WebsiteBackups]): Route =
    complete((200, responseWebsiteBackups))
  def getWebsitesBackups401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Website Backups response, DataType: WebsiteBackups
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsitesBackups(id: Int)
      (implicit toEntityMarshallerWebsiteBackups: ToEntityMarshaller[WebsiteBackups], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsitesLogin200(responseWebsiteLoginResponse: WebsiteLoginResponse)(implicit toEntityMarshallerWebsiteLoginResponse: ToEntityMarshaller[WebsiteLoginResponse]): Route =
    complete((200, responseWebsiteLoginResponse))
  def getWebsitesLogin401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Website Login response, DataType: WebsiteLoginResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsitesLogin(id: Int)
      (implicit toEntityMarshallerWebsiteLoginResponse: ToEntityMarshaller[WebsiteLoginResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getWebsitesWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getWebsitesWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getWebsitesWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def gettWebsiteReverseDns200(responseReverseDnsEntries: ReverseDnsEntries)(implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]): Route =
    complete((200, responseReverseDnsEntries))
  def gettWebsiteReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: List of reverse dns entries, DataType: ReverseDnsEntries
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def gettWebsiteReverseDns(id: Int)
      (implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postWebsiteBuyIp200(responseinline_response_200_27: inline_response_200_27)(implicit toEntityMarshallerinline_response_200_27: ToEntityMarshaller[inline_response_200_27]): Route =
    complete((200, responseinline_response_200_27))
  def postWebsiteBuyIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: DNS update result., DataType: inline_response_200_27
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postWebsiteBuyIp(body: Id_buy_ip_body, ips: String, id: Int)
      (implicit toEntityMarshallerinline_response_200_27: ToEntityMarshaller[inline_response_200_27], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postWebsiteMigration200(responseinline_response_200_28: inline_response_200_28)(implicit toEntityMarshallerinline_response_200_28: ToEntityMarshaller[inline_response_200_28]): Route =
    complete((200, responseinline_response_200_28))
  def postWebsiteMigration401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Migration request submitted., DataType: inline_response_200_28
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postWebsiteMigration(body: Id_migration_body, custPortal: String, regEmail: String, password: String, ctrlPanel: String, ftpUsername: String, ftpPassword: String, siteBusyMig: String, splReqMig: String, domainReg: String, dataMig: String, domainRegPortal: String, domainRegEmail: String, domainRegPassword: String, id: Int)
      (implicit toEntityMarshallerinline_response_200_28: ToEntityMarshaller[inline_response_200_28], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postWebsitesReverseDns200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def postWebsitesReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response from the update reverse DNS call., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postWebsitesReverseDns(body: ReverseDnsEntries, ips: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putWebsites200: Route =
    complete((200, "Validate Website order response"))
  def putWebsites401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Website order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putWebsites(body: WebsiteOrderPutRequest)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateWebsiteInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateWebsiteInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateWebsiteInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def webhostingCancel200(responseinline_response_200_25: inline_response_200_25)(implicit toEntityMarshallerinline_response_200_25: ToEntityMarshaller[inline_response_200_25]): Route =
    complete((200, responseinline_response_200_25))
  def webhostingCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Website cancel, DataType: inline_response_200_25
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def webhostingCancel(id: String)
      (implicit toEntityMarshallerinline_response_200_25: ToEntityMarshaller[inline_response_200_25], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait WebhostingApiMarshaller {
  implicit def fromRequestUnmarshallerWebsiteOrderPutRequest: FromRequestUnmarshaller[WebsiteOrderPutRequest]

  implicit def fromRequestUnmarshallerId_buy_ip_body: FromRequestUnmarshaller[Id_buy_ip_body]

  implicit def fromRequestUnmarshallerWebsiteOrderPostRequest: FromRequestUnmarshaller[WebsiteOrderPostRequest]

  implicit def fromRequestUnmarshallerReverseDnsEntries: FromRequestUnmarshaller[ReverseDnsEntries]

  implicit def fromRequestUnmarshallerId_migration_body: FromRequestUnmarshaller[Id_migration_body]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerWebsitesOrder: ToEntityMarshaller[WebsitesOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_26: ToEntityMarshaller[inline_response_200_26]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerWebsite: ToEntityMarshaller[Website]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerWebsiteRowarray: ToEntityMarshaller[List[WebsiteRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerWebsiteBackups: ToEntityMarshaller[WebsiteBackups]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerWebsiteLoginResponse: ToEntityMarshaller[WebsiteLoginResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_27: ToEntityMarshaller[inline_response_200_27]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_28: ToEntityMarshaller[inline_response_200_28]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_25: ToEntityMarshaller[inline_response_200_25]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

