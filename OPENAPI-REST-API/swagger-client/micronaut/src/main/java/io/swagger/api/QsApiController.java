package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.IdBackupsBody;

import io.swagger.model.InlineResponse20011;

import io.swagger.model.InlineResponse20012;

import io.swagger.model.InlineResponse401;

import io.swagger.model.QsOrderRequest;

import io.swagger.model.QueueResponse;

import io.swagger.model.Quickserver;

import io.swagger.model.QuickserverOrder;

import io.swagger.model.QuickserverRow;

import io.swagger.model.RestoreRequest;

import io.swagger.model.ReverseDnsEntries;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.SuccessTextResponse;

import io.swagger.model.TextResponse;

import io.swagger.model.TimezoneUpdate;

import io.swagger.model.VpsBackupRows;

import io.swagger.model.VpsTemplatesList;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.HttpResponse;
import io.reactivex.rxjava3.core.Single;

import javax.annotation.Nullable;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@Controller
public class QsApiController implements QsApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addQs(@NotNull @Valid QsOrderRequest body) {
        // TODO: Implement me
        return QsApi.super.addQs(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteQsBackup(Integer id, @NotNull String file, @Nullable String all) {
        // TODO: Implement me
        return QsApi.super.deleteQsBackup(id, file, all);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsBlockSmtp(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsBlockSmtp(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsDisableCd(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsDisableCd(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsDisableQuota(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsDisableQuota(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsEjectCd(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsEjectCd(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsEnableQuota(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsEnableQuota(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsRestart(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsRestart(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsStart(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsStart(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> doQsStop(Integer id) {
        // TODO: Implement me
        return QsApi.super.doQsStop(id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20012>> downloadQsBackup(@NotNull @Valid IdBackupsBody body, Integer id, @Nullable String all) {
        // TODO: Implement me
        return QsApi.super.downloadQsBackup(body, id, all);
    }

    @Override
    public Single<HttpResponse<InlineResponse20012>> downloadQsBackup(@NotNull String file, Integer id, @Nullable String all) {
        // TODO: Implement me
        return QsApi.super.downloadQsBackup(file, id, all);
    }

    @Override
    public Single<HttpResponse<QuickserverOrder>> getNewQs() {
        // TODO: Implement me
        return QsApi.super.getNewQs();
    }

    @Override
    public Single<HttpResponse<QueueResponse>> getQsBackup(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsBackup(id);
    }

    @Override
    public Single<HttpResponse<VpsBackupRows>> getQsBackups(Integer id, @Nullable String all) {
        // TODO: Implement me
        return QsApi.super.getQsBackups(id, all);
    }

    @Override
    public Single<HttpResponse<Void>> getQsChangeHostname(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsChangeHostname(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsChangeRootPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsChangeRootPassword(id);
    }

    @Override
    public Single<HttpResponse<List<String>>> getQsChangeTimezone(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsChangeTimezone(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsChangeWebuzoPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsChangeWebuzoPassword(id);
    }

    @Override
    public Single<HttpResponse<Quickserver>> getQsInfo(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsInfo(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsInsertCd(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsInsertCd(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getQsInvoices(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<QuickserverRow>>> getQsList() {
        // TODO: Implement me
        return QsApi.super.getQsList();
    }

    @Override
    public Single<HttpResponse<VpsTemplatesList>> getQsReinstallOs(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsReinstallOs(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsResetPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsResetPassword(id);
    }

    @Override
    public Single<HttpResponse<ReverseDnsEntries>> getQsReverseDns(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsReverseDns(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsSetupVnc(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsSetupVnc(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsTrafficUsage(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsTrafficUsage(id);
    }

    @Override
    public Single<HttpResponse<Void>> getQsViewDesktop(Integer id) {
        // TODO: Implement me
        return QsApi.super.getQsViewDesktop(id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> getQsWelcomeEmail(String id) {
        // TODO: Implement me
        return QsApi.super.getQsWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsChangeHostname(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsChangeHostname(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsChangeRootPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsChangeRootPassword(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsChangeTimezone(@NotNull String timezone, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsChangeTimezone(timezone, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsChangeTimezone(@NotNull @Valid TimezoneUpdate body, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsChangeTimezone(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsChangeWebuzoPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsChangeWebuzoPassword(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsInsertCd(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsInsertCd(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsReinstallOs(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsReinstallOs(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsResetPassword(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsResetPassword(id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postQsReverseDns(@NotNull @Valid ReverseDnsEntries body, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsReverseDns(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postQsReverseDns(@NotNull Map<String, Object> ips, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsReverseDns(ips, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQsSetupVnc(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsSetupVnc(id);
    }

    @Override
    public Single<HttpResponse<Void>> postQsTrafficUsage(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsTrafficUsage(id);
    }

    @Override
    public Single<HttpResponse<Void>> postQsViewDesktop(Integer id) {
        // TODO: Implement me
        return QsApi.super.postQsViewDesktop(id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQuickServerRestore(@NotNull @Valid RestoreRequest body, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQuickServerRestore(body, id);
    }

    @Override
    public Single<HttpResponse<QueueResponse>> postQuickServerRestore(@NotNull String backup, @NotNull String password, Integer id) {
        // TODO: Implement me
        return QsApi.super.postQuickServerRestore(backup, password, id);
    }

    @Override
    public Single<HttpResponse<Void>> putQs(@NotNull @Valid QsOrderRequest body) {
        // TODO: Implement me
        return QsApi.super.putQs(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse20011>> quickserversCancel(Integer id) {
        // TODO: Implement me
        return QsApi.super.quickserversCancel(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateQsInfo(String id) {
        // TODO: Implement me
        return QsApi.super.updateQsInfo(id);
    }
}
