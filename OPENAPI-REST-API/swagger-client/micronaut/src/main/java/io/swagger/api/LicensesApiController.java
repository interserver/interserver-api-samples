package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.InlineResponse2005;

import io.swagger.model.InlineResponse401;

import io.swagger.model.IpObject;

import io.swagger.model.License;

import io.swagger.model.LicenseOrderRequest;

import io.swagger.model.LicenseRow;

import io.swagger.model.LicensesOrder;

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
public class LicensesApiController implements LicensesApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addLicense(@NotNull @Valid LicenseOrderRequest body) {
        // TODO: Implement me
        return LicensesApi.super.addLicense(body);
    }

    @Override
    public Single<HttpResponse<License>> getLicenseInfo(Integer id) {
        // TODO: Implement me
        return LicensesApi.super.getLicenseInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getLicenseInvoices(Integer id) {
        // TODO: Implement me
        return LicensesApi.super.getLicenseInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<LicenseRow>>> getLicenseList() {
        // TODO: Implement me
        return LicensesApi.super.getLicenseList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getLicensesWelcomeEmail(Integer id) {
        // TODO: Implement me
        return LicensesApi.super.getLicensesWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<LicensesOrder>> getNewLicense() {
        // TODO: Implement me
        return LicensesApi.super.getNewLicense();
    }

    @Override
    public Single<HttpResponse<InlineResponse2005>> licensesCancel(Integer id) {
        // TODO: Implement me
        return LicensesApi.super.licensesCancel(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postLicenseChangeIp(@NotNull @Valid IpObject body, Integer id) {
        // TODO: Implement me
        return LicensesApi.super.postLicenseChangeIp(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postLicenseChangeIp(@NotNull String ip, Integer id) {
        // TODO: Implement me
        return LicensesApi.super.postLicenseChangeIp(ip, id);
    }

    @Override
    public Single<HttpResponse<Void>> putLicenses(@NotNull @Valid LicenseOrderRequest body) {
        // TODO: Implement me
        return LicensesApi.super.putLicenses(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateLicenseInfo(String id) {
        // TODO: Implement me
        return LicensesApi.super.updateLicenseInfo(id);
    }
}
