package io.swagger.api;

import java.math.BigDecimal;

import io.swagger.model.BillingAddCcRequest;

import io.swagger.model.BillingInvoiceDetail;

import io.swagger.model.BillingInvoiceList;

import io.swagger.model.BillingPaymentMethodRequest;

import io.swagger.model.BillingPrepayRequest;

import io.swagger.model.BillingVerifyCcRequest;

import io.swagger.model.IdVerifyBody;

import io.swagger.model.InlineResponse20010;

import io.swagger.model.InlineResponse401;

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
public class BillingApiController implements BillingApi {

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addBillingCreditCard(@NotNull @Valid BillingAddCcRequest body) {
        // TODO: Implement me
        return BillingApi.super.addBillingCreditCard(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addBillingCreditCard(@NotNull String name, @NotNull String address, @NotNull String city, @NotNull String state, @NotNull String country, @NotNull String zip, @NotNull String cc, @NotNull String ccExp, @NotNull String ccCcv2) {
        // TODO: Implement me
        return BillingApi.super.addBillingCreditCard(name, address, city, state, country, zip, cc, ccExp, ccCcv2);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addBillingPrepay(@NotNull @Valid BillingPrepayRequest body) {
        // TODO: Implement me
        return BillingApi.super.addBillingPrepay(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> addBillingPrepay(@NotNull String module, @NotNull BigDecimal amount, @NotNull String automaticUse) {
        // TODO: Implement me
        return BillingApi.super.addBillingPrepay(module, amount, automaticUse);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteBillingCreditCard(Integer id) {
        // TODO: Implement me
        return BillingApi.super.deleteBillingCreditCard(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteBillingInvoice(Integer id) {
        // TODO: Implement me
        return BillingApi.super.deleteBillingInvoice(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteBillingPrepay(Integer id) {
        // TODO: Implement me
        return BillingApi.super.deleteBillingPrepay(id);
    }

    @Override
    public Single<HttpResponse<Object>> getBillingCart() {
        // TODO: Implement me
        return BillingApi.super.getBillingCart();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getBillingCreditCardVerify(Integer id) {
        // TODO: Implement me
        return BillingApi.super.getBillingCreditCardVerify(id);
    }

    @Override
    public Single<HttpResponse<BillingInvoiceDetail>> getBillingInvoice(Integer id) {
        // TODO: Implement me
        return BillingApi.super.getBillingInvoice(id);
    }

    @Override
    public Single<HttpResponse<BillingInvoiceList>> getBillingInvoices() {
        // TODO: Implement me
        return BillingApi.super.getBillingInvoices();
    }

    @Override
    public Single<HttpResponse<Object>> getBillingPrePays() {
        // TODO: Implement me
        return BillingApi.super.getBillingPrePays();
    }

    @Override
    public Single<HttpResponse<InlineResponse20010>> initiatePayment(String method, String invoices) {
        // TODO: Implement me
        return BillingApi.super.initiatePayment(method, invoices);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> patchBillingCreditCardVerify(@NotNull @Valid IdVerifyBody body, Integer id) {
        // TODO: Implement me
        return BillingApi.super.patchBillingCreditCardVerify(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> patchBillingCreditCardVerify(@NotNull String ccCcv2, Integer id) {
        // TODO: Implement me
        return BillingApi.super.patchBillingCreditCardVerify(ccCcv2, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postBillingCreditCardVerify(@NotNull @Valid BillingVerifyCcRequest body, Integer id) {
        // TODO: Implement me
        return BillingApi.super.postBillingCreditCardVerify(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postBillingCreditCardVerify(@NotNull Integer idx, @NotNull String ccCcv2, @NotNull String ccAmount1, @NotNull String ccAmount2, @NotNull Boolean terms, Integer id) {
        // TODO: Implement me
        return BillingApi.super.postBillingCreditCardVerify(idx, ccCcv2, ccAmount1, ccAmount2, terms, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateBillingCreditCard(Integer id) {
        // TODO: Implement me
        return BillingApi.super.updateBillingCreditCard(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateBillingPaymentMethod(@NotNull @Valid BillingPaymentMethodRequest body) {
        // TODO: Implement me
        return BillingApi.super.updateBillingPaymentMethod(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateBillingPaymentMethod(@NotNull String paymentMethod, @NotNull String ccAuto) {
        // TODO: Implement me
        return BillingApi.super.updateBillingPaymentMethod(paymentMethod, ccAuto);
    }
}
