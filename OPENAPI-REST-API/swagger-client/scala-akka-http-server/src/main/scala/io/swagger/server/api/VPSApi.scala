package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.HostnameObject
import io.swagger.server.model.Id_backups_body_2
import io.swagger.server.model.PasswordRequest
import io.swagger.server.model.QueueResponse
import io.swagger.server.model.RestoreRequest
import io.swagger.server.model.ReverseDnsEntries
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TemplateRequest
import io.swagger.server.model.TextResponse
import io.swagger.server.model.TimezoneUpdate
import io.swagger.server.model.UrlRequest
import io.swagger.server.model.Vps
import io.swagger.server.model.VpsBackupRows
import io.swagger.server.model.VpsOrder
import io.swagger.server.model.VpsOrderPostRequest
import io.swagger.server.model.VpsOrderPutRequest
import io.swagger.server.model.VpsOrderPutResponse
import io.swagger.server.model.VpsRow
import io.swagger.server.model.VpsTemplatesList
import io.swagger.server.model.VpsTrafficResponse
import io.swagger.server.model.inline_response_200_12
import io.swagger.server.model.inline_response_200_24
import io.swagger.server.model.inline_response_401

class VPSApi(
    vPSService: VPSApiService,
    vPSMarshaller: VPSApiMarshaller
) {
  import vPSMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            formFields("osDistro".as[String].?, "slices".as[Int].?, "vpsPlatform".as[String].?, "controlpanel".as[String].?, "period".as[Int].?, "location".as[Int].?, "osVersion".as[String].?, "hostname".as[String].?, "coupon".as[String].?, "rootpass".as[String].?, "comment".as[String].?) { (osDistro, slices, vpsPlatform, controlpanel, period, location, osVersion, hostname, coupon, rootpass, comment) =>
              
                entity(as[VpsOrderPostRequest]){ body =>
                  vPSService.addVps(body = body, osDistro = osDistro, slices = slices, vpsPlatform = vpsPlatform, controlpanel = controlpanel, period = period, location = location, osVersion = osVersion, hostname = hostname, coupon = coupon, rootpass = rootpass, comment = comment)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        parameters("all".as[String].?, "file".as[String]) { (all, file) =>
          
            
              
                
                  vPSService.deleteVpsBackup(id = id, file = file, all = all)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsBlockSmtp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsDisableCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsDisableQuota(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsEjectCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsEnableQuota(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsRestart(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsStart(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.doVpsStop(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      patch {
        parameters("all".as[String].?) { (all) =>
          
            formFields("file".as[String]) { (file) =>
              
                entity(as[Id_backups_body_2]){ body =>
                  vPSService.downloadVpsBackup(body = body, file = file, id = id, all = all)
                }
             
            }
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  vPSService.getNewVps()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsBackup(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        parameters("all".as[String].?) { (all) =>
          
            
              
                
                  vPSService.getVpsBackups(id = id, all = all)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsBuyHdSpace(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsBuyIp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsChangeHostname(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsChangeRootPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsChangeTimezone(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsInsertCd(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  vPSService.getVpsList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsReinstallOs(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsResetPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsReverseDns(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsSetupVnc(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsSlices(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsTrafficUsage(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsViewDesktop(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  vPSService.getVpsWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsBuyHdSpace(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsBuyIp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("hostname".as[String]) { (hostname) =>
              
                entity(as[HostnameObject]){ body =>
                  vPSService.postVpsChangeHostname(hostname = hostname, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("password".as[String]) { (password) =>
              
                entity(as[PasswordRequest]){ body =>
                  vPSService.postVpsChangeRootPassword(password = password, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("timezone".as[String]) { (timezone) =>
              
                entity(as[TimezoneUpdate]){ body =>
                  vPSService.postVpsChangeTimezone(timezone = timezone, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("password".as[String]) { (password) =>
              
                entity(as[PasswordRequest]){ body =>
                  vPSService.postVpsChangeWebuzoPassword(password = password, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("url".as[String]) { (url) =>
              
                entity(as[UrlRequest]){ body =>
                  vPSService.postVpsInsertCd(url = url, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("template".as[String], "password".as[String], "localPassword".as[String]) { (template, password, localPassword) =>
              
                entity(as[TemplateRequest]){ body =>
                  vPSService.postVpsReinstallOs(template = template, password = password, localPassword = localPassword, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsResetPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("backup".as[String], "password".as[String]) { (backup, password) =>
              
                entity(as[RestoreRequest]){ body =>
                  vPSService.postVpsRestore(body = body, backup = backup, password = password, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ips".as[String]) { (ips) =>
              
                entity(as[ReverseDnsEntries]){ body =>
                  vPSService.postVpsReverseDns(body = body, ips = ips, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsSetupVnc(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsSlices(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsTrafficUsage(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.postVpsViewDesktop(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      put {
        
          
            formFields("osDistro".as[String].?, "slices".as[Int].?, "vpsPlatform".as[String].?, "controlpanel".as[String].?, "period".as[Int].?, "location".as[Int].?, "osVersion".as[String].?, "hostname".as[String].?, "coupon".as[String].?, "rootpass".as[String].?, "comment".as[String].?) { (osDistro, slices, vpsPlatform, controlpanel, period, location, osVersion, hostname, coupon, rootpass, comment) =>
              
                entity(as[VpsOrderPutRequest]){ body =>
                  vPSService.putVps(body = body, osDistro = osDistro, slices = slices, vpsPlatform = vpsPlatform, controlpanel = controlpanel, period = period, location = location, osVersion = osVersion, hostname = hostname, coupon = coupon, rootpass = rootpass, comment = comment)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      put {
        
          
            
              
                
                  vPSService.putVpsBuyHdSpace(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  vPSService.updateVpsInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  vPSService.vPSCancel(id = id)
               
             
           
         
       
      }
    }
}

trait VPSApiService {

  def addVps200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addVps401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addVps(body: VpsOrderPostRequest, osDistro: Option[String], slices: Option[Int], vpsPlatform: Option[String], controlpanel: Option[String], period: Option[Int], location: Option[Int], osVersion: Option[String], hostname: Option[String], coupon: Option[String], rootpass: Option[String], comment: Option[String])
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteVpsBackup200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteVpsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteVpsBackup(id: Int, file: String, all: Option[String])
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsBlockSmtp200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsBlockSmtp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsBlockSmtp(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsDisableCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsDisableCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsDisableCd(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsDisableQuota200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsDisableQuota401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsDisableQuota(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsEjectCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsEjectCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsEjectCd(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsEnableQuota200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsEnableQuota401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsEnableQuota(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsRestart200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsRestart401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsRestart(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsStart200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsStart401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsStart(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def doVpsStop200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def doVpsStop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def doVpsStop(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def downloadVpsBackup200(responseinline_response_200_12: inline_response_200_12)(implicit toEntityMarshallerinline_response_200_12: ToEntityMarshaller[inline_response_200_12]): Route =
    complete((200, responseinline_response_200_12))
  def downloadVpsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Download URL for the backup file., DataType: inline_response_200_12
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def downloadVpsBackup(body: Id_backups_body_2, file: String, id: Int, all: Option[String])
      (implicit toEntityMarshallerinline_response_200_12: ToEntityMarshaller[inline_response_200_12], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewVps200(responseVpsOrder: VpsOrder)(implicit toEntityMarshallerVpsOrder: ToEntityMarshaller[VpsOrder]): Route =
    complete((200, responseVpsOrder))
  def getNewVps401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Order information, DataType: VpsOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewVps()
      (implicit toEntityMarshallerVpsOrder: ToEntityMarshaller[VpsOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsBackup200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def getVpsBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsBackup(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsBackups200(responseVpsBackupRows: VpsBackupRows)(implicit toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows]): Route =
    complete((200, responseVpsBackupRows))
  def getVpsBackups401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of the available backups, DataType: VpsBackupRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsBackups(id: Int, all: Option[String])
      (implicit toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsBuyHdSpace200: Route =
    complete((200, "Get VPS Buy HD Space information"))
  def getVpsBuyHdSpace401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get VPS Buy HD Space information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsBuyHdSpace(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsBuyIp200: Route =
    complete((200, "VPS Buy IP information"))
  def getVpsBuyIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Buy IP information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsBuyIp(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsChangeHostname200: Route =
    complete((200, "Current hostname information for the VPS."))
  def getVpsChangeHostname401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Current hostname information for the VPS.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsChangeHostname(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsChangeRootPassword200: Route =
    complete((200, "Password requirements and current state."))
  def getVpsChangeRootPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Password requirements and current state.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsChangeRootPassword(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsChangeTimezone200(responseStringarray: List[String]): Route =
    complete((200, responseStringarray))
  def getVpsChangeTimezone401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Change Timezone info response, DataType: List[String]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsChangeTimezone(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsInfo200(responseVps: Vps)(implicit toEntityMarshallerVps: ToEntityMarshaller[Vps]): Route =
    complete((200, responseVps))
  def getVpsInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The VPS Information, DataType: Vps
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsInfo(id: Int)
      (implicit toEntityMarshallerVps: ToEntityMarshaller[Vps], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsInsertCd200: Route =
    complete((200, "Available CD/ISO images for the VPS."))
  def getVpsInsertCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Available CD/ISO images for the VPS.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsInsertCd(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getVpsInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get VPS Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsList200(responseVpsRowarray: List[VpsRow])(implicit toEntityMarshallerVpsRowarray: ToEntityMarshaller[List[VpsRow]]): Route =
    complete((200, responseVpsRowarray))
  def getVpsList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Vps&#x60; services on your account., DataType: List[VpsRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsList()
      (implicit toEntityMarshallerVpsRowarray: ToEntityMarshaller[List[VpsRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsReinstallOs200(responseVpsTemplatesList: VpsTemplatesList)(implicit toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList]): Route =
    complete((200, responseVpsTemplatesList))
  def getVpsReinstallOs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Reinstall OS info response, DataType: VpsTemplatesList
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsReinstallOs(id: Int)
      (implicit toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsResetPassword200: Route =
    complete((200, "Password reset requirements and current state."))
  def getVpsResetPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Password reset requirements and current state.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsResetPassword(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsReverseDns200(responseReverseDnsEntries: ReverseDnsEntries)(implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]): Route =
    complete((200, responseReverseDnsEntries))
  def getVpsReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Reverse DNS info response, DataType: ReverseDnsEntries
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsReverseDns(id: Int)
      (implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsSetupVnc200: Route =
    complete((200, "Get VPS Setup VNC Information"))
  def getVpsSetupVnc401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get VPS Setup VNC Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsSetupVnc(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsSlices200: Route =
    complete((200, "VPS Slices information"))
  def getVpsSlices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Slices information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsSlices(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsTrafficUsage200(responseVpsTrafficResponse: VpsTrafficResponse)(implicit toEntityMarshallerVpsTrafficResponse: ToEntityMarshaller[VpsTrafficResponse]): Route =
    complete((200, responseVpsTrafficResponse))
  def getVpsTrafficUsage401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get VPS Traffic usage, DataType: VpsTrafficResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsTrafficUsage(id: Int)
      (implicit toEntityMarshallerVpsTrafficResponse: ToEntityMarshaller[VpsTrafficResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsViewDesktop200: Route =
    complete((200, "Get VPS View Desktop Information"))
  def getVpsViewDesktop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get VPS View Desktop Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsViewDesktop(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getVpsWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getVpsWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getVpsWelcomeEmail(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsBuyHdSpace200: Route =
    complete((200, "Post Buy HD Space for VPS response"))
  def postVpsBuyHdSpace401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Post Buy HD Space for VPS response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsBuyHdSpace(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsBuyIp200: Route =
    complete((200, "Submit VPS Buy IP form response"))
  def postVpsBuyIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Submit VPS Buy IP form response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsBuyIp(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsChangeHostname200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsChangeHostname401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsChangeHostname(hostname: String, body: HostnameObject, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsChangeRootPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsChangeRootPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsChangeRootPassword(password: String, body: PasswordRequest, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsChangeTimezone200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsChangeTimezone401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsChangeTimezone(timezone: String, body: TimezoneUpdate, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsChangeWebuzoPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsChangeWebuzoPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsChangeWebuzoPassword(password: String, body: PasswordRequest, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsInsertCd200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsInsertCd401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsInsertCd(url: String, body: UrlRequest, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsReinstallOs200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsReinstallOs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsReinstallOs(template: String, password: String, localPassword: String, body: TemplateRequest, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsResetPassword200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsResetPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsResetPassword(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsRestore200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsRestore400(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((400, responseTextResponse))
  def postVpsRestore401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 400, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsRestore(body: RestoreRequest, backup: String, password: String, id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsReverseDns200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def postVpsReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Update VPS Reverse DNS response, DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsReverseDns(body: ReverseDnsEntries, ips: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsSetupVnc200(responseQueueResponse: QueueResponse)(implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]): Route =
    complete((200, responseQueueResponse))
  def postVpsSetupVnc401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response message from sending a service queue., DataType: QueueResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsSetupVnc(id: Int)
      (implicit toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsSlices200: Route =
    complete((200, "Update VPS slices response"))
  def postVpsSlices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Update VPS slices response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsSlices(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsTrafficUsage200: Route =
    complete((200, "Filtered traffic usage search results."))
  def postVpsTrafficUsage401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Filtered traffic usage search results.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsTrafficUsage(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postVpsViewDesktop200: Route =
    complete((200, "Submit VPS View Desktop Information"))
  def postVpsViewDesktop401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Submit VPS View Desktop Information
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postVpsViewDesktop(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putVps200(responseVpsOrderPutResponse: VpsOrderPutResponse)(implicit toEntityMarshallerVpsOrderPutResponse: ToEntityMarshaller[VpsOrderPutResponse]): Route =
    complete((200, responseVpsOrderPutResponse))
  def putVps401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate VPS order response., DataType: VpsOrderPutResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putVps(body: VpsOrderPutRequest, osDistro: Option[String], slices: Option[Int], vpsPlatform: Option[String], controlpanel: Option[String], period: Option[Int], location: Option[Int], osVersion: Option[String], hostname: Option[String], coupon: Option[String], rootpass: Option[String], comment: Option[String])
      (implicit toEntityMarshallerVpsOrderPutResponse: ToEntityMarshaller[VpsOrderPutResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putVpsBuyHdSpace200: Route =
    complete((200, "Pricing preview for the requested HD space size."))
  def putVpsBuyHdSpace401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Pricing preview for the requested HD space size.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putVpsBuyHdSpace(id: Int)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateVpsInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateVpsInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateVpsInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def vPSCancel200(responseinline_response_200_24: inline_response_200_24)(implicit toEntityMarshallerinline_response_200_24: ToEntityMarshaller[inline_response_200_24]): Route =
    complete((200, responseinline_response_200_24))
  def vPSCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: VPS Cancel, DataType: inline_response_200_24
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def vPSCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_24: ToEntityMarshaller[inline_response_200_24], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait VPSApiMarshaller {
  implicit def fromRequestUnmarshallerUrlRequest: FromRequestUnmarshaller[UrlRequest]

  implicit def fromRequestUnmarshallerHostnameObject: FromRequestUnmarshaller[HostnameObject]

  implicit def fromRequestUnmarshallerTemplateRequest: FromRequestUnmarshaller[TemplateRequest]

  implicit def fromRequestUnmarshallerPasswordRequest: FromRequestUnmarshaller[PasswordRequest]

  implicit def fromRequestUnmarshallerId_backups_body_2: FromRequestUnmarshaller[Id_backups_body_2]

  implicit def fromRequestUnmarshallerTimezoneUpdate: FromRequestUnmarshaller[TimezoneUpdate]

  implicit def fromRequestUnmarshallerRestoreRequest: FromRequestUnmarshaller[RestoreRequest]

  implicit def fromRequestUnmarshallerReverseDnsEntries: FromRequestUnmarshaller[ReverseDnsEntries]

  implicit def fromRequestUnmarshallerVpsOrderPutRequest: FromRequestUnmarshaller[VpsOrderPutRequest]

  implicit def fromRequestUnmarshallerVpsOrderPostRequest: FromRequestUnmarshaller[VpsOrderPostRequest]


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

  implicit def toEntityMarshallerVpsOrder: ToEntityMarshaller[VpsOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsBackupRows: ToEntityMarshaller[VpsBackupRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVps: ToEntityMarshaller[Vps]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsRowarray: ToEntityMarshaller[List[VpsRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsTemplatesList: ToEntityMarshaller[VpsTemplatesList]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsTrafficResponse: ToEntityMarshaller[VpsTrafficResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

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

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerQueueResponse: ToEntityMarshaller[QueueResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerVpsOrderPutResponse: ToEntityMarshaller[VpsOrderPutResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_24: ToEntityMarshaller[inline_response_200_24]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

