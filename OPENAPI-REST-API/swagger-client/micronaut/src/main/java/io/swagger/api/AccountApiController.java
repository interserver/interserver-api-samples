package io.swagger.api;

import io.swagger.model.Account2faBody1;

import io.swagger.model.AccountFeatures;

import io.swagger.model.AccountInfo;

import io.swagger.model.AccountInfoPost;

import io.swagger.model.AccountSshKey;

import io.swagger.model.GenericResponse;

import io.swagger.model.InlineResponse200;

import io.swagger.model.InlineResponse401;

import io.swagger.model.InlineResponseMap200;

import io.swagger.model.IpLimitRange;

import io.swagger.model.PasswordRequest;

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
public class AccountApiController implements AccountApi {

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteAccountOauthName(String name) {
        // TODO: Implement me
        return AccountApi.super.deleteAccountOauthName(name);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteAccountTfa() {
        // TODO: Implement me
        return AccountApi.super.deleteAccountTfa();
    }

    @Override
    public Single<HttpResponse<GenericResponse>> deleteIpLimit(@Nullable @Valid IpLimitRange body) {
        // TODO: Implement me
        return AccountApi.super.deleteIpLimit(body);
    }

    @Override
    public Single<HttpResponse<List<String>>> getAccountCurrencies() {
        // TODO: Implement me
        return AccountApi.super.getAccountCurrencies();
    }

    @Override
    public Single<HttpResponse<AccountInfo>> getAccountInfo() {
        // TODO: Implement me
        return AccountApi.super.getAccountInfo();
    }

    @Override
    public Single<HttpResponse<Map<String, InlineResponseMap200>>> getAccountLocales() {
        // TODO: Implement me
        return AccountApi.super.getAccountLocales();
    }

    @Override
    public Single<HttpResponse<InlineResponse200>> getAccountTfaSetup() {
        // TODO: Implement me
        return AccountApi.super.getAccountTfaSetup();
    }

    @Override
    public Single<HttpResponse<Object>> getCountries(@Nullable String fetchBy) {
        // TODO: Implement me
        return AccountApi.super.getCountries(fetchBy);
    }

    @Override
    public Single<HttpResponse<List<String>>> getTimezones() {
        // TODO: Implement me
        return AccountApi.super.getTimezones();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> logoutAccountOauth(String name) {
        // TODO: Implement me
        return AccountApi.super.logoutAccountOauth(name);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountApiKey() {
        // TODO: Implement me
        return AccountApi.super.updateAccountApiKey();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountFeatures(@NotNull Integer disableReset, @NotNull Integer disableReinstall) {
        // TODO: Implement me
        return AccountApi.super.updateAccountFeatures(disableReset, disableReinstall);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountFeatures(@NotNull @Valid AccountFeatures body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountFeatures(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountInfo(@NotNull String name, @NotNull String company, @NotNull String address, @NotNull String address2, @NotNull String city, @NotNull String state, @NotNull String zip, @NotNull String country, @NotNull String phone, @NotNull String locale, @NotNull String emailInvoices, @NotNull String emailAbuse, @NotNull Boolean disableReset, @NotNull Boolean disableReinstall, @NotNull Boolean disableServerNotifications, @NotNull Boolean disableEmailNotifications, @NotNull String gstin) {
        // TODO: Implement me
        return AccountApi.super.updateAccountInfo(name, company, address, address2, city, state, zip, country, phone, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountInfo(@NotNull @Valid AccountInfoPost body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountInfo(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountIpLimits(@NotNull String start, @NotNull String end) {
        // TODO: Implement me
        return AccountApi.super.updateAccountIpLimits(start, end);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountIpLimits(@NotNull @Valid IpLimitRange body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountIpLimits(body);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAccountPassword(@NotNull String password) {
        // TODO: Implement me
        return AccountApi.super.updateAccountPassword(password);
    }

    @Override
    public Single<HttpResponse<TextResponse>> updateAccountPassword(@NotNull @Valid PasswordRequest body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountPassword(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountSshKey(@NotNull String sshKey) {
        // TODO: Implement me
        return AccountApi.super.updateAccountSshKey(sshKey);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountSshKey(@NotNull @Valid AccountSshKey body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountSshKey(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountTfa(@NotNull String _2faGoogleCode) {
        // TODO: Implement me
        return AccountApi.super.updateAccountTfa(_2faGoogleCode);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateAccountTfa(@NotNull @Valid Account2faBody1 body) {
        // TODO: Implement me
        return AccountApi.super.updateAccountTfa(body);
    }
}
