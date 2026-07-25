package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.BuyItNowList
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.Order_buy_now_server_body
import io.swagger.server.model.ReverseDnsEntries
import io.swagger.server.model.Server
import io.swagger.server.model.ServerBulkIpmiPowerResponse
import io.swagger.server.model.ServerIpmiLiveInfo
import io.swagger.server.model.ServerIpmiLiveRequest
import io.swagger.server.model.ServerIpmiPowerRequest
import io.swagger.server.model.ServerOrder
import io.swagger.server.model.ServerOrderPostRequest
import io.swagger.server.model.ServerRow
import io.swagger.server.model.ServersBuyNowError
import io.swagger.server.model.ServersBuyNowResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.inline_response_200_21
import io.swagger.server.model.inline_response_200_22
import io.swagger.server.model.inline_response_200_29
import io.swagger.server.model.inline_response_401

class ServersApi(
    serversService: ServersApiService,
    serversMarshaller: ServersApiMarshaller
) {
  import serversMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[ServerOrderPostRequest]){ body =>
                  serversService.addServer(body = body)
                }
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  serversService.buyItNowServerOrder()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  serversService.getMPServers()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  serversService.getNewServer()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.getServerInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.getServerInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  serversService.getServerList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.getServerReverseDns(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.getServersWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        
          
            
              
                entity(as[Order_buy_now_server_body]){ body =>
                  serversService.placeBuyNowServer(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("ips".as[String]) { (ips) =>
              
                entity(as[ReverseDnsEntries]){ body =>
                  serversService.postServerReverseDns(body = body, ips = ips, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      get {
        parameters("ids".as[String]) { (ids) =>
          
            
              
                
                  serversService.serverBulkIpmiPowerGet(ids = ids)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.serverIpmiLiveGet(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("asset".as[Int], "ip".as[String]) { (asset, ip) =>
              
                entity(as[ServerIpmiLiveRequest]){ body =>
                  serversService.serverIpmiLivePost(asset = asset, ip = ip, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  serversService.serverIpmiPowerGet(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("asset".as[Int], "action".as[String]) { (asset, action) =>
              
                entity(as[ServerIpmiPowerRequest]){ body =>
                  serversService.serverIpmiPowerPost(asset = asset, action = action, body = body, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  serversService.serversCancel(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  serversService.updateServerInfo(id = id)
               
             
           
         
       
      }
    }
}

trait ServersApiService {

  def addServer200(responseinline_response_200_21: inline_response_200_21)(implicit toEntityMarshallerinline_response_200_21: ToEntityMarshaller[inline_response_200_21]): Route =
    complete((200, responseinline_response_200_21))
  def addServer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Server order placed successfully., DataType: inline_response_200_21
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addServer(body: ServerOrderPostRequest)
      (implicit toEntityMarshallerinline_response_200_21: ToEntityMarshaller[inline_response_200_21], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def buyItNowServerOrder200(responseinline_response_200_29: inline_response_200_29)(implicit toEntityMarshallerinline_response_200_29: ToEntityMarshaller[inline_response_200_29]): Route =
    complete((200, responseinline_response_200_29))
  def buyItNowServerOrder401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Available server configurations with pricing and hardware options., DataType: inline_response_200_29
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def buyItNowServerOrder()
      (implicit toEntityMarshallerinline_response_200_29: ToEntityMarshaller[inline_response_200_29], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

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

  def getNewServer200(responseServerOrder: ServerOrder)(implicit toEntityMarshallerServerOrder: ToEntityMarshaller[ServerOrder]): Route =
    complete((200, responseServerOrder))
  def getNewServer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Server Ordering details, DataType: ServerOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewServer()
      (implicit toEntityMarshallerServerOrder: ToEntityMarshaller[ServerOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getServerInfo200(responseServer: Server)(implicit toEntityMarshallerServer: ToEntityMarshaller[Server]): Route =
    complete((200, responseServer))
  def getServerInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Server details, DataType: Server
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getServerInfo(id: Int)
      (implicit toEntityMarshallerServer: ToEntityMarshaller[Server], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getServerInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getServerInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getServerInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getServerList200(responseServerRowarray: List[ServerRow])(implicit toEntityMarshallerServerRowarray: ToEntityMarshaller[List[ServerRow]]): Route =
    complete((200, responseServerRowarray))
  def getServerList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Servers&#x60; services on your account., DataType: List[ServerRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getServerList()
      (implicit toEntityMarshallerServerRowarray: ToEntityMarshaller[List[ServerRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getServerReverseDns200(responseReverseDnsEntries: ReverseDnsEntries)(implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]): Route =
    complete((200, responseReverseDnsEntries))
  def getServerReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Servers Reverse DNS info response, DataType: ReverseDnsEntries
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getServerReverseDns(id: Int)
      (implicit toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getServersWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getServersWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getServersWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def placeBuyNowServer200(responseServersBuyNowResponse: ServersBuyNowResponse)(implicit toEntityMarshallerServersBuyNowResponse: ToEntityMarshaller[ServersBuyNowResponse]): Route =
    complete((200, responseServersBuyNowResponse))
  def placeBuyNowServer400(responseServersBuyNowError: ServersBuyNowError)(implicit toEntityMarshallerServersBuyNowError: ToEntityMarshaller[ServersBuyNowError]): Route =
    complete((400, responseServersBuyNowError))
  def placeBuyNowServer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def placeBuyNowServer0: Route =
    complete((0, "Default response"))
  /**
   * Code: 200, Message: Order placed successfully., DataType: ServersBuyNowResponse
   * Code: 400, Message: Order validation failed., DataType: ServersBuyNowError
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 0, Message: Default response
   */
  def placeBuyNowServer(body: Order_buy_now_server_body)
      (implicit toEntityMarshallerServersBuyNowResponse: ToEntityMarshaller[ServersBuyNowResponse], toEntityMarshallerServersBuyNowError: ToEntityMarshaller[ServersBuyNowError], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postServerReverseDns200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def postServerReverseDns401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Update Server Reverse DNS response, DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postServerReverseDns(body: ReverseDnsEntries, ips: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serverBulkIpmiPowerGet200(responseServerBulkIpmiPowerResponse: ServerBulkIpmiPowerResponse)(implicit toEntityMarshallerServerBulkIpmiPowerResponse: ToEntityMarshaller[ServerBulkIpmiPowerResponse]): Route =
    complete((200, responseServerBulkIpmiPowerResponse))
  def serverBulkIpmiPowerGet400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  def serverBulkIpmiPowerGet401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Bulk IPMI power status response, one entry per requested server., DataType: ServerBulkIpmiPowerResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def serverBulkIpmiPowerGet(ids: String)
      (implicit toEntityMarshallerServerBulkIpmiPowerResponse: ToEntityMarshaller[ServerBulkIpmiPowerResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serverIpmiLiveGet200(responseServerIpmiLiveInfo: ServerIpmiLiveInfo)(implicit toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo]): Route =
    complete((200, responseServerIpmiLiveInfo))
  def serverIpmiLiveGet404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Response from the Servers IPMI Live information request., DataType: ServerIpmiLiveInfo
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def serverIpmiLiveGet(id: Int)
      (implicit toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serverIpmiLivePost200(responseServerIpmiLiveInfo: ServerIpmiLiveInfo)(implicit toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo]): Route =
    complete((200, responseServerIpmiLiveInfo))
  def serverIpmiLivePost404(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((404, responseinline_response_401))
  /**
   * Code: 200, Message: Response from the Servers IPMI Live information request., DataType: ServerIpmiLiveInfo
   * Code: 404, Message: The specified resource was not found, DataType: inline_response_401
   */
  def serverIpmiLivePost(asset: Int, ip: String, body: ServerIpmiLiveRequest, id: Int)
      (implicit toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serverIpmiPowerGet200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def serverIpmiPowerGet401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def serverIpmiPowerGet(id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serverIpmiPowerPost200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def serverIpmiPowerPost400(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((400, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 400, Message: The specified resource was not found, DataType: inline_response_401
   */
  def serverIpmiPowerPost(asset: Int, action: String, body: ServerIpmiPowerRequest, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def serversCancel200(responseinline_response_200_22: inline_response_200_22)(implicit toEntityMarshallerinline_response_200_22: ToEntityMarshaller[inline_response_200_22]): Route =
    complete((200, responseinline_response_200_22))
  def serversCancel401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Servers Cancel, DataType: inline_response_200_22
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def serversCancel(id: Int)
      (implicit toEntityMarshallerinline_response_200_22: ToEntityMarshaller[inline_response_200_22], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateServerInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateServerInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateServerInfo(id: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait ServersApiMarshaller {
  implicit def fromRequestUnmarshallerServerIpmiPowerRequest: FromRequestUnmarshaller[ServerIpmiPowerRequest]

  implicit def fromRequestUnmarshallerOrder_buy_now_server_body: FromRequestUnmarshaller[Order_buy_now_server_body]

  implicit def fromRequestUnmarshallerServerIpmiLiveRequest: FromRequestUnmarshaller[ServerIpmiLiveRequest]

  implicit def fromRequestUnmarshallerServerOrderPostRequest: FromRequestUnmarshaller[ServerOrderPostRequest]

  implicit def fromRequestUnmarshallerReverseDnsEntries: FromRequestUnmarshaller[ReverseDnsEntries]


  implicit def toEntityMarshallerinline_response_200_21: ToEntityMarshaller[inline_response_200_21]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_29: ToEntityMarshaller[inline_response_200_29]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBuyItNowList: ToEntityMarshaller[BuyItNowList]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServerOrder: ToEntityMarshaller[ServerOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServer: ToEntityMarshaller[Server]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServerRowarray: ToEntityMarshaller[List[ServerRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerReverseDnsEntries: ToEntityMarshaller[ReverseDnsEntries]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServersBuyNowResponse: ToEntityMarshaller[ServersBuyNowResponse]

  implicit def toEntityMarshallerServersBuyNowError: ToEntityMarshaller[ServersBuyNowError]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServerBulkIpmiPowerResponse: ToEntityMarshaller[ServerBulkIpmiPowerResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerServerIpmiLiveInfo: ToEntityMarshaller[ServerIpmiLiveInfo]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_22: ToEntityMarshaller[inline_response_200_22]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

