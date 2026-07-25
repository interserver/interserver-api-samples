package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.AffiliateBannerRow
import io.swagger.server.model.AffiliateDockSetup
import io.swagger.server.model.AffiliatePaymentSetup
import io.swagger.server.model.AffiliateTrafficRow
import java.math.BigDecimal
import io.swagger.server.model.BillingAddCcRequest
import io.swagger.server.model.BillingInvoiceDetail
import io.swagger.server.model.BillingInvoiceList
import io.swagger.server.model.BillingPaymentMethodRequest
import io.swagger.server.model.BillingPrepayRequest
import io.swagger.server.model.BillingVerifyCcRequest
import io.swagger.server.model.Id_verify_body
import io.swagger.server.model.MonthlyCounts
import io.swagger.server.model.StatusMonthlyBreakdown
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.inline_response_200_1
import io.swagger.server.model.inline_response_200_10
import io.swagger.server.model.inline_response_401

class BillingApi(
    billingService: BillingApiService,
    billingMarshaller: BillingApiMarshaller
) {
  import billingMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            formFields("name".as[String], "address".as[String], "city".as[String], "state".as[String], "country".as[String], "zip".as[String], "cc".as[String], "cc_exp".as[String], "cc_ccv2".as[String]) { (name, address, city, state, country, zip, cc, ccExp, ccCcv2) =>
              
                entity(as[BillingAddCcRequest]){ body =>
                  billingService.addBillingCreditCard(body = body, name = name, address = address, city = city, state = state, country = country, zip = zip, cc = cc, ccExp = ccExp, ccCcv2 = ccCcv2)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("module".as[String], "amount".as[BigDecimal], "automatic_use".as[String]) { (module, amount, automaticUse) =>
              
                entity(as[BillingPrepayRequest]){ body =>
                  billingService.addBillingPrepay(body = body, module = module, amount = amount, automaticUse = automaticUse)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  billingService.deleteBillingCreditCard(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  billingService.deleteBillingInvoice(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  billingService.deleteBillingPrepay(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getAffiliateBanners()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        parameters("st".as[String].?, "ex".as[String].?, "year".as[Int].?) { (st, ex, year) =>
          
            
              
                
                  billingService.getAffiliateDownload(st = st, ex = ex, year = year)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getAffiliateRichReport()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        parameters("days".as[Int].?) { (days) =>
          
            
              
                
                  billingService.getAffiliateSalesGraph(days = days)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        parameters("st".as[String].?) { (st) =>
          
            
              
                
                  billingService.getAffiliateSignups(st = st)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        parameters("days".as[Int].?) { (days) =>
          
            
              
                
                  billingService.getAffiliateTrafficGraph(days = days)
               
             
           
         
        }
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getAffiliateWebTraffic()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getBillingCart()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  billingService.getBillingCreditCardVerify(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  billingService.getBillingInvoice(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getBillingInvoices()
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  billingService.getBillingPrePays()
               
             
           
         
       
      }
    } ~
    path() { (method, invoices) => 
      get {
        
          
            
              
                
                  billingService.initiatePayment(method = method, invoices = invoices)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      patch {
        
          
            formFields("cc_ccv2".as[String]) { (ccCcv2) =>
              
                entity(as[Id_verify_body]){ body =>
                  billingService.patchBillingCreditCardVerify(body = body, ccCcv2 = ccCcv2, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("idx".as[Int], "cc_ccv2".as[String], "cc_amount1".as[String], "cc_amount2".as[String], "terms".as[Boolean]) { (idx, ccCcv2, ccAmount1, ccAmount2, terms) =>
              
                entity(as[BillingVerifyCcRequest]){ body =>
                  billingService.postBillingCreditCardVerify(body = body, idx = idx, ccCcv2 = ccCcv2, ccAmount1 = ccAmount1, ccAmount2 = ccAmount2, terms = terms, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("affiliate_dock_title".as[String], "affiliate_dock_description".as[String], "referrer_coupon".as[String]) { (affiliateDockTitle, affiliateDockDescription, referrerCoupon) =>
              
                entity(as[AffiliateDockSetup]){ body =>
                  billingService.updateAffiliateDockSetup(affiliateDockTitle = affiliateDockTitle, affiliateDockDescription = affiliateDockDescription, referrerCoupon = referrerCoupon, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("affiliate_paypal".as[String], "affiliate_payment_method".as[String]) { (affiliatePaypal, affiliatePaymentMethod) =>
              
                entity(as[AffiliatePaymentSetup]){ body =>
                  billingService.updateAffiliatePaymentSetup(affiliatePaypal = affiliatePaypal, affiliatePaymentMethod = affiliatePaymentMethod, body = body)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  billingService.updateBillingCreditCard(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      post {
        
          
            formFields("payment_method".as[String], "cc_auto".as[String]) { (paymentMethod, ccAuto) =>
              
                entity(as[BillingPaymentMethodRequest]){ body =>
                  billingService.updateBillingPaymentMethod(body = body, paymentMethod = paymentMethod, ccAuto = ccAuto)
                }
             
            }
         
       
      }
    }
}

trait BillingApiService {

  def addBillingCreditCard200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def addBillingCreditCard401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addBillingCreditCard(body: BillingAddCcRequest, name: String, address: String, city: String, state: String, country: String, zip: String, cc: String, ccExp: String, ccCcv2: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def addBillingPrepay200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def addBillingPrepay401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addBillingPrepay(body: BillingPrepayRequest, module: String, amount: String, automaticUse: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteBillingCreditCard200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteBillingCreditCard401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteBillingCreditCard(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteBillingInvoice200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteBillingInvoice401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteBillingInvoice(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteBillingPrepay200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteBillingPrepay401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteBillingPrepay(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateBanners200(responseAffiliateBannerRowarray: List[AffiliateBannerRow])(implicit toEntityMarshallerAffiliateBannerRowarray: ToEntityMarshaller[List[AffiliateBannerRow]]): Route =
    complete((200, responseAffiliateBannerRowarray))
  def getAffiliateBanners401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Affiliate Banners Array, DataType: List[AffiliateBannerRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateBanners()
      (implicit toEntityMarshallerAffiliateBannerRowarray: ToEntityMarshaller[List[AffiliateBannerRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateDownload200: Route =
    complete((200, "Affiliate report file download. The response Content-Type matches the requested format (text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, or application/pdf)."))
  def getAffiliateDownload401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Affiliate report file download. The response Content-Type matches the requested format (text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, or application/pdf).
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateDownload(st: Option[String], ex: Option[String], year: Option[Int])
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateRichReport200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def getAffiliateRichReport401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateRichReport()
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateSalesGraph200(responseStatusMonthlyBreakdown: StatusMonthlyBreakdown)(implicit toEntityMarshallerStatusMonthlyBreakdown: ToEntityMarshaller[StatusMonthlyBreakdown]): Route =
    complete((200, responseStatusMonthlyBreakdown))
  def getAffiliateSalesGraph401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Affiliate sales graph data broken down by time period., DataType: StatusMonthlyBreakdown
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateSalesGraph(days: Option[Int])
      (implicit toEntityMarshallerStatusMonthlyBreakdown: ToEntityMarshaller[StatusMonthlyBreakdown], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateSignups200(responseinline_response_200_1: inline_response_200_1)(implicit toEntityMarshallerinline_response_200_1: ToEntityMarshaller[inline_response_200_1]): Route =
    complete((200, responseinline_response_200_1))
  def getAffiliateSignups401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Affiliate signup statistics., DataType: inline_response_200_1
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateSignups(st: Option[String])
      (implicit toEntityMarshallerinline_response_200_1: ToEntityMarshaller[inline_response_200_1], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateTrafficGraph200(responseMonthlyCounts: MonthlyCounts)(implicit toEntityMarshallerMonthlyCounts: ToEntityMarshaller[MonthlyCounts]): Route =
    complete((200, responseMonthlyCounts))
  def getAffiliateTrafficGraph401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Affiliate traffic graph data broken down by time period., DataType: MonthlyCounts
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateTrafficGraph(days: Option[Int])
      (implicit toEntityMarshallerMonthlyCounts: ToEntityMarshaller[MonthlyCounts], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getAffiliateWebTraffic200(responseAffiliateTrafficRowarray: List[AffiliateTrafficRow])(implicit toEntityMarshallerAffiliateTrafficRowarray: ToEntityMarshaller[List[AffiliateTrafficRow]]): Route =
    complete((200, responseAffiliateTrafficRowarray))
  def getAffiliateWebTraffic401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The recent affiliate web traffic, DataType: List[AffiliateTrafficRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getAffiliateWebTraffic()
      (implicit toEntityMarshallerAffiliateTrafficRowarray: ToEntityMarshaller[List[AffiliateTrafficRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBillingCart200(responseObject: Object): Route =
    complete((200, responseObject))
  def getBillingCart401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Current shopping cart contents and available payment methods., DataType: Object
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBillingCart()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBillingCreditCardVerify200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getBillingCreditCardVerify401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBillingCreditCardVerify(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBillingInvoice200(responseBillingInvoiceDetail: BillingInvoiceDetail)(implicit toEntityMarshallerBillingInvoiceDetail: ToEntityMarshaller[BillingInvoiceDetail]): Route =
    complete((200, responseBillingInvoiceDetail))
  def getBillingInvoice401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Detailed invoice payload for the requested invoice., DataType: BillingInvoiceDetail
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBillingInvoice(id: Int)
      (implicit toEntityMarshallerBillingInvoiceDetail: ToEntityMarshaller[BillingInvoiceDetail], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBillingInvoices200(responseBillingInvoiceList: BillingInvoiceList)(implicit toEntityMarshallerBillingInvoiceList: ToEntityMarshaller[BillingInvoiceList]): Route =
    complete((200, responseBillingInvoiceList))
  def getBillingInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Invoice listing and summary for the account., DataType: BillingInvoiceList
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBillingInvoices()
      (implicit toEntityMarshallerBillingInvoiceList: ToEntityMarshaller[BillingInvoiceList], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getBillingPrePays200(responseObject: Object): Route =
    complete((200, responseObject))
  def getBillingPrePays401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Prepay balances and metadata., DataType: Object
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getBillingPrePays()
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def initiatePayment200(responseinline_response_200_10: inline_response_200_10)(implicit toEntityMarshallerinline_response_200_10: ToEntityMarshaller[inline_response_200_10]): Route =
    complete((200, responseinline_response_200_10))
  def initiatePayment401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Payment initiation response with redirect or form data., DataType: inline_response_200_10
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def initiatePayment(method: String, invoices: String)
      (implicit toEntityMarshallerinline_response_200_10: ToEntityMarshaller[inline_response_200_10], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def patchBillingCreditCardVerify200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def patchBillingCreditCardVerify401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def patchBillingCreditCardVerify(body: Id_verify_body, ccCcv2: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postBillingCreditCardVerify200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def postBillingCreditCardVerify401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postBillingCreditCardVerify(body: BillingVerifyCcRequest, idx: Int, ccCcv2: String, ccAmount1: String, ccAmount2: String, terms: Boolean, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAffiliateDockSetup200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def updateAffiliateDockSetup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateAffiliateDockSetup(affiliateDockTitle: String, affiliateDockDescription: String, referrerCoupon: String, body: AffiliateDockSetup)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateAffiliatePaymentSetup200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def updateAffiliatePaymentSetup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateAffiliatePaymentSetup(affiliatePaypal: String, affiliatePaymentMethod: String, body: AffiliatePaymentSetup)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateBillingCreditCard200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateBillingCreditCard401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateBillingCreditCard(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateBillingPaymentMethod200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateBillingPaymentMethod401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateBillingPaymentMethod(body: BillingPaymentMethodRequest, paymentMethod: String, ccAuto: String)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait BillingApiMarshaller {
  implicit def fromRequestUnmarshallerAffiliateDockSetup: FromRequestUnmarshaller[AffiliateDockSetup]

  implicit def fromRequestUnmarshallerBillingVerifyCcRequest: FromRequestUnmarshaller[BillingVerifyCcRequest]

  implicit def fromRequestUnmarshallerBillingPaymentMethodRequest: FromRequestUnmarshaller[BillingPaymentMethodRequest]

  implicit def fromRequestUnmarshallerId_verify_body: FromRequestUnmarshaller[Id_verify_body]

  implicit def fromRequestUnmarshallerBillingAddCcRequest: FromRequestUnmarshaller[BillingAddCcRequest]

  implicit def fromRequestUnmarshallerBillingPrepayRequest: FromRequestUnmarshaller[BillingPrepayRequest]

  implicit def fromRequestUnmarshallerAffiliatePaymentSetup: FromRequestUnmarshaller[AffiliatePaymentSetup]


  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerAffiliateBannerRowarray: ToEntityMarshaller[List[AffiliateBannerRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerStatusMonthlyBreakdown: ToEntityMarshaller[StatusMonthlyBreakdown]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_1: ToEntityMarshaller[inline_response_200_1]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerMonthlyCounts: ToEntityMarshaller[MonthlyCounts]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerAffiliateTrafficRowarray: ToEntityMarshaller[List[AffiliateTrafficRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBillingInvoiceDetail: ToEntityMarshaller[BillingInvoiceDetail]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerBillingInvoiceList: ToEntityMarshaller[BillingInvoiceList]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_10: ToEntityMarshaller[inline_response_200_10]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

