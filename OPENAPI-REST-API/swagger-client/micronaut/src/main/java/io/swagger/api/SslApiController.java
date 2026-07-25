package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.InlineResponse20023;

import io.swagger.model.InlineResponse401;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.SslOrderRequest;

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
public class SslApiController implements SslApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addSsl(@NotNull @Valid SslOrderRequest body) {
        // TODO: Implement me
        return SslApi.super.addSsl(body);
    }

    @Override
    public Single<HttpResponse<Object>> getNewSsl() {
        // TODO: Implement me
        return SslApi.super.getNewSsl();
    }

    @Override
    public Single<HttpResponse<Object>> getSslInfo(Integer id) {
        // TODO: Implement me
        return SslApi.super.getSslInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getSslInvoices(Integer id) {
        // TODO: Implement me
        return SslApi.super.getSslInvoices(id);
    }

    @Override
    public Single<HttpResponse<Void>> getSslList() {
        // TODO: Implement me
        return SslApi.super.getSslList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getSslWelcomeEmail(Integer id) {
        // TODO: Implement me
        return SslApi.super.getSslWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<Void>> putSsl(@NotNull @Valid SslOrderRequest body) {
        // TODO: Implement me
        return SslApi.super.putSsl(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse20023>> sslCancel(Integer id) {
        // TODO: Implement me
        return SslApi.super.sslCancel(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateSslInfo(String id) {
        // TODO: Implement me
        return SslApi.super.updateSslInfo(id);
    }
}
