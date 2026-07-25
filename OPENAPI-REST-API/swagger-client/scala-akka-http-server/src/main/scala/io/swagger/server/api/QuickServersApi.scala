package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.Id_backups_body
import io.swagger.server.model.QsOrderRequest
import io.swagger.server.model.QueueResponse
import io.swagger.server.model.Quickserver
import io.swagger.server.model.QuickserverOrder
import io.swagger.server.model.QuickserverRow
import io.swagger.server.model.RestoreRequest
import io.swagger.server.model.ReverseDnsEntries
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.TimezoneUpdate
import io.swagger.server.model.VpsBackupRows
import io.swagger.server.model.VpsTemplatesList
import io.swagger.server.model.inline_response_200_11
import io.swagger.server.model.inline_response_200_12
import io.swagger.server.model.inline_response_401

class QuickServersApi(
    quickServersService: QuickServersApiService,
    quickServersMarshaller: QuickServersApiMarshaller
) {
  import quickServersMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[QsOrderRequest]){ body =>
                  quickServersService.addQs(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        parameters("all".as[String].?, "file".as[String]) { (all, file) =>
          
            
              
                
                  quickServersService.deleteQsBackup(id = id, file = file, all = all)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsBlockSmtp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsDisableCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsDisableQuota(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsEjectCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsEnableQuota(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsRestart(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsStart(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.doQsStop(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      patch {
        parameters("all".as[String].?) { (all) =>
          
            formFields("file".as[String]) { (file) =>
              
                entity(as[Id_backups_body]){ body =>
                  quickServersService.downloadQsBackup(body = body, file = file, id = id, all = all)
                }
             
            }
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  quickServersService.getNewQs()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsBackup(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        parameters("all".as[String].?) { (all) =>
          
            
              
                
                  quickServersService.getQsBackups(id = id, all = all)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsChangeHostname(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsChangeRootPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsChangeTimezone(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsChangeWebuzoPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsInsertCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  quickServersService.getQsList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsReinstallOs(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsResetPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsReverseDns(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsSetupVnc(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsTrafficUsage(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsViewDesktop(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  quickServersService.getQsWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsChangeHostname(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsChangeRootPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("timezone".as[String]) { (timezone) =>
              
                entity(as[TimezoneUpdate]){ body =>
                  quickServersService.postQsChangeTimezone(timezone = timezone, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsChangeWebuzoPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsInsertCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsReinstallOs(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsResetPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ips".as[String]) { (ips) =>
              
                entity(as[ReverseDnsEntries]){ body =>
                  quickServersService.postQsReverseDns(body = body, ips = ips, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsSetupVnc(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsTrafficUsage(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.postQsViewDesktop(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("backup".as[String], "password".as[String]) { (backup, password) =>
              
                entity(as[RestoreRequest]){ body =>
                  quickServersService.postQuickServerRestore(body = body, backup = backup, password = password, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[QsOrderRequest]){ body =>
                  quickServersService.putQs(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  quickServersService.quickserversCancel(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  quickServersService.updateQsInfo(id = id)
               
             
           
         
       
      }
    }
}

trait QuickServersApiService {

  def addQs200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addQs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addQs(body: QsOrderRequest)
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteQsBackup200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteQsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteQsBackup(id: Int, file: String, all: Option[String])
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsBlockSmtp200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsBlockSmtp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsBlockSmtp(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsDisableCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsDisableCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsDisableCd(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsDisableQuota200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsDisableQuota401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsDisableQuota(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsEjectCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsEjectCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsEjectCd(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsEnableQuota200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsEnableQuota401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsEnableQuota(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsRestart200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsRestart401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsRestart(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsStart200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsStart401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsStart(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doQsStop200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doQsStop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doQsStop(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def downloadQsBackup200(responseinline_response_200_12: inline_response_200_12)(implicit toEntityMarshallerinline_response_200_12: ToEntityMarshaller[inline_response_200_12]): Route =
    complete((200, responseinline_response_200_12))
  def downloadQsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Download URL for the backup file., DataType: inline_response_200_12
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def downloadQsBackup(body: Id_backups_body, file: String, id: Int, all: Option[String])
      (implicit toEntityMarshallerinline_response_200_12: ToEntityMarshaller[inline_response_200_12], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewQs200(responseQuickserverOrder: QuickserverOrder)(implicit toEntityMarshallerQuickserverOrder: ToEntityMarshaller[QuickserverOrder]): Route =
    complete((200, responseQuickserverOrder))
  def getNewQs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Quickserver Ordering information., DataType: QuickserverOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewQs()
      (implicit toEntityMarshallerQuickserverOrder: ToEntityMarshaller[QuickserverOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsBackup200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def getQsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsBackup(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsBackups200(responseVpsBackupRows: VpsBackupRows)(implicit toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows]): Route =
    complete((200, responseVpsBackupRows))
  def getQsBackups401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of available backups for the QuickServer., DataType: VpsBackupRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsBackups(id: Int, all: Option[String])
      (implicit toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsChangeHostname200: Route =
    complete((200, "QuickServer Change Hostname info response"))
  def getQsChangeHostname401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Change Hostname info response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsChangeHostname(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsChangeRootPassword200: Route =
    complete((200, "QuickServer Change Root Password response"))
  def getQsChangeRootPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Change Root Password response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsChangeRootPassword(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsChangeTimezone200(responseStringarray: List[String]): Route =
    complete((200, responseStringarray))
  def getQsChangeTimezone401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Change Timezone info response, DataType: List[String]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsChangeTimezone(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsChangeWebuzoPassword200: Route =
    complete((200, "QuickServer Change Webuzo Password info response"))
  def getQsChangeWebuzoPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Change Webuzo Password info response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsChangeWebuzoPassword(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsInfo200(responseQuickserver: Quickserver)(implicit toEntityMarshallerQuickserver: ToEntityMarshaller[Quickserver]): Route =
    complete((200, responseQuickserver))
  def getQsInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Quickserver details, DataType: Quickserver
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsInfo(id: Int)
      (implicit toEntityMarshallerQuickserver: ToEntityMarshaller[Quickserver], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsInsertCd200: Route =
    complete((200, "QuickServer Insert CD info response"))
  def getQsInsertCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Insert CD info response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsInsertCd(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getQsInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsList200(responseQuickserverRowarray: List[QuickserverRow])(implicit toEntityMarshallerQuickserverRowarray: ToEntityMarshaller[List[QuickserverRow]]): Route =
    complete((200, responseQuickserverRowarray))
  def getQsList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Quickservers&#x60; services on your account., DataType: List[QuickserverRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsList()
      (implicit toEntityMarshallerQuickserverRowarray: ToEntityMarshaller[List[QuickserverRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsReinstallOs200(responseVpsTemplatesList: VpsTemplatesList)(implicit toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList]): Route =
    complete((200, responseVpsTemplatesList))
  def getQsReinstallOs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Reinstall OS info response, DataType: VpsTemplatesList
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsReinstallOs(id: Int)
      (implicit toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsResetPassword200: Route =
    complete((200, "QuickServer Reset password info"))
  def getQsResetPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Reset password info
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsResetPassword(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsReverseDns200(responseReverseDnsEntries: ReverseDnsEntries)(implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]): Route =
    complete((200, responseReverseDnsEntries))
  def getQsReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: QuickServer Reverse DNS info response, DataType: ReverseDnsEntries
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsReverseDns(id: Int)
      (implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsSetupVnc200: Route =
    complete((200, "Get QuickServer Setup VNC Information"))
  def getQsSetupVnc401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get QuickServer Setup VNC Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsSetupVnc(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsTrafficUsage200: Route =
    complete((200, "Get QuickServer Traffic usage"))
  def getQsTrafficUsage401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get QuickServer Traffic usage
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsTrafficUsage(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsViewDesktop200: Route =
    complete((200, "Get QuickServer View Desktop Information"))
  def getQsViewDesktop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get QuickServer View Desktop Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsViewDesktop(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getQsWelcomeEmail200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def getQsWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getQsWelcomeEmail(id: String)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsChangeHostname200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsChangeHostname401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsChangeHostname(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsChangeRootPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsChangeRootPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsChangeRootPassword(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsChangeTimezone200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsChangeTimezone401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsChangeTimezone(timezone: String, body: TimezoneUpdate, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsChangeWebuzoPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsChangeWebuzoPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsChangeWebuzoPassword(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsInsertCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsInsertCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsInsertCd(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsReinstallOs200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsReinstallOs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsReinstallOs(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsResetPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsResetPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsResetPassword(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsReverseDns200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def postQsReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Update QuickServer Reverse DNS response, DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsReverseDns(body: ReverseDnsEntries, ips: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsSetupVnc200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQsSetupVnc401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsSetupVnc(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsTrafficUsage200: Route =
    complete((200, "Submit QuickServer Traffic Usage"))
  def postQsTrafficUsage401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Submit QuickServer Traffic Usage
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsTrafficUsage(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQsViewDesktop200: Route =
    complete((200, "Submit QuickServer View Desktop Information"))
  def postQsViewDesktop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Submit QuickServer View Desktop Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQsViewDesktop(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postQuickServerRestore200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postQuickServerRestore400(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((400, responseTextResponse))
  def postQuickServerRestore401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 400, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postQuickServerRestore(body: RestoreRequest, backup: String, password: String, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putQs200: Route =
    complete((200, "Validate QuickServer Order response"))
  def putQs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate QuickServer Order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putQs(body: QsOrderRequest)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def quickserversCancel200(responseinline_response_200_11: inline_response_200_11)(implicit toEntityMarshallerinline_response_200_11: ToEntityMarshaller[inline_response_200_11]): Route =
    complete((200, responseinline_response_200_11))
  def quickserversCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Rapid Deploy Servers Cancel, DataType: inline_response_200_11
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def quickserversCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_11: ToEntityMarshaller[inline_response_200_11], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateQsInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateQsInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateQsInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait QuickServersApiMarshaller {
  implicit def fromRequestUnmarshallerId_backups_body: FromRequestUnmarshaller[Id_backups_body]

  implicit def fromRequestUnmarshallerTimezoneUpdate: FromRequestUnmarshaller[TimezoneUpdate]

  implicit def fromRequestUnmarshallerRestoreRequest: FromRequestUnmarshaller[RestoreRequest]

  implicit def fromRequestUnmarshallerQsOrderRequest: FromRequestUnmarshaller[QsOrderRequest]

  implicit def fromRequestUnmarshallerReverseDnsEntries: FromRequestUnmarshaller[ReverseDnsEntries]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_12: ToEntityMarshaller[inline_response_200_12]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQuickserverOrder: ToEntityMarshaller[QuickserverOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQuickserver: ToEntityMarshaller[Quickserver]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQuickserverRowarray: ToEntityMarshaller[List[QuickserverRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_11: ToEntityMarshaller[inline_response_200_11]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

