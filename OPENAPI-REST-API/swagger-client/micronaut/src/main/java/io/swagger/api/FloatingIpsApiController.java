package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.FloatingIpOrderRequest;

import io.swagger.model.InlineResponse2004;

import io.swagger.model.InlineResponse401;

import io.swagger.model.IpObject;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.SuccessTextResponse;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class FloatingIpsApiController implements FloatingIpsApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addFloatingIp(@NotNull @Valid FloatingIpOrderRequest body) {
        // TODO: Implement me
        return FloatingIpsApi.super.addFloatingIp(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse2004>> floatingIpsCancel(Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.floatingIpsCancel(id);
    }

    @Override
    public Single<HttpResponse<Object>> getFloatingIpInfo(Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.getFloatingIpInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getFloatingIpInvoices(Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.getFloatingIpInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<Object>>> getFloatingIpsList() {
        // TODO: Implement me
        return FloatingIpsApi.super.getFloatingIpsList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getFloatingIpsWelcomeEmail(Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.getFloatingIpsWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<Object>> getNewFloatingIp() {
        // TODO: Implement me
        return FloatingIpsApi.super.getNewFloatingIp();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postFloatingIpsChangeIp(@NotNull String ip, Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.postFloatingIpsChangeIp(ip, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postFloatingIpsChangeIp(@NotNull @Valid IpObject body, Integer id) {
        // TODO: Implement me
        return FloatingIpsApi.super.postFloatingIpsChangeIp(body, id);
    }

    @Override
    public Single<HttpResponse<Void>> putFloatingIps(@NotNull @Valid FloatingIpOrderRequest body) {
        // TODO: Implement me
        return FloatingIpsApi.super.putFloatingIps(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateFloatingIpInfo(String id) {
        // TODO: Implement me
        return FloatingIpsApi.super.updateFloatingIpInfo(id);
    }
}
