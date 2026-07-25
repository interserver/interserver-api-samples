package io.swagger.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.unmarshalling.FromRequestUnmarshaller
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import io.swagger.server.AkkaHttpHelper._
import io.swagger.server.model.ChargeInvoiceRows
import io.swagger.server.model.Domain
import io.swagger.server.model.DomainContactDetails
import io.swagger.server.model.DomainDnssecRecords
import io.swagger.server.model.DomainDnssecRequest
import io.swagger.server.model.DomainLookupResponse
import io.swagger.server.model.DomainNameserverGetResponse
import io.swagger.server.model.DomainNameserverPostRequest
import io.swagger.server.model.DomainNameserverPutRequest
import io.swagger.server.model.DomainOrder
import io.swagger.server.model.DomainRow
import io.swagger.server.model.DomainSearchResponse
import io.swagger.server.model.DomainWhoisPrivacyRequest
import io.swagger.server.model.ServiceOrderPostResponse
import io.swagger.server.model.SuccessTextResponse
import io.swagger.server.model.TextResponse
import io.swagger.server.model.inline_response_200_3
import io.swagger.server.model.inline_response_401

class DomainsApi(
    domainsService: DomainsApiService,
    domainsMarshaller: DomainsApiMarshaller
) {
  import domainsMarshaller._

  lazy val route: Route =
    path() { 
      post {
        
          
            
              
                entity(as[Map[String, Object]]){ body =>
                  domainsService.addDomain(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("algorithm".as[String], "digest_type".as[String], "digest".as[String], "key_tag".as[String]) { (algorithm, digestType, digest, keyTag) =>
              
                entity(as[DomainDnssecRequest]){ body =>
                  domainsService.addDomainDnssec(body = body, algorithm = algorithm, digestType = digestType, digest = digest, keyTag = keyTag, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("name".as[String], "ipAddress".as[String]) { (name, ipAddress) =>
              
                entity(as[DomainNameserverPostRequest]){ body =>
                  domainsService.addDomainNameserver(body = body, name = name, ipAddress = ipAddress, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  domainsService.cancelDomain(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        
          
            
              
                
                  domainsService.deleteDomainDnssec(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      delete {
        parameters("index".as[Int]) { (index) =>
          
            
              
                
                  domainsService.deleteDomainNameserver(id = id, index = index)
               
             
           
         
        }
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainContact(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainDnssec(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainInvoices(id = id)
               
             
           
         
       
      }
    } ~
    path() { (name) => 
      get {
        
          
            
              
                
                  domainsService.getDomainLookup(name = name)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainNameservers(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainRenewal(id = id)
               
             
           
         
       
      }
    } ~
    path() { (name) => 
      get {
        
          
            
              
                
                  domainsService.getDomainSearch(name = name)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainTransfer(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainWhoisPrivacy(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  domainsService.getDomainsList()
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      get {
        
          
            
              
                
                  domainsService.getDomainsWelcomeEmail(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      get {
        
          
            
              
                
                  domainsService.getNewDomain()
               
             
           
         
       
      }
    } ~
    path() { 
      patch {
        
          
            
              
                entity(as[Map[String, Object]]){ body =>
                  domainsService.patchDomains(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  domainsService.postDomainRenewal(id = id)
               
             
           
         
       
      }
    } ~
    path() { (name) => 
      post {
        
          
            
              
                
                  domainsService.postDomainSearch(name = name)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  domainsService.postDomainTransfer(id = id)
               
             
           
         
       
      }
    } ~
    path() { 
      put {
        
          
            
              
                entity(as[Map[String, Object]]){ body =>
                  domainsService.putDomains(body = body)
                }
             
           
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("status".as[String], "state".as[String], "org_name".as[String], "country".as[String], "postal_code".as[String], "email".as[String], "fax".as[String], "address2".as[String], "address3".as[String], "address1".as[String], "city".as[String], "phone".as[String], "first_name".as[String], "last_name".as[String]) { (status, state, orgName, country, postalCode, email, fax, address2, address3, address1, city, phone, firstName, lastName) =>
              
                entity(as[DomainContactDetails]){ body =>
                  domainsService.updateDomainContact(body = body, status = status, state = state, orgName = orgName, country = country, postalCode = postalCode, email = email, fax = fax, address2 = address2, address3 = address3, address1 = address1, city = city, phone = phone, firstName = firstName, lastName = lastName, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            
              
                
                  domainsService.updateDomainInfo(id = id)
               
             
           
         
       
      }
    } ~
    path() { (id) => 
      put {
        
          
            formFields("nameserver".as[String]) { (nameserver) =>
              
                entity(as[DomainNameserverPutRequest]){ body =>
                  domainsService.updateDomainNameservers(body = body, nameserver = nameserver, id = id)
                }
             
            }
         
       
      }
    } ~
    path() { (id) => 
      post {
        
          
            formFields("func".as[String], "csrf_token".as[String], "domain_firstname".as[String], "domain_lastname".as[String], "domain_email".as[String], "domain_address".as[String], "domain_address2".as[String], "domain_address3".as[String], "domain_city".as[String], "domain_state".as[String], "domain_zip".as[String], "domain_country".as[String], "domain_phone".as[String], "domain_fax".as[String], "domain_company".as[String], "domain_extra".as[String]) { (func, csrfToken, domainFirstname, domainLastname, domainEmail, domainAddress, domainAddress2, domainAddress3, domainCity, domainState, domainZip, domainCountry, domainPhone, domainFax, domainCompany, domainExtra) =>
              
                entity(as[DomainWhoisPrivacyRequest]){ body =>
                  domainsService.updateDomainWhoisPrivacy(body = body, func = func, csrfToken = csrfToken, domainFirstname = domainFirstname, domainLastname = domainLastname, domainEmail = domainEmail, domainAddress = domainAddress, domainAddress2 = domainAddress2, domainAddress3 = domainAddress3, domainCity = domainCity, domainState = domainState, domainZip = domainZip, domainCountry = domainCountry, domainPhone = domainPhone, domainFax = domainFax, domainCompany = domainCompany, domainExtra = domainExtra, id = id)
                }
             
            }
         
       
      }
    }
}

trait DomainsApiService {

  def addDomain200(responseServiceOrderPostResponse: ServiceOrderPostResponse)(implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]): Route =
    complete((200, responseServiceOrderPostResponse))
  def addDomain401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;., DataType: ServiceOrderPostResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addDomain(body: Map[String, Object])
      (implicit toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def addDomainDnssec200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def addDomainDnssec401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addDomainDnssec(body: DomainDnssecRequest, algorithm: String, digestType: String, digest: String, keyTag: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def addDomainNameserver200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def addDomainNameserver401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def addDomainNameserver(body: DomainNameserverPostRequest, name: String, ipAddress: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def cancelDomain200(responseinline_response_200_3: inline_response_200_3)(implicit toEntityMarshallerinline_response_200_3: ToEntityMarshaller[inline_response_200_3]): Route =
    complete((200, responseinline_response_200_3))
  def cancelDomain401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Domains Cancel, DataType: inline_response_200_3
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def cancelDomain(id: Int)
      (implicit toEntityMarshallerinline_response_200_3: ToEntityMarshaller[inline_response_200_3], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteDomainDnssec200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def deleteDomainDnssec401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteDomainDnssec(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def deleteDomainNameserver200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def deleteDomainNameserver401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def deleteDomainNameserver(id: Int, index: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainContact200(responseDomainContactDetails: DomainContactDetails)(implicit toEntityMarshallerDomainContactDetails: ToEntityMarshaller[DomainContactDetails]): Route =
    complete((200, responseDomainContactDetails))
  def getDomainContact401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The registrant/admin contact details for the domain., DataType: DomainContactDetails
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainContact(id: Int)
      (implicit toEntityMarshallerDomainContactDetails: ToEntityMarshaller[DomainContactDetails], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainDnssec200(responseDomainDnssecRecords: DomainDnssecRecords)(implicit toEntityMarshallerDomainDnssecRecords: ToEntityMarshaller[DomainDnssecRecords]): Route =
    complete((200, responseDomainDnssecRecords))
  def getDomainDnssec401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: DNSSEC records currently applied to the domain., DataType: DomainDnssecRecords
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainDnssec(id: Int)
      (implicit toEntityMarshallerDomainDnssecRecords: ToEntityMarshaller[DomainDnssecRecords], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainInfo200(responseDomain: Domain)(implicit toEntityMarshallerDomain: ToEntityMarshaller[Domain]): Route =
    complete((200, responseDomain))
  def getDomainInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Domain Information., DataType: Domain
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainInfo(id: Int)
      (implicit toEntityMarshallerDomain: ToEntityMarshaller[Domain], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainInvoices200(responseChargeInvoiceRows: ChargeInvoiceRows)(implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]): Route =
    complete((200, responseChargeInvoiceRows))
  def getDomainInvoices401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Get Invoices response, DataType: ChargeInvoiceRows
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainInvoices(id: Int)
      (implicit toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainLookup200(responseDomainLookupResponse: DomainLookupResponse)(implicit toEntityMarshallerDomainLookupResponse: ToEntityMarshaller[DomainLookupResponse]): Route =
    complete((200, responseDomainLookupResponse))
  def getDomainLookup401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getDomainLookup422(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((422, responseTextResponse))
  /**
   * Code: 200, Message: Availability, pricing, and field metadata for the requested domain., DataType: DomainLookupResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 422, Message: The domain input was invalid., DataType: TextResponse
   */
  def getDomainLookup(name: String)
      (implicit toEntityMarshallerDomainLookupResponse: ToEntityMarshaller[DomainLookupResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

  def getDomainNameservers200(responseDomainNameserverGetResponse: DomainNameserverGetResponse)(implicit toEntityMarshallerDomainNameserverGetResponse: ToEntityMarshaller[DomainNameserverGetResponse]): Route =
    complete((200, responseDomainNameserverGetResponse))
  def getDomainNameservers401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Domain registered nameservers list response, DataType: DomainNameserverGetResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainNameservers(id: Int)
      (implicit toEntityMarshallerDomainNameserverGetResponse: ToEntityMarshaller[DomainNameserverGetResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainRenewal200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getDomainRenewal401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainRenewal(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainSearch200(responseDomainSearchResponse: DomainSearchResponse)(implicit toEntityMarshallerDomainSearchResponse: ToEntityMarshaller[DomainSearchResponse]): Route =
    complete((200, responseDomainSearchResponse))
  def getDomainSearch401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  def getDomainSearch404(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((404, responseTextResponse))
  /**
   * Code: 200, Message: Suggested and lookup results for the supplied search term., DataType: DomainSearchResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   * Code: 404, Message: No search suggestions or registrar response available., DataType: TextResponse
   */
  def getDomainSearch(name: String)
      (implicit toEntityMarshallerDomainSearchResponse: ToEntityMarshaller[DomainSearchResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401], toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route

  def getDomainTransfer200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getDomainTransfer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainTransfer(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainWhoisPrivacy200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getDomainWhoisPrivacy401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainWhoisPrivacy(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainsList200(responseDomainRowarray: List[DomainRow])(implicit toEntityMarshallerDomainRowarray: ToEntityMarshaller[List[DomainRow]]): Route =
    complete((200, responseDomainRowarray))
  def getDomainsList401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: The listing of &#x60;Domains&#x60; services on your account., DataType: List[DomainRow]
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainsList()
      (implicit toEntityMarshallerDomainRowarray: ToEntityMarshaller[List[DomainRow]], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getDomainsWelcomeEmail200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def getDomainsWelcomeEmail401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getDomainsWelcomeEmail(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def getNewDomain200(responseDomainOrder: DomainOrder)(implicit toEntityMarshallerDomainOrder: ToEntityMarshaller[DomainOrder]): Route =
    complete((200, responseDomainOrder))
  def getNewDomain401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Domain registration order information., DataType: DomainOrder
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def getNewDomain()
      (implicit toEntityMarshallerDomainOrder: ToEntityMarshaller[DomainOrder], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def patchDomains200: Route =
    complete((200, "Validate Domain order response"))
  def patchDomains401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Domain order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def patchDomains(body: Map[String, Object])
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postDomainRenewal200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def postDomainRenewal401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postDomainRenewal(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postDomainSearch200: Route =
    complete((200, "Domain availability and pricing check results."))
  def postDomainSearch401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Domain availability and pricing check results.
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postDomainSearch(name: String)
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def postDomainTransfer200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def postDomainTransfer401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def postDomainTransfer(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def putDomains200: Route =
    complete((200, "Validate Domain Order response"))
  def putDomains401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Validate Domain Order response
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def putDomains(body: Map[String, Object])
      (implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateDomainContact200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateDomainContact401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateDomainContact(body: DomainContactDetails, status: String, state: String, orgName: String, country: String, postalCode: String, email: String, fax: String, address2: String, address3: String, address1: String, city: String, phone: String, firstName: String, lastName: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateDomainInfo200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateDomainInfo401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateDomainInfo(id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateDomainNameservers200(responseTextResponse: TextResponse)(implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]): Route =
    complete((200, responseTextResponse))
  def updateDomainNameservers401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: Response with a text message field., DataType: TextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateDomainNameservers(body: DomainNameserverPutRequest, nameserver: String, id: Int)
      (implicit toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

  def updateDomainWhoisPrivacy200(responseSuccessTextResponse: SuccessTextResponse)(implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]): Route =
    complete((200, responseSuccessTextResponse))
  def updateDomainWhoisPrivacy401(responseinline_response_401: inline_response_401)(implicit toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route =
    complete((401, responseinline_response_401))
  /**
   * Code: 200, Message: A response indicating the operation completed successfully with a text message., DataType: SuccessTextResponse
   * Code: 401, Message: Unauthorized, DataType: inline_response_401
   */
  def updateDomainWhoisPrivacy(body: DomainWhoisPrivacyRequest, func: String, csrfToken: String, domainFirstname: String, domainLastname: String, domainEmail: String, domainAddress: String, domainAddress2: String, domainAddress3: String, domainCity: String, domainState: String, domainZip: String, domainCountry: String, domainPhone: String, domainFax: String, domainCompany: String, domainExtra: String, id: Int)
      (implicit toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse], toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]): Route

}

trait DomainsApiMarshaller {
  implicit def fromRequestUnmarshallerDomainWhoisPrivacyRequest: FromRequestUnmarshaller[DomainWhoisPrivacyRequest]

  implicit def fromRequestUnmarshallerMap[String, Object]: FromRequestUnmarshaller[Map[String, Object]]

  implicit def fromRequestUnmarshallerDomainNameserverPutRequest: FromRequestUnmarshaller[DomainNameserverPutRequest]

  implicit def fromRequestUnmarshallerDomainNameserverPostRequest: FromRequestUnmarshaller[DomainNameserverPostRequest]

  implicit def fromRequestUnmarshallerDomainDnssecRequest: FromRequestUnmarshaller[DomainDnssecRequest]

  implicit def fromRequestUnmarshallerDomainContactDetails: FromRequestUnmarshaller[DomainContactDetails]


  implicit def toEntityMarshallerServiceOrderPostResponse: ToEntityMarshaller[ServiceOrderPostResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_200_3: ToEntityMarshaller[inline_response_200_3]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainContactDetails: ToEntityMarshaller[DomainContactDetails]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainDnssecRecords: ToEntityMarshaller[DomainDnssecRecords]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomain: ToEntityMarshaller[Domain]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerChargeInvoiceRows: ToEntityMarshaller[ChargeInvoiceRows]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainLookupResponse: ToEntityMarshaller[DomainLookupResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerDomainNameserverGetResponse: ToEntityMarshaller[DomainNameserverGetResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainSearchResponse: ToEntityMarshaller[DomainSearchResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainRowarray: ToEntityMarshaller[List[DomainRow]]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerDomainOrder: ToEntityMarshaller[DomainOrder]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerTextResponse: ToEntityMarshaller[TextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

  implicit def toEntityMarshallerSuccessTextResponse: ToEntityMarshaller[SuccessTextResponse]

  implicit def toEntityMarshallerinline_response_401: ToEntityMarshaller[inline_response_401]

}

