package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.Backup
import io.swagger.server.model.BackupLoginResponse
import io.swagger.server.model.BackupOrderPostResponse
import io.swagger.server.model.BackupOrderPutRequest
import io.swagger.server.model.BackupOrderPutResponse
import io.swagger.server.model.BackupRow
import io.swagger.server.model.BackupsOrder
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.inline_response_200_2
import io.swagger.server.model.inline_response_401

class BackupsApi(
    backupsService: BackupsApiService,
    backupsMarshaller: BackupsApiMarshaller
) {
  import backupsMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            formFields("validateOnly".as[Boolean], "serviceType".as[Int], "coupon".as[String]) { (validateOnly, serviceType, coupon) =>
              
                entity(as[BackupOrderPutRequest]){ body =>
                  backupsService.addBackup(validateOnly = validateOnly, serviceType = serviceType, coupon = coupon, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  backupsService.cancelBackup(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  backupsService.getBackupInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  backupsService.getBackupInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  backupsService.getBackupLogin(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  backupsService.getBackupsList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  backupsService.getBackupsWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  backupsService.getNewBackup()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  backupsService.updateBackupInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      put {
        
          
            formFields("validateOnly".as[Boolean], "serviceType".as[Int], "coupon".as[String]) { (validateOnly, serviceType, coupon) =>
              
                entity(as[BackupOrderPutRequest]){ body =>
                  backupsService.validateBackupOrder(validateOnly = validateOnly, serviceType = serviceType, coupon = coupon, body = body)
                }
             
            }
         
       
      }
    }
}

trait BackupsApiService {

  def addBackup200(responseBackupOrderPostResponse: BackupOrderPostResponse)(implicit toEntityMarshallerBackupOrderPostResponse: ToEntityMarshaller[BackupOrderPostResponse]): Route =
    complete((200, responseBackupOrderPostResponse))
  def addBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def addBackup0: Route =
    complete((0, "Default response"))
  /**
   * Code: 200, Message: Response from the backup order call including invoice IDs for payment., DataType: BackupOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 0, Message: Default response
   */
  def addBackup(validateOnly: Boolean, serviceType: Int, coupon: String, body: BackupOrderPutRequest)
      (implicit toEntityMarshallerBackupOrderPostResponse: ToEntityMarshaller[BackupOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def cancelBackup200(responseinline_response_200_2: inline_response_200_2)(implicit toEntityMarshallerinline_response_200_2: ToEntityMarshaller[inline_response_200_2]): Route =
    complete((200, responseinline_response_200_2))
  def cancelBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Backups Cancel, DataType: inline_response_200_2
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def cancelBackup(id: Int)
      (implicit toEntityMarshallerinline_response_200_2: ToEntityMarshaller[inline_response_200_2], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBackupInfo200(responseBackup: Backup)(implicit toEntityMarshallerBackup: ToEntityMarshaller[Backup]): Route =
    complete((200, responseBackup))
  def getBackupInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Full backup service details including serviceInfo, billingDetails, and client_links., DataType: Backup
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBackupInfo(id: Int)
      (implicit toEntityMarshallerBackup: ToEntityMarshaller[Backup], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBackupInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getBackupInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBackupInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBackupLogin200(responseBackupLoginResponse: BackupLoginResponse)(implicit toEntityMarshallerBackupLoginResponse: ToEntityMarshaller[BackupLoginResponse]): Route =
    complete((200, responseBackupLoginResponse))
  def getBackupLogin401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Login session details for the backup storage service., DataType: BackupLoginResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBackupLogin(id: Int)
      (implicit toEntityMarshallerBackupLoginResponse: ToEntityMarshaller[BackupLoginResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBackupsList200(responseBackupRowarray: List[BackupRow])(implicit toEntityMarshallerBackupRowarray: ToEntityMarshaller[List[BackupRow]]): Route =
    complete((200, responseBackupRowarray))
  def getBackupsList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of backup storage services on your account., DataType: List[BackupRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBackupsList()
      (implicit toEntityMarshallerBackupRowarray: ToEntityMarshaller[List[BackupRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBackupsWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getBackupsWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBackupsWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewBackup200(responseBackupsOrder: BackupsOrder)(implicit toEntityMarshallerBackupsOrder: ToEntityMarshaller[BackupsOrder]): Route =
    complete((200, responseBackupsOrder))
  def getNewBackup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Information needed to generate an order form., DataType: BackupsOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewBackup()
      (implicit toEntityMarshallerBackupsOrder: ToEntityMarshaller[BackupsOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateBackupInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateBackupInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateBackupInfo(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def validateBackupOrder200(responseBackupOrderPutResponse: BackupOrderPutResponse)(implicit toEntityMarshallerBackupOrderPutResponse: ToEntityMarshaller[BackupOrderPutResponse]): Route =
    complete((200, responseBackupOrderPutResponse))
  def validateBackupOrder401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Backup Order Response, DataType: BackupOrderPutResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def validateBackupOrder(validateOnly: Boolean, serviceType: Int, coupon: String, body: BackupOrderPutRequest)
      (implicit toEntityMarshallerBackupOrderPutResponse: ToEntityMarshaller[BackupOrderPutResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait BackupsApiMarshaller {
  implicit def fromRequestUnmarshallerBackupOrderPutRequest: FromRequestUnmarshaller[BackupOrderPutRequest]


  implicit def toEntityMarshallerBackupOrderPostResponse: ToEntityMarshaller[BackupOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_2: ToEntityMarshaller[inline_response_200_2]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBackup: ToEntityMarshaller[Backup]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBackupLoginResponse: ToEntityMarshaller[BackupLoginResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBackupRowarray: ToEntityMarshaller[List[BackupRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBackupsOrder: ToEntityMarshaller[BackupsOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBackupOrderPutResponse: ToEntityMarshaller[BackupOrderPutResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

