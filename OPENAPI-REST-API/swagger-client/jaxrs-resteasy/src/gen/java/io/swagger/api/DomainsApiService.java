package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.Domain;
import io.swagger.model.DomainContactDetails;
import io.swagger.model.DomainDnssecRecords;
import io.swagger.model.DomainDnssecRequest;
import io.swagger.model.DomainLookupResponse;
import io.swagger.model.DomainNameserverGetResponse;
import io.swagger.model.DomainNameserverPostRequest;
import io.swagger.model.DomainNameserverPutRequest;
import io.swagger.model.DomainOrder;
import io.swagger.model.DomainRow;
import io.swagger.model.DomainSearchResponse;
import io.swagger.model.DomainWhoisPrivacyRequest;
import io.swagger.model.InlineResponse2003;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface DomainsApiService {
      Response addDomain(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
      Response addDomainDnssec(DomainDnssecRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response addDomainDnssec(List<Integer> algorithm,List<Integer> digestType,List<String> digest,List<Integer> keyTag,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response addDomainNameserver(DomainNameserverPostRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response addDomainNameserver(String name,String ipAddress,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response cancelDomain(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response deleteDomainDnssec(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response deleteDomainNameserver(Integer id,Integer index,SecurityContext securityContext) throws NotFoundException;
      Response getDomainContact(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainDnssec(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainLookup(String name,SecurityContext securityContext) throws NotFoundException;
      Response getDomainNameservers(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainRenewal(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainSearch(String name,SecurityContext securityContext) throws NotFoundException;
      Response getDomainTransfer(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainWhoisPrivacy(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getDomainsList(SecurityContext securityContext) throws NotFoundException;
      Response getDomainsWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getNewDomain(SecurityContext securityContext) throws NotFoundException;
      Response patchDomains(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
      Response postDomainRenewal(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postDomainSearch(String name,SecurityContext securityContext) throws NotFoundException;
      Response postDomainTransfer(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response putDomains(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainContact(DomainContactDetails body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainContact(String status,String state,String orgName,String country,String postalCode,String email,String fax,String address2,String address3,String address1,String city,String phone,String firstName,String lastName,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainNameservers(DomainNameserverPutRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainNameservers(List<String> nameserver,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainWhoisPrivacy(DomainWhoisPrivacyRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateDomainWhoisPrivacy(String func,String csrfToken,String domainFirstname,String domainLastname,String domainEmail,String domainAddress,String domainAddress2,String domainAddress3,String domainCity,String domainState,String domainZip,String domainCountry,String domainPhone,String domainFax,String domainCompany,String domainExtra,Integer id,SecurityContext securityContext) throws NotFoundException;
}
