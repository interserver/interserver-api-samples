package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.CreateFilter
import io.swagger.server.model.CreateFirewallRule
import io.swagger.server.model.CreateGeoFirewallRule
import io.swagger.server.model.Delete Firewall Rule
import io.swagger.server.model.Delete Geo Firewall Rule
import io.swagger.server.model.ScrubIpFilterTypes
import io.swagger.server.model.ScrubIpPlaceOrder
import io.swagger.server.model.ScrubIpsLogRowSchema
import io.swagger.server.model.ScrubIpsRowSchema
import io.swagger.server.model.inline_response_200_13
import io.swagger.server.model.inline_response_200_14
import io.swagger.server.model.inline_response_200_15
import io.swagger.server.model.inline_response_200_16
import io.swagger.server.model.inline_response_200_17
import io.swagger.server.model.inline_response_200_18
import io.swagger.server.model.inline_response_200_19
import io.swagger.server.model.inline_response_200_20
import io.swagger.server.model.inline_response_201
import io.swagger.server.model.inline_response_201_1
import io.swagger.server.model.inline_response_201_2
import io.swagger.server.model.inline_response_400
import io.swagger.server.model.inline_response_400_1
import io.swagger.server.model.inline_response_400_2
import io.swagger.server.model.inline_response_400_3
import io.swagger.server.model.inline_response_400_4
import io.swagger.server.model.inline_response_400_5
import io.swagger.server.model.inline_response_401
import io.swagger.server.model.inline_response_500
import io.swagger.server.model.inline_response_500_1
import io.swagger.server.model.inline_response_500_2
import io.swagger.server.model.inline_response_500_3
import io.swagger.server.model.inline_response_500_4
import io.swagger.server.model.inline_response_500_5

class ScrubIpsApi(
    scrubIpsService: ScrubIpsApiService,
    scrubIpsMarshaller: ScrubIpsApiMarshaller
) {
  import scrubIpsMarshaller._

  lazy val route: Route =
    path() { (id) => 
      delete {
        
          
            
              
                
                  scrubIpsService.cancelScrubIp(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[CreateFilter]){ body =>
                  scrubIpsService.createFilter(body = body, id = id)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[CreateGeoFirewallRule]){ body =>
                  scrubIpsService.createGeoRule(body = body, id = id)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[CreateFirewallRule]){ body =>
                  scrubIpsService.createRule(body = body, id = id)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[CreateFilter]){ body =>
                  scrubIpsService.deleteFilter(body = body, id = id)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  scrubIpsService.disableScrub(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  scrubIpsService.enableScrub(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  scrubIpsService.getOrderDetail()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  scrubIpsService.getScrubIpDetails(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  scrubIpsService.getScrubIpFilterTypes()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  scrubIpsService.getScrubIpInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  scrubIpsService.getScrubIpLogs(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  scrubIpsService.getScrubIpsList()
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        
          
            
              
                entity(as[ScrubIpPlaceOrder]){ body =>
                  scrubIpsService.placeScrubOrder(body = body)
                }
             
           
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[ScrubIpPlaceOrder]){ body =>
                  scrubIpsService.putScrubIps(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[Delete Geo Firewall Rule]){ body =>
                  scrubIpsService.scrubIpsDeleteGeoRule(body = body, id = id)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                entity(as[Delete Firewall Rule]){ body =>
                  scrubIpsService.scrubIpsDeleteRule(body = body, id = id)
                }
             
           
         
       
      }
    }
}

trait ScrubIpsApiService {

  def cancelScrubIp200(responseinline_response_200_14: inline_response_200_14)(implicit toEntityMarshallerinline_response_200_14: ToEntityMarshaller[inline_response_200_14]): Route =
    complete((200, responseinline_response_200_14))
  def cancelScrubIp401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Request OK, DataType: inline_response_200_14
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def cancelScrubIp(id: Int)
      (implicit toEntityMarshallerinline_response_200_14: ToEntityMarshaller[inline_response_200_14], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def createFilter201(responseinline_response_201_1: inline_response_201_1)(implicit toEntityMarshallerinline_response_201_1: ToEntityMarshaller[inline_response_201_1]): Route =
    complete((201, responseinline_response_201_1))
  def createFilter400(responseinline_response_400_4: inline_response_400_4)(implicit toEntityMarshallerinline_response_400_4: ToEntityMarshaller[inline_response_400_4]): Route =
    complete((400, responseinline_response_400_4))
  def createFilter401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def createFilter500(responseinline_response_500_4: inline_response_500_4)(implicit toEntityMarshallerinline_response_500_4: ToEntityMarshaller[inline_response_500_4]): Route =
    complete((500, responseinline_response_500_4))
  /**
   * Code: 201, Message: Request OK, DataType: inline_response_201_1
   * Code: 400, Message: Bad Request, DataType: inline_response_400_4
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_4
   */
  def createFilter(body: CreateFilter, id: Int)
      (implicit toEntityMarshallerinline_response_201_1: ToEntityMarshaller[inline_response_201_1], toEntityMarshallerinline_response_400_4: ToEntityMarshaller[inline_response_400_4], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_4: ToEntityMarshaller[inline_response_500_4]): Route

  def createGeoRule201(responseinline_response_201: inline_response_201)(implicit toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201]): Route =
    complete((201, responseinline_response_201))
  def createGeoRule400(responseinline_response_400_3: inline_response_400_3)(implicit toEntityMarshallerinline_response_400_3: ToEntityMarshaller[inline_response_400_3]): Route =
    complete((400, responseinline_response_400_3))
  def createGeoRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def createGeoRule500(responseinline_response_500_2: inline_response_500_2)(implicit toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]): Route =
    complete((500, responseinline_response_500_2))
  /**
   * Code: 201, Message: Create firewall rule for scrub ip, DataType: inline_response_201
   * Code: 400, Message: Bad Request, DataType: inline_response_400_3
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_2
   */
  def createGeoRule(body: CreateGeoFirewallRule, id: Int)
      (implicit toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201], toEntityMarshallerinline_response_400_3: ToEntityMarshaller[inline_response_400_3], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]): Route

  def createRule201(responseinline_response_201: inline_response_201)(implicit toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201]): Route =
    complete((201, responseinline_response_201))
  def createRule400(responseinline_response_400_1: inline_response_400_1)(implicit toEntityMarshallerinline_response_400_1: ToEntityMarshaller[inline_response_400_1]): Route =
    complete((400, responseinline_response_400_1))
  def createRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def createRule500(responseinline_response_500_2: inline_response_500_2)(implicit toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]): Route =
    complete((500, responseinline_response_500_2))
  /**
   * Code: 201, Message: Create firewall rule for scrub ip, DataType: inline_response_201
   * Code: 400, Message: Bad Request, DataType: inline_response_400_1
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_2
   */
  def createRule(body: CreateFirewallRule, id: Int)
      (implicit toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201], toEntityMarshallerinline_response_400_1: ToEntityMarshaller[inline_response_400_1], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]): Route

  def deleteFilter200(responseinline_response_200_18: inline_response_200_18)(implicit toEntityMarshallerinline_response_200_18: ToEntityMarshaller[inline_response_200_18]): Route =
    complete((200, responseinline_response_200_18))
  def deleteFilter400(responseinline_response_400_5: inline_response_400_5)(implicit toEntityMarshallerinline_response_400_5: ToEntityMarshaller[inline_response_400_5]): Route =
    complete((400, responseinline_response_400_5))
  def deleteFilter401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def deleteFilter500(responseinline_response_500_5: inline_response_500_5)(implicit toEntityMarshallerinline_response_500_5: ToEntityMarshaller[inline_response_500_5]): Route =
    complete((500, responseinline_response_500_5))
  /**
   * Code: 200, Message: Delete filter for scrub ip, DataType: inline_response_200_18
   * Code: 400, Message: Bad Request, DataType: inline_response_400_5
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_5
   */
  def deleteFilter(body: CreateFilter, id: Int)
      (implicit toEntityMarshallerinline_response_200_18: ToEntityMarshaller[inline_response_200_18], toEntityMarshallerinline_response_400_5: ToEntityMarshaller[inline_response_400_5], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_5: ToEntityMarshaller[inline_response_500_5]): Route

  def disableScrub200(responseinline_response_200_16: inline_response_200_16)(implicit toEntityMarshallerinline_response_200_16: ToEntityMarshaller[inline_response_200_16]): Route =
    complete((200, responseinline_response_200_16))
  def disableScrub400(responseinline_response_400: inline_response_400)(implicit toEntityMarshallerinline_response_400: ToEntityMarshaller[inline_response_400]): Route =
    complete((400, responseinline_response_400))
  def disableScrub401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def disableScrub500(responseinline_response_500_1: inline_response_500_1)(implicit toEntityMarshallerinline_response_500_1: ToEntityMarshaller[inline_response_500_1]): Route =
    complete((500, responseinline_response_500_1))
  /**
   * Code: 200, Message: Request OK, DataType: inline_response_200_16
   * Code: 400, Message: Bad request, DataType: inline_response_400
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_1
   */
  def disableScrub(id: Int)
      (implicit toEntityMarshallerinline_response_200_16: ToEntityMarshaller[inline_response_200_16], toEntityMarshallerinline_response_400: ToEntityMarshaller[inline_response_400], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_1: ToEntityMarshaller[inline_response_500_1]): Route

  def enableScrub200(responseinline_response_200_15: inline_response_200_15)(implicit toEntityMarshallerinline_response_200_15: ToEntityMarshaller[inline_response_200_15]): Route =
    complete((200, responseinline_response_200_15))
  def enableScrub401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def enableScrub500(responseinline_response_500: inline_response_500)(implicit toEntityMarshallerinline_response_500: ToEntityMarshaller[inline_response_500]): Route =
    complete((500, responseinline_response_500))
  /**
   * Code: 200, Message: Request OK, DataType: inline_response_200_15
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500
   */
  def enableScrub(id: Int)
      (implicit toEntityMarshallerinline_response_200_15: ToEntityMarshaller[inline_response_200_15], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500: ToEntityMarshaller[inline_response_500]): Route

  def getOrderDetail200(responseinline_response_200_19: inline_response_200_19)(implicit toEntityMarshallerinline_response_200_19: ToEntityMarshaller[inline_response_200_19]): Route =
    complete((200, responseinline_response_200_19))
  def getOrderDetail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order details, DataType: inline_response_200_19
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getOrderDetail()
      (implicit toEntityMarshallerinline_response_200_19: ToEntityMarshaller[inline_response_200_19], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getScrubIpDetails200(responseinline_response_200_13: inline_response_200_13)(implicit toEntityMarshallerinline_response_200_13: ToEntityMarshaller[inline_response_200_13]): Route =
    complete((200, responseinline_response_200_13))
  def getScrubIpDetails401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Scrub IP service details including firewall rules and filters., DataType: inline_response_200_13
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getScrubIpDetails(id: Int)
      (implicit toEntityMarshallerinline_response_200_13: ToEntityMarshaller[inline_response_200_13], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getScrubIpFilterTypes200(responseScrubIpFilterTypes: ScrubIpFilterTypes)(implicit toEntityMarshallerScrubIpFilterTypes: ToEntityMarshaller[ScrubIpFilterTypes]): Route =
    complete((200, responseScrubIpFilterTypes))
  def getScrubIpFilterTypes401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Supported scrub filter types for building firewall rules., DataType: ScrubIpFilterTypes
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getScrubIpFilterTypes()
      (implicit toEntityMarshallerScrubIpFilterTypes: ToEntityMarshaller[ScrubIpFilterTypes], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getScrubIpInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getScrubIpInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getScrubIpInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getScrubIpLogs200(responseScrubIpsLogRowSchemaarray: List[ScrubIpsLogRowSchema])(implicit toEntityMarshallerScrubIpsLogRowSchemaarray: ToEntityMarshaller[List[ScrubIpsLogRowSchema]]): Route =
    complete((200, responseScrubIpsLogRowSchemaarray))
  def getScrubIpLogs401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Scrub Ips logs, DataType: List[ScrubIpsLogRowSchema]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getScrubIpLogs(id: String)
      (implicit toEntityMarshallerScrubIpsLogRowSchemaarray: ToEntityMarshaller[List[ScrubIpsLogRowSchema]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getScrubIpsList200(responseScrubIpsRowSchemaarray: List[ScrubIpsRowSchema])(implicit toEntityMarshallerScrubIpsRowSchemaarray: ToEntityMarshaller[List[ScrubIpsRowSchema]]): Route =
    complete((200, responseScrubIpsRowSchemaarray))
  def getScrubIpsList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getScrubIpsList0: Route =
    complete((0, "Default response"))
  /**
   * Code: 200, Message: Scrub Ips list, DataType: List[ScrubIpsRowSchema]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 0, Message: Default response
   */
  def getScrubIpsList()
      (implicit toEntityMarshallerScrubIpsRowSchemaarray: ToEntityMarshaller[List[ScrubIpsRowSchema]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def placeScrubOrder201(responseinline_response_201_2: inline_response_201_2)(implicit toEntityMarshallerinline_response_201_2: ToEntityMarshaller[inline_response_201_2]): Route =
    complete((201, responseinline_response_201_2))
  def placeScrubOrder401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 201, Message: Request OK, DataType: inline_response_201_2
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def placeScrubOrder(body: ScrubIpPlaceOrder)
      (implicit toEntityMarshallerinline_response_201_2: ToEntityMarshaller[inline_response_201_2], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putScrubIps200(responseinline_response_200_20: inline_response_200_20)(implicit toEntityMarshallerinline_response_200_20: ToEntityMarshaller[inline_response_200_20]): Route =
    complete((200, responseinline_response_200_20))
  def putScrubIps401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Scrub IP order validation result., DataType: inline_response_200_20
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putScrubIps(body: ScrubIpPlaceOrder)
      (implicit toEntityMarshallerinline_response_200_20: ToEntityMarshaller[inline_response_200_20], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def scrubIpsDeleteGeoRule200(responseinline_response_200_17: inline_response_200_17)(implicit toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17]): Route =
    complete((200, responseinline_response_200_17))
  def scrubIpsDeleteGeoRule400(responseinline_response_400_2: inline_response_400_2)(implicit toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2]): Route =
    complete((400, responseinline_response_400_2))
  def scrubIpsDeleteGeoRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def scrubIpsDeleteGeoRule500(responseinline_response_500_3: inline_response_500_3)(implicit toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]): Route =
    complete((500, responseinline_response_500_3))
  /**
   * Code: 200, Message: Delete firewall rule for scrub ip, DataType: inline_response_200_17
   * Code: 400, Message: Bad Request, DataType: inline_response_400_2
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_3
   */
  def scrubIpsDeleteGeoRule(body: Delete Geo Firewall Rule, id: Int)
      (implicit toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17], toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]): Route

  def scrubIpsDeleteRule200(responseinline_response_200_17: inline_response_200_17)(implicit toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17]): Route =
    complete((200, responseinline_response_200_17))
  def scrubIpsDeleteRule400(responseinline_response_400_2: inline_response_400_2)(implicit toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2]): Route =
    complete((400, responseinline_response_400_2))
  def scrubIpsDeleteRule401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def scrubIpsDeleteRule500(responseinline_response_500_3: inline_response_500_3)(implicit toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]): Route =
    complete((500, responseinline_response_500_3))
  /**
   * Code: 200, Message: Delete firewall rule for scrub ip, DataType: inline_response_200_17
   * Code: 400, Message: Bad Request, DataType: inline_response_400_2
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 500, Message: Internal Server Error, DataType: inline_response_500_3
   */
  def scrubIpsDeleteRule(body: Delete Firewall Rule, id: Int)
      (implicit toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17], toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]): Route

}

trait ScrubIpsApiMarshaller {
  implicit def fromRequestUnmarshallerDelete Geo Firewall Rule: FromRequestUnmarshaller[Delete Geo Firewall Rule]

  implicit def fromRequestUnmarshallerDelete Firewall Rule: FromRequestUnmarshaller[Delete Firewall Rule]

  implicit def fromRequestUnmarshallerCreateGeoFirewallRule: FromRequestUnmarshaller[CreateGeoFirewallRule]

  implicit def fromRequestUnmarshallerCreateFilter: FromRequestUnmarshaller[CreateFilter]

  implicit def fromRequestUnmarshallerCreateFirewallRule: FromRequestUnmarshaller[CreateFirewallRule]

  implicit def fromRequestUnmarshallerScrubIpPlaceOrder: FromRequestUnmarshaller[ScrubIpPlaceOrder]


  implicit def toEntityMarshallerinline_response_200_14: ToEntityMarshaller[inline_response_200_14]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_201_1: ToEntityMarshaller[inline_response_201_1]

  implicit def toEntityMarshallerinline_response_400_4: ToEntityMarshaller[inline_response_400_4]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_4: ToEntityMarshaller[inline_response_500_4]

  implicit def toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201]

  implicit def toEntityMarshallerinline_response_400_3: ToEntityMarshaller[inline_response_400_3]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]

  implicit def toEntityMarshallerinline_response_201: ToEntityMarshaller[inline_response_201]

  implicit def toEntityMarshallerinline_response_400_1: ToEntityMarshaller[inline_response_400_1]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_2: ToEntityMarshaller[inline_response_500_2]

  implicit def toEntityMarshallerinline_response_200_18: ToEntityMarshaller[inline_response_200_18]

  implicit def toEntityMarshallerinline_response_400_5: ToEntityMarshaller[inline_response_400_5]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_5: ToEntityMarshaller[inline_response_500_5]

  implicit def toEntityMarshallerinline_response_200_16: ToEntityMarshaller[inline_response_200_16]

  implicit def toEntityMarshallerinline_response_400: ToEntityMarshaller[inline_response_400]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_1: ToEntityMarshaller[inline_response_500_1]

  implicit def toEntityMarshallerinline_response_200_15: ToEntityMarshaller[inline_response_200_15]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500: ToEntityMarshaller[inline_response_500]

  implicit def toEntityMarshallerinline_response_200_19: ToEntityMarshaller[inline_response_200_19]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_13: ToEntityMarshaller[inline_response_200_13]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerScrubIpFilterTypes: ToEntityMarshaller[ScrubIpFilterTypes]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerScrubIpsLogRowSchemaarray: ToEntityMarshaller[List[ScrubIpsLogRowSchema]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerScrubIpsRowSchemaarray: ToEntityMarshaller[List[ScrubIpsRowSchema]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_201_2: ToEntityMarshaller[inline_response_201_2]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_20: ToEntityMarshaller[inline_response_200_20]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17]

  implicit def toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]

  implicit def toEntityMarshallerinline_response_200_17: ToEntityMarshaller[inline_response_200_17]

  implicit def toEntityMarshallerinline_response_400_2: ToEntityMarshaller[inline_response_400_2]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_500_3: ToEntityMarshaller[inline_response_500_3]

}

