package io.swagger.api;

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

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class DomainsApiController implements DomainsApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addDomain(@NotNull @Valid Map<String, Object> body) {
        // TODO: Implement me
        return DomainsApi.super.addDomain(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addDomainDnssec(@NotNull @Valid DomainDnssecRequest body, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.addDomainDnssec(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addDomainDnssec(@NotNull List<Integer> algorithm, @NotNull List<Integer> digestType, @NotNull List<String> digest, @NotNull List<Integer> keyTag, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.addDomainDnssec(algorithm, digestType, digest, keyTag, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> addDomainNameserver(@NotNull @Valid DomainNameserverPostRequest body, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.addDomainNameserver(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> addDomainNameserver(@NotNull String name, @NotNull String ipAddress, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.addDomainNameserver(name, ipAddress, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse2003>> cancelDomain(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.cancelDomain(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteDomainDnssec(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.deleteDomainDnssec(id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> deleteDomainNameserver(Integer id, @NotNull Integer index) {
        // TODO: Implement me
        return DomainsApi.super.deleteDomainNameserver(id, index);
    }

    @Override
    public Single<HttpResponse<DomainContactDetails>> getDomainContact(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainContact(id);
    }

    @Override
    public Single<HttpResponse<DomainDnssecRecords>> getDomainDnssec(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainDnssec(id);
    }

    @Override
    public Single<HttpResponse<Domain>> getDomainInfo(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getDomainInvoices(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainInvoices(id);
    }

    @Override
    public Single<HttpResponse<DomainLookupResponse>> getDomainLookup(String name) {
        // TODO: Implement me
        return DomainsApi.super.getDomainLookup(name);
    }

    @Override
    public Single<HttpResponse<DomainNameserverGetResponse>> getDomainNameservers(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainNameservers(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getDomainRenewal(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainRenewal(id);
    }

    @Override
    public Single<HttpResponse<DomainSearchResponse>> getDomainSearch(String name) {
        // TODO: Implement me
        return DomainsApi.super.getDomainSearch(name);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getDomainTransfer(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainTransfer(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getDomainWhoisPrivacy(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainWhoisPrivacy(id);
    }

    @Override
    public Single<HttpResponse<List<DomainRow>>> getDomainsList() {
        // TODO: Implement me
        return DomainsApi.super.getDomainsList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getDomainsWelcomeEmail(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.getDomainsWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<DomainOrder>> getNewDomain() {
        // TODO: Implement me
        return DomainsApi.super.getNewDomain();
    }

    @Override
    public Single<HttpResponse<Void>> patchDomains(@NotNull @Valid Map<String, Object> body) {
        // TODO: Implement me
        return DomainsApi.super.patchDomains(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postDomainRenewal(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.postDomainRenewal(id);
    }

    @Override
    public Single<HttpResponse<Void>> postDomainSearch(String name) {
        // TODO: Implement me
        return DomainsApi.super.postDomainSearch(name);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postDomainTransfer(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.postDomainTransfer(id);
    }

    @Override
    public Single<HttpResponse<Void>> putDomains(@NotNull @Valid Map<String, Object> body) {
        // TODO: Implement me
        return DomainsApi.super.putDomains(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateDomainContact(@NotNull @Valid DomainContactDetails body, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainContact(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateDomainContact(@NotNull String status, @NotNull String state, @NotNull String orgName, @NotNull String country, @NotNull String postalCode, @NotNull String email, @NotNull String fax, @NotNull String address2, @NotNull String address3, @NotNull String address1, @NotNull String city, @NotNull String phone, @NotNull String firstName, @NotNull String lastName, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainContact(status, state, orgName, country, postalCode, email, fax, address2, address3, address1, city, phone, firstName, lastName, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateDomainInfo(Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainInfo(id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateDomainNameservers(@NotNull @Valid DomainNameserverPutRequest body, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainNameservers(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateDomainNameservers(@NotNull List<String> nameserver, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainNameservers(nameserver, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateDomainWhoisPrivacy(@NotNull @Valid DomainWhoisPrivacyRequest body, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainWhoisPrivacy(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateDomainWhoisPrivacy(@NotNull String func, @NotNull String csrfToken, @NotNull String domainFirstname, @NotNull String domainLastname, @NotNull String domainEmail, @NotNull String domainAddress, @NotNull String domainAddress2, @NotNull String domainAddress3, @NotNull String domainCity, @NotNull String domainState, @NotNull String domainZip, @NotNull String domainCountry, @NotNull String domainPhone, @NotNull String domainFax, @NotNull String domainCompany, @NotNull String domainExtra, Integer id) {
        // TODO: Implement me
        return DomainsApi.super.updateDomainWhoisPrivacy(func, csrfToken, domainFirstname, domainLastname, domainEmail, domainAddress, domainAddress2, domainAddress3, domainCity, domainState, domainZip, domainCountry, domainPhone, domainFax, domainCompany, domainExtra, id);
    }
}
