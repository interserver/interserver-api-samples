package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.IdBuyIpBody;

import io.swagger.model.IdMigrationBody;

import io.swagger.model.InlineResponse20025;

import io.swagger.model.InlineResponse20026;

import io.swagger.model.InlineResponse20027;

import io.swagger.model.InlineResponse20028;

import io.swagger.model.InlineResponse401;

import io.swagger.model.ReverseDnsEntries;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.SuccessTextResponse;

import io.swagger.model.TextResponse;

import io.swagger.model.Website;

import io.swagger.model.WebsiteBackups;

import io.swagger.model.WebsiteLoginResponse;

import io.swagger.model.WebsiteOrderPostRequest;

import io.swagger.model.WebsiteOrderPutRequest;

import io.swagger.model.WebsiteRow;

import io.swagger.model.WebsitesOrder;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class WebsitesApiController implements WebsitesApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addWebsite(@NotNull @Valid WebsiteOrderPostRequest body) {
        // TODO: Implement me
        return WebsitesApi.super.addWebsite(body);
    }

    @Override
    public Single<HttpResponse<WebsitesOrder>> getNewWebsite() {
        // TODO: Implement me
        return WebsitesApi.super.getNewWebsite();
    }

    @Override
    public Single<HttpResponse<InlineResponse20026>> getWebsiteBuyIp(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsiteBuyIp(id);
    }

    @Override
    public Single<HttpResponse<Website>> getWebsiteInfo(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsiteInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getWebsiteInvoices(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsiteInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<WebsiteRow>>> getWebsiteList() {
        // TODO: Implement me
        return WebsitesApi.super.getWebsiteList();
    }

    @Override
    public Single<HttpResponse<WebsiteBackups>> getWebsitesBackups(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsitesBackups(id);
    }

    @Override
    public Single<HttpResponse<WebsiteLoginResponse>> getWebsitesLogin(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsitesLogin(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getWebsitesWelcomeEmail(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.getWebsitesWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<ReverseDnsEntries>> gettWebsiteReverseDns(Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.gettWebsiteReverseDns(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20027>> postWebsiteBuyIp(@NotNull @Valid IdBuyIpBody body, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsiteBuyIp(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20027>> postWebsiteBuyIp(@NotNull Map<String, String> ips, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsiteBuyIp(ips, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20028>> postWebsiteMigration(@NotNull @Valid IdMigrationBody body, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsiteMigration(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20028>> postWebsiteMigration(@NotNull String custPortal, @NotNull String regEmail, @NotNull String password, @NotNull String ctrlPanel, @NotNull String ftpUsername, @NotNull String ftpPassword, @NotNull String siteBusyMig, @NotNull String splReqMig, @NotNull String domainReg, @NotNull String dataMig, @NotNull String domainRegPortal, @NotNull String domainRegEmail, @NotNull String domainRegPassword, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsiteMigration(custPortal, regEmail, password, ctrlPanel, ftpUsername, ftpPassword, siteBusyMig, splReqMig, domainReg, dataMig, domainRegPortal, domainRegEmail, domainRegPassword, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postWebsitesReverseDns(@NotNull @Valid ReverseDnsEntries body, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsitesReverseDns(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postWebsitesReverseDns(@NotNull Map<String, Object> ips, Integer id) {
        // TODO: Implement me
        return WebsitesApi.super.postWebsitesReverseDns(ips, id);
    }

    @Override
    public Single<HttpResponse<Void>> putWebsites(@NotNull @Valid WebsiteOrderPutRequest body) {
        // TODO: Implement me
        return WebsitesApi.super.putWebsites(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateWebsiteInfo(String id) {
        // TODO: Implement me
        return WebsitesApi.super.updateWebsiteInfo(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20025>> webhostingCancel(String id) {
        // TODO: Implement me
        return WebsitesApi.super.webhostingCancel(id);
    }
}
