package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.HostnameObject;

import io.swagger.model.IdBackupsBody2;

import io.swagger.model.InlineResponse20012;

import io.swagger.model.InlineResponse20024;

import io.swagger.model.InlineResponse401;

import io.swagger.model.PasswordRequest;

import io.swagger.model.QueueResponse;

import io.swagger.model.RestoreRequest;

import io.swagger.model.ReverseDnsEntries;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.SuccessTextResponse;

import io.swagger.model.TemplateRequest;

import io.swagger.model.TextResponse;

import io.swagger.model.TimezoneUpdate;

import io.swagger.model.UrlRequest;

import io.swagger.model.Vps;

import io.swagger.model.VpsBackupRows;

import io.swagger.model.VpsOrder;

import io.swagger.model.VpsOrderPostRequest;

import io.swagger.model.VpsOrderPutRequest;

import io.swagger.model.VpsOrderPutResponse;

import io.swagger.model.VpsRow;

import io.swagger.model.VpsTemplatesList;

import io.swagger.model.VpsTrafficResponse;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class VpsApiController implements VpsApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addVps(@Nullable @Valid VpsOrderPostRequest body) {
        // TODO: Implement me
        return VpsApi.super.addVps(body);
    }

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addVps(@Nullable String osDistro, @Nullable @Min(1) @Max(32) Integer slices, @Nullable String vpsPlatform, @Nullable String controlpanel, @Nullable @Min(1) @Max(12) Integer period, @Nullable @Min(1) @Max(3) Integer location, @Nullable String osVersion, @Nullable String hostname, @Nullable String coupon, @Nullable String rootpass, @Nullable String comment) {
        // TODO: Implement me
        return VpsApi.super.addVps(osDistro, slices, vpsPlatform, controlpanel, period, location, osVersion, hostname, coupon, rootpass, comment);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteVpsBackup(Integer id, @NotNull String file, @Nullable String all) {
        // TODO: Implement me
        return VpsApi.super.deleteVpsBackup(id, file, all);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsBlockSmtp(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsBlockSmtp(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsDisableCd(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsDisableCd(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsDisableQuota(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsDisableQuota(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsEjectCd(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsEjectCd(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsEnableQuota(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsEnableQuota(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsRestart(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsRestart(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsStart(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsStart(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doVpsStop(Integer id) {
        // TODO: Implement me
        return VpsApi.super.doVpsStop(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20012>> downloadVpsBackup(@NotNull @Valid IdBackupsBody2 body, Integer id, @Nullable String all) {
        // TODO: Implement me
        return VpsApi.super.downloadVpsBackup(body, id, all);
    }

    @Override
    public Single<HttpResponse<InlineResponse20012>> downloadVpsBackup(@NotNull String file, Integer id, @Nullable String all) {
        // TODO: Implement me
        return VpsApi.super.downloadVpsBackup(file, id, all);
    }

    @Override
    public Single<HttpResponse<VpsOrder>> getNewVps() {
        // TODO: Implement me
        return VpsApi.super.getNewVps();
    }

    @Override
    public Single<HttpResponse<QueueResponse>> getVpsBackup(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsBackup(id);
    }

    @Override
    public Single<HttpResponse<VpsBackupRows>> getVpsBackups(Integer id, @Nullable String all) {
        // TODO: Implement me
        return VpsApi.super.getVpsBackups(id, all);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsBuyHdSpace(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsBuyHdSpace(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsBuyIp(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsBuyIp(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsChangeHostname(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsChangeHostname(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsChangeRootPassword(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsChangeRootPassword(id);
    }

    @Override
    public Single<HttpResponse<List<String>>> getVpsChangeTimezone(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsChangeTimezone(id);
    }

    @Override
    public Single<HttpResponse<Vps>> getVpsInfo(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsInfo(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsInsertCd(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsInsertCd(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getVpsInvoices(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<VpsRow>>> getVpsList() {
        // TODO: Implement me
        return VpsApi.super.getVpsList();
    }

    @Override
    public Single<HttpResponse<VpsTemplatesList>> getVpsReinstallOs(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsReinstallOs(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsResetPassword(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsResetPassword(id);
    }

    @Override
    public Single<HttpResponse<ReverseDnsEntries>> getVpsReverseDns(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsReverseDns(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsSetupVnc(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsSetupVnc(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsSlices(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsSlices(id);
    }

    @Override
    public Single<HttpResponse<VpsTrafficResponse>> getVpsTrafficUsage(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsTrafficUsage(id);
    }

    @Override
    public Single<HttpResponse<Void>> getVpsViewDesktop(Integer id) {
        // TODO: Implement me
        return VpsApi.super.getVpsViewDesktop(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getVpsWelcomeEmail(String id) {
        // TODO: Implement me
        return VpsApi.super.getVpsWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<Void>> postVpsBuyHdSpace(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsBuyHdSpace(id);
    }

    @Override
    public Single<HttpResponse<Void>> postVpsBuyIp(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsBuyIp(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeHostname(@NotNull String hostname, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeHostname(hostname, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeHostname(@NotNull @Valid HostnameObject body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeHostname(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeRootPassword(@NotNull String password, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeRootPassword(password, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeRootPassword(@NotNull @Valid PasswordRequest body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeRootPassword(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeTimezone(@NotNull String timezone, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeTimezone(timezone, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeTimezone(@NotNull @Valid TimezoneUpdate body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeTimezone(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeWebuzoPassword(@NotNull String password, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeWebuzoPassword(password, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsChangeWebuzoPassword(@NotNull @Valid PasswordRequest body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsChangeWebuzoPassword(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsInsertCd(@NotNull String url, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsInsertCd(url, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsInsertCd(@NotNull @Valid UrlRequest body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsInsertCd(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsReinstallOs(@NotNull String template, @NotNull @Valid @Size(min=6) String password, @NotNull @Valid String localPassword, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsReinstallOs(template, password, localPassword, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsReinstallOs(@NotNull @Valid TemplateRequest body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsReinstallOs(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsResetPassword(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsResetPassword(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsRestore(@NotNull @Valid RestoreRequest body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsRestore(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsRestore(@NotNull String backup, @NotNull String password, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsRestore(backup, password, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postVpsReverseDns(@NotNull @Valid ReverseDnsEntries body, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsReverseDns(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postVpsReverseDns(@NotNull Map<String, Object> ips, Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsReverseDns(ips, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postVpsSetupVnc(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsSetupVnc(id);
    }

    @Override
    public Single<HttpResponse<Void>> postVpsSlices(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsSlices(id);
    }

    @Override
    public Single<HttpResponse<Void>> postVpsTrafficUsage(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsTrafficUsage(id);
    }

    @Override
    public Single<HttpResponse<Void>> postVpsViewDesktop(Integer id) {
        // TODO: Implement me
        return VpsApi.super.postVpsViewDesktop(id);
    }

    @Override
    public Single<HttpResponse<VpsOrderPutResponse>> putVps(@Nullable @Valid VpsOrderPutRequest body) {
        // TODO: Implement me
        return VpsApi.super.putVps(body);
    }

    @Override
    public Single<HttpResponse<VpsOrderPutResponse>> putVps(@Nullable String osDistro, @Nullable @Min(1) @Max(32) Integer slices, @Nullable String vpsPlatform, @Nullable String controlpanel, @Nullable @Min(1) @Max(12) Integer period, @Nullable @Min(1) @Max(3) Integer location, @Nullable String osVersion, @Nullable String hostname, @Nullable String coupon, @Nullable String rootpass, @Nullable String comment) {
        // TODO: Implement me
        return VpsApi.super.putVps(osDistro, slices, vpsPlatform, controlpanel, period, location, osVersion, hostname, coupon, rootpass, comment);
    }

    @Override
    public Single<HttpResponse<Void>> putVpsBuyHdSpace(Integer id) {
        // TODO: Implement me
        return VpsApi.super.putVpsBuyHdSpace(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateVpsInfo(String id) {
        // TODO: Implement me
        return VpsApi.super.updateVpsInfo(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20024>> vPSCancel(Integer id) {
        // TODO: Implement me
        return VpsApi.super.vPSCancel(id);
    }
}
