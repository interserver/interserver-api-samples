package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class DomainsApiService {
    public abstract Response addDomain(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addDomainDnssec(DomainDnssecRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addDomainDnssec(List<Integer> algorithm,List<Integer> digestType,List<String> digest,List<Integer> keyTag,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addDomainNameserver(DomainNameserverPostRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addDomainNameserver(String name,String ipAddress,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response cancelDomain(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteDomainDnssec(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteDomainNameserver(Integer id, @NotNull Integer index,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainContact(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainDnssec(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainLookup(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainNameservers(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainRenewal(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainSearch(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainTransfer(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainWhoisPrivacy(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainsList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getDomainsWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewDomain(SecurityContext securityContext) throws NotFoundException;
    public abstract Response patchDomains(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postDomainRenewal(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postDomainSearch(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postDomainTransfer(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putDomains(Map<String, Object> body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainContact(DomainContactDetails body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainContact(String status,String state,String orgName,String country,String postalCode,String email,String fax,String address2,String address3,String address1,String city,String phone,String firstName,String lastName,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainNameservers(DomainNameserverPutRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainNameservers(List<String> nameserver,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainWhoisPrivacy(DomainWhoisPrivacyRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateDomainWhoisPrivacy(String func,String csrfToken,String domainFirstname,String domainLastname,String domainEmail,String domainAddress,String domainAddress2,String domainAddress3,String domainCity,String domainState,String domainZip,String domainCountry,String domainPhone,String domainFax,String domainCompany,String domainExtra,Integer id,SecurityContext securityContext) throws NotFoundException;
}
