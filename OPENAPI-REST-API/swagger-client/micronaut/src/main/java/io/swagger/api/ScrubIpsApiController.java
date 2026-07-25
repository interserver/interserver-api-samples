package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.CreateFilter;

import io.swagger.model.CreateFirewallRule;

import io.swagger.model.CreateGeoFirewallRule;

import io.swagger.model.DeleteFirewallRule;

import io.swagger.model.DeleteGeoFirewallRule;

import io.swagger.model.InlineResponse20013;

import io.swagger.model.InlineResponse20014;

import io.swagger.model.InlineResponse20015;

import io.swagger.model.InlineResponse20016;

import io.swagger.model.InlineResponse20017;

import io.swagger.model.InlineResponse20018;

import io.swagger.model.InlineResponse20019;

import io.swagger.model.InlineResponse20020;

import io.swagger.model.InlineResponse201;

import io.swagger.model.InlineResponse2011;

import io.swagger.model.InlineResponse2012;

import io.swagger.model.InlineResponse400;

import io.swagger.model.InlineResponse4001;

import io.swagger.model.InlineResponse4002;

import io.swagger.model.InlineResponse4003;

import io.swagger.model.InlineResponse4004;

import io.swagger.model.InlineResponse4005;

import io.swagger.model.InlineResponse401;

import io.swagger.model.InlineResponse500;

import io.swagger.model.InlineResponse5001;

import io.swagger.model.InlineResponse5002;

import io.swagger.model.InlineResponse5003;

import io.swagger.model.InlineResponse5004;

import io.swagger.model.InlineResponse5005;

import io.swagger.model.ScrubIpFilterTypes;

import io.swagger.model.ScrubIpPlaceOrder;

import io.swagger.model.ScrubIpsLogRowSchema;

import io.swagger.model.ScrubIpsRowSchema;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class ScrubIpsApiController implements ScrubIpsApi {

    @Override
    public Single<HttpResponse<InlineResponse20014>> cancelScrubIp(Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.cancelScrubIp(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse2011>> createFilter(@NotNull @Valid CreateFilter body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.createFilter(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse201>> createGeoRule(@NotNull @Valid CreateGeoFirewallRule body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.createGeoRule(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse201>> createRule(@NotNull @Valid CreateFirewallRule body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.createRule(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20018>> deleteFilter(@NotNull @Valid CreateFilter body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.deleteFilter(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20016>> disableScrub(Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.disableScrub(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20015>> enableScrub(Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.enableScrub(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20019>> getOrderDetail() {
        // TODO: Implement me
        return ScrubIpsApi.super.getOrderDetail();
    }

    @Override
    public Single<HttpResponse<InlineResponse20013>> getScrubIpDetails(Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.getScrubIpDetails(id);
    }

    @Override
    public Single<HttpResponse<ScrubIpFilterTypes>> getScrubIpFilterTypes() {
        // TODO: Implement me
        return ScrubIpsApi.super.getScrubIpFilterTypes();
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getScrubIpInvoices(Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.getScrubIpInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<ScrubIpsLogRowSchema>>> getScrubIpLogs(String id) {
        // TODO: Implement me
        return ScrubIpsApi.super.getScrubIpLogs(id);
    }

    @Override
    public Single<HttpResponse<List<ScrubIpsRowSchema>>> getScrubIpsList() {
        // TODO: Implement me
        return ScrubIpsApi.super.getScrubIpsList();
    }

    @Override
    public Single<HttpResponse<InlineResponse2012>> placeScrubOrder(@NotNull @Valid ScrubIpPlaceOrder body) {
        // TODO: Implement me
        return ScrubIpsApi.super.placeScrubOrder(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse20020>> putScrubIps(@NotNull @Valid ScrubIpPlaceOrder body) {
        // TODO: Implement me
        return ScrubIpsApi.super.putScrubIps(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse20017>> scrubIpsDeleteGeoRule(@NotNull @Valid DeleteGeoFirewallRule body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.scrubIpsDeleteGeoRule(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20017>> scrubIpsDeleteRule(@NotNull @Valid DeleteFirewallRule body, Integer id) {
        // TODO: Implement me
        return ScrubIpsApi.super.scrubIpsDeleteRule(body, id);
    }
}
