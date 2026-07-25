package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.DenyRuleNew
import io.swagger.server.model.DenyRuleRecord
import io.swagger.server.model.EmailAddress
import io.swagger.server.model.EmailAddressName
import io.swagger.server.model.GenericResponse
import io.swagger.server.model.Id_alerts_body
import io.swagger.server.model.MailAlertRequest
import io.swagger.server.model.MailAlertUpdateRequest
import io.swagger.server.model.MailAlertsResponse
import io.swagger.server.model.MailAttachment
import io.swagger.server.model.MailBlocks
import io.swagger.server.model.MailDelistRequest
import io.swagger.server.model.MailDelistResponse
import io.swagger.server.model.MailDeliverabilityResponse
import io.swagger.server.model.MailLog
import io.swagger.server.model.MailOrder
import io.swagger.server.model.MailOrderRequest
import io.swagger.server.model.MailRow
import io.swagger.server.model.MailSchema
import io.swagger.server.model.MailStatsType
import io.swagger.server.model.SendMail
import io.swagger.server.model.SendMailAdv
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.endDate
import io.swagger.server.model.inline_response_200_9
import io.swagger.server.model.inline_response_401
import io.swagger.server.model.startDate

class MailApi(
    mailService: MailApiService,
    mailMarshaller: MailApiMarshaller
) {
  import mailMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[MailOrderRequest]){ body =>
                  mailService.addMail(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("user".as[String], "type".as[String], "data".as[String]) { (user, &#x60;type&#x60;, data) =>
              
                entity(as[DenyRuleNew]){ body =>
                  mailService.addRule(body = body, user = user, &#x60;type&#x60; = &#x60;type&#x60;, data = data, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("type".as[String], "value".as[String], "to".as[String], "enabled".as[String]) { (&#x60;type&#x60;, value, to, enabled) =>
              
                entity(as[MailAlertRequest]){ body =>
                  mailService.createMailAlert(body = body, &#x60;type&#x60; = &#x60;type&#x60;, value = value, to = to, enabled = enabled, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            formFields("alert_id".as[Int]) { (alertId) =>
              
                entity(as[Id_alerts_body]){ body =>
                  mailService.deleteMailAlert(body = body, alertId = alertId, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id, rule) => 
      delete {
        
          
            
              
                
                  mailService.deleteRule(id = id, rule = rule)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("email".as[String]) { (email) =>
              
                entity(as[EmailAddress]){ body =>
                  mailService.delistBlock(email = email, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailAlerts(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailBlocks(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailDelist(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailDeliverability(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  mailService.getMailList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getMailWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  mailService.getNewMail()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.getRules(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        parameters("time".as[String].?) { (time) =>
          
            
              
                
                  mailService.getStats(id = id, time = time)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  mailService.mailCancel(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("unblock".as[String]) { (unblock) =>
              
                entity(as[MailDelistRequest]){ body =>
                  mailService.postMailDelist(body = body, unblock = unblock, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[MailOrderRequest]){ body =>
                  mailService.putMail(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  mailService.resetMailPassword(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("subject".as[String], "body".as[String], "from".as[String], "to".as[String], "replyto".as[String], "cc".as[String], "bcc".as[String], "attachments".as[String], "id".as[Long]) { (subject, body, from, to, replyto, cc, bcc, attachments, id) =>
              
                entity(as[SendMailAdv]){ body =>
                  mailService.sendAdvMail(body = body, subject = subject, body = body, from = from, to = to, replyto = replyto, cc = cc, bcc = bcc, attachments = attachments, id = id, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("to".as[String], "from".as[String], "subject".as[String], "body".as[String]) { (to, from, subject, body) =>
              
                entity(as[SendMail]){ body =>
                  mailService.sendMail(body = body, to = to, from = from, subject = subject, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      put {
        
          
            formFields("alert_id".as[Int], "type".as[String], "value".as[String], "to".as[String], "enabled".as[String]) { (alertId, &#x60;type&#x60;, value, to, enabled) =>
              
                entity(as[MailAlertUpdateRequest]){ body =>
                  mailService.updateMailAlert(body = body, alertId = alertId, &#x60;type&#x60; = &#x60;type&#x60;, value = value, to = to, enabled = enabled, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  mailService.updateMailInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id, rule) => 
      put {
        
          
            formFields("user".as[String], "type".as[String], "data".as[String]) { (user, &#x60;type&#x60;, data) =>
              
                entity(as[DenyRuleNew]){ body =>
                  mailService.updateRule(body = body, user = user, &#x60;type&#x60; = &#x60;type&#x60;, data = data, id = id, rule = rule)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      get {
        parameters("id".as[Long].?, "origin".as[String].?, "mx".as[String].?, "from".as[String].?, "to".as[String].?, "subject".as[String].?, "mailid".as[String].?, "messageId".as[String].?, "replyto".as[String].?, "headerfrom".as[String].?, "delivered".as[Int].?, "skip".as[Int].?, "limit".as[Int].?, "startDate".as[String].?, "endDate".as[String].?, "sort".as[String].?, "dir".as[String].?, "groupby".as[String].?) { (id, origin, mx, from, to, subject, mailid, messageId, replyto, headerfrom, delivered, skip, limit, startDate, endDate, sort, dir, groupby) =>
          
            
              
                
                  mailService.viewMailLog(id = id, id = id, origin = origin, mx = mx, from = from, to = to, subject = subject, mailid = mailid, messageId = messageId, replyto = replyto, headerfrom = headerfrom, delivered = delivered, skip = skip, limit = limit, startDate = startDate, endDate = endDate, sort = sort, dir = dir, groupby = groupby)
               
             
           
         
        }
      }
    }
}

trait MailApiService {

  def addMail200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addMail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addMail(body: MailOrderRequest)
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def addRule200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def addRule400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def addRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def addRule404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Deny rule created successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def addRule(body: DenyRuleNew, user: String, &#x60;type&#x60;: String, data: String, id: Int)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def createMailAlert200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def createMailAlert401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def createMailAlert(body: MailAlertRequest, &#x60;type&#x60;: String, value: String, to: String, enabled: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteMailAlert200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteMailAlert401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteMailAlert(body: Id_alerts_body, alertId: Int, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteRule200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def deleteRule400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def deleteRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def deleteRule404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Deny rule deleted successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def deleteRule(id: Int, rule: String)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def delistBlock200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def delistBlock400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def delistBlock401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def delistBlock404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Email address removed from block list successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def delistBlock(email: String, body: EmailAddress, id: Int)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailAlerts200(responseMailAlertsResponse: MailAlertsResponse)(implicit toEntityMarshallerMailAlertsResponse: ToEntityMarshaller[MailAlertsResponse]): Route =
    complete((200, responseMailAlertsResponse))
  def getMailAlerts401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Alert configuration for the mail service., DataType: MailAlertsResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailAlerts(id: Int)
      (implicit toEntityMarshallerMailAlertsResponse: ToEntityMarshaller[MailAlertsResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailBlocks200(responseMailBlocks: MailBlocks)(implicit toEntityMarshallerMailBlocks: ToEntityMarshaller[MailBlocks]): Route =
    complete((200, responseMailBlocks))
  def getMailBlocks401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getMailBlocks404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: OK, DataType: MailBlocks
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailBlocks(id: Int)
      (implicit toEntityMarshallerMailBlocks: ToEntityMarshaller[MailBlocks], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailDelist200(responseMailDelistResponse: MailDelistResponse)(implicit toEntityMarshallerMailDelistResponse: ToEntityMarshaller[MailDelistResponse]): Route =
    complete((200, responseMailDelistResponse))
  def getMailDelist401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Blocklist entries and delist details for the mail service., DataType: MailDelistResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailDelist(id: Int)
      (implicit toEntityMarshallerMailDelistResponse: ToEntityMarshaller[MailDelistResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailDeliverability200(responseMailDeliverabilityResponse: MailDeliverabilityResponse)(implicit toEntityMarshallerMailDeliverabilityResponse: ToEntityMarshaller[MailDeliverabilityResponse]): Route =
    complete((200, responseMailDeliverabilityResponse))
  def getMailDeliverability401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Deliverability metrics for the mail service., DataType: MailDeliverabilityResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailDeliverability(id: Int)
      (implicit toEntityMarshallerMailDeliverabilityResponse: ToEntityMarshaller[MailDeliverabilityResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailInfo200(responseMailSchema: MailSchema)(implicit toEntityMarshallerMailSchema: ToEntityMarshaller[MailSchema]): Route =
    complete((200, responseMailSchema))
  def getMailInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Mail Information., DataType: MailSchema
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailInfo(id: Int)
      (implicit toEntityMarshallerMailSchema: ToEntityMarshaller[MailSchema], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getMailInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailList200(responseMailRowarray: List[MailRow])(implicit toEntityMarshallerMailRowarray: ToEntityMarshaller[List[MailRow]]): Route =
    complete((200, responseMailRowarray))
  def getMailList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Mail&#x60; services on your account., DataType: List[MailRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailList()
      (implicit toEntityMarshallerMailRowarray: ToEntityMarshaller[List[MailRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getMailWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getMailWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getMailWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewMail200(responseMailOrder: MailOrder)(implicit toEntityMarshallerMailOrder: ToEntityMarshaller[MailOrder]): Route =
    complete((200, responseMailOrder))
  def getNewMail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Mail ordering information., DataType: MailOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewMail()
      (implicit toEntityMarshallerMailOrder: ToEntityMarshaller[MailOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getRules200(responseDenyRuleRecordarray: List[DenyRuleRecord])(implicit toEntityMarshallerDenyRuleRecordarray: ToEntityMarshaller[List[DenyRuleRecord]]): Route =
    complete((200, responseDenyRuleRecordarray))
  def getRules401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getRules404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: List of configured deny rules., DataType: List[DenyRuleRecord]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: Unauthorized, DataType: inline_response_401
   */
  def getRules(id: Int)
      (implicit toEntityMarshallerDenyRuleRecordarray: ToEntityMarshaller[List[DenyRuleRecord]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getStats200(responseMailStatsType: MailStatsType)(implicit toEntityMarshallerMailStatsType: ToEntityMarshaller[MailStatsType]): Route =
    complete((200, responseMailStatsType))
  def getStats401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getStats404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Mail service usage statistics., DataType: MailStatsType
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: Unauthorized, DataType: inline_response_401
   */
  def getStats(id: Int, time: Option[String])
      (implicit toEntityMarshallerMailStatsType: ToEntityMarshaller[MailStatsType], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def mailCancel200(responseinline_response_200_9: inline_response_200_9)(implicit toEntityMarshallerinline_response_200_9: ToEntityMarshaller[inline_response_200_9]): Route =
    complete((200, responseinline_response_200_9))
  def mailCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Mail Cancel, DataType: inline_response_200_9
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def mailCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_9: ToEntityMarshaller[inline_response_200_9], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postMailDelist200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def postMailDelist401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postMailDelist(body: MailDelistRequest, unblock: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putMail200: Route =
    complete((200, "Validate Mail order response."))
  def putMail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Mail order response.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putMail(body: MailOrderRequest)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def resetMailPassword200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def resetMailPassword401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def resetMailPassword(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def sendAdvMail200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def sendAdvMail400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def sendAdvMail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def sendAdvMail404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Email queued successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def sendAdvMail(body: String, subject: String, body: String, from: String, to: String, replyto: String, cc: String, bcc: String, attachments: String, id: Long, id: Int)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def sendMail200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def sendMail400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def sendMail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def sendMail404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Email queued successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def sendMail(body: String, to: String, from: String, subject: String, body: String, id: Int)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateMailAlert200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateMailAlert401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateMailAlert(body: MailAlertUpdateRequest, alertId: Int, &#x60;type&#x60;: String, value: String, to: String, enabled: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateMailInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateMailInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateMailInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateRule200(responseGenericResponse: GenericResponse)(implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]): Route =
    complete((200, responseGenericResponse))
  def updateRule400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def updateRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def updateRule404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Deny rule updated successfully., DataType: GenericResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def updateRule(body: DenyRuleNew, user: String, &#x60;type&#x60;: String, data: String, id: Int, rule: String)
      (implicit toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def viewMailLog200(responseMailLog: MailLog)(implicit toEntityMarshallerMailLog: ToEntityMarshaller[MailLog]): Route =
    complete((200, responseMailLog))
  def viewMailLog400: Route =
    complete((400, "bad input parameter"))
  /**
   * Code: 200, Message: Paginated list of mail log entries matching the specified filters., DataType: MailLog
   * Code: 400, Message: bad input parameter
   */
  def viewMailLog(id: Int, id: Option[Long], origin: Option[String], mx: Option[String], from: Option[String], to: Option[String], subject: Option[String], mailid: Option[String], messageId: Option[String], replyto: Option[String], headerfrom: Option[String], delivered: Option[Int], skip: Option[Int], limit: Option[Int], startDate: Option[String], endDate: Option[String], sort: Option[String], dir: Option[String], groupby: Option[String])
      (implicit toEntityMarshallerMailLog: ToEntityMarshaller[MailLog]): Route

}

trait MailApiMarshaller {
  implicit def fromRequestUnmarshallerMailOrderRequest: FromRequestUnmarshaller[MailOrderRequest]

  implicit def fromRequestUnmarshallerMailAlertRequest: FromRequestUnmarshaller[MailAlertRequest]

  implicit def fromRequestUnmarshallerMailDelistRequest: FromRequestUnmarshaller[MailDelistRequest]

  implicit def fromRequestUnmarshallerSendMailAdv: FromRequestUnmarshaller[SendMailAdv]

  implicit def fromRequestUnmarshallerMailAlertUpdateRequest: FromRequestUnmarshaller[MailAlertUpdateRequest]

  implicit def fromRequestUnmarshallerId_alerts_body: FromRequestUnmarshaller[Id_alerts_body]

  implicit def fromRequestUnmarshallerDenyRuleNew: FromRequestUnmarshaller[DenyRuleNew]

  implicit def fromRequestUnmarshallerEmailAddress: FromRequestUnmarshaller[EmailAddress]

  implicit def fromRequestUnmarshallerSendMail: FromRequestUnmarshaller[SendMail]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailAlertsResponse: ToEntityMarshaller[MailAlertsResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailBlocks: ToEntityMarshaller[MailBlocks]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailDelistResponse: ToEntityMarshaller[MailDelistResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailDeliverabilityResponse: ToEntityMarshaller[MailDeliverabilityResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailSchema: ToEntityMarshaller[MailSchema]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailRowarray: ToEntityMarshaller[List[MailRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailOrder: ToEntityMarshaller[MailOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDenyRuleRecordarray: ToEntityMarshaller[List[DenyRuleRecord]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailStatsType: ToEntityMarshaller[MailStatsType]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_9: ToEntityMarshaller[inline_response_200_9]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerGenericResponse: ToEntityMarshaller[GenericResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMailLog: ToEntityMarshaller[MailLog]

}

