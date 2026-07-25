package io.swagger.api;

import io.swagger.model.Backup;

import io.swagger.model.BackupLoginResponse;

import io.swagger.model.BackupOrderPostResponse;

import io.swagger.model.BackupOrderPutRequest;

import io.swagger.model.BackupOrderPutResponse;

import io.swagger.model.BackupRow;

import io.swagger.model.BackupsOrder;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.InlineResponse2002;

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
public class BackupsApiController implements BackupsApi {

    @Override
    public Single<HttpResponse<BackupOrderPostResponse>> addBackup(@NotNull Boolean validateOnly, @NotNull Integer serviceType, @NotNull String coupon) {
        // TODO: Implement me
        return BackupsApi.super.addBackup(validateOnly, serviceType, coupon);
    }

    @Override
    public Single<HttpResponse<BackupOrderPostResponse>> addBackup(@NotNull @Valid BackupOrderPutRequest body) {
        // TODO: Implement me
        return BackupsApi.super.addBackup(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse2002>> cancelBackup(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.cancelBackup(id);
    }

    @Override
    public Single<HttpResponse<Backup>> getBackupInfo(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.getBackupInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getBackupInvoices(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.getBackupInvoices(id);
    }

    @Override
    public Single<HttpResponse<BackupLoginResponse>> getBackupLogin(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.getBackupLogin(id);
    }

    @Override
    public Single<HttpResponse<List<BackupRow>>> getBackupsList() {
        // TODO: Implement me
        return BackupsApi.super.getBackupsList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getBackupsWelcomeEmail(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.getBackupsWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<BackupsOrder>> getNewBackup() {
        // TODO: Implement me
        return BackupsApi.super.getNewBackup();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateBackupInfo(Integer id) {
        // TODO: Implement me
        return BackupsApi.super.updateBackupInfo(id);
    }

    @Override
    public Single<HttpResponse<BackupOrderPutResponse>> validateBackupOrder(@NotNull Boolean validateOnly, @NotNull Integer serviceType, @NotNull String coupon) {
        // TODO: Implement me
        return BackupsApi.super.validateBackupOrder(validateOnly, serviceType, coupon);
    }

    @Override
    public Single<HttpResponse<BackupOrderPutResponse>> validateBackupOrder(@NotNull @Valid BackupOrderPutRequest body) {
        // TODO: Implement me
        return BackupsApi.super.validateBackupOrder(body);
    }
}
