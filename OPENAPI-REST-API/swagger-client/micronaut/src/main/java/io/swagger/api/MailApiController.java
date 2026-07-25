package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.DenyRuleNew;

import io.swagger.model.DenyRuleRecord;

import io.swagger.model.EmailAddress;

import io.swagger.model.EmailAddressName;

import io.swagger.model.EndDate;

import io.swagger.model.GenericResponse;

import io.swagger.model.IdAlertsBody;

import io.swagger.model.InlineResponse2009;

import io.swagger.model.InlineResponse401;

import io.swagger.model.MailAlertRequest;

import io.swagger.model.MailAlertUpdateRequest;

import io.swagger.model.MailAlertsResponse;

import io.swagger.model.MailAttachment;

import io.swagger.model.MailBlocks;

import io.swagger.model.MailDelistRequest;

import io.swagger.model.MailDelistResponse;

import io.swagger.model.MailDeliverabilityResponse;

import io.swagger.model.MailLog;

import io.swagger.model.MailOrder;

import io.swagger.model.MailOrderRequest;

import io.swagger.model.MailRow;

import io.swagger.model.MailSchema;

import io.swagger.model.MailStatsType;

import io.swagger.model.SendMail;

import io.swagger.model.SendMailAdv;

import io.swagger.model.ServiceOrderPostResponse;

import io.swagger.model.StartDate;

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
public class MailApiController implements MailApi {

    @Override
    public Single<HttpResponse<ServiceOrderPostResponse>> addMail(@NotNull @Valid MailOrderRequest body) {
        // TODO: Implement me
        return MailApi.super.addMail(body);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> addRule(@NotNull @Valid DenyRuleNew body, Integer id) {
        // TODO: Implement me
        return MailApi.super.addRule(body, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> addRule(@NotNull String user, @NotNull String type, @NotNull String data, Integer id) {
        // TODO: Implement me
        return MailApi.super.addRule(user, type, data, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> createMailAlert(@NotNull @Valid MailAlertRequest body, Integer id) {
        // TODO: Implement me
        return MailApi.super.createMailAlert(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> createMailAlert(@NotNull String type, @NotNull String value, @NotNull String to, @NotNull String enabled, Integer id) {
        // TODO: Implement me
        return MailApi.super.createMailAlert(type, value, to, enabled, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteMailAlert(@NotNull @Valid IdAlertsBody body, Integer id) {
        // TODO: Implement me
        return MailApi.super.deleteMailAlert(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> deleteMailAlert(@NotNull Integer alertId, Integer id) {
        // TODO: Implement me
        return MailApi.super.deleteMailAlert(alertId, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> deleteRule(Integer id, String rule) {
        // TODO: Implement me
        return MailApi.super.deleteRule(id, rule);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> delistBlock(@NotNull String email, Integer id) {
        // TODO: Implement me
        return MailApi.super.delistBlock(email, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> delistBlock(@NotNull @Valid EmailAddress body, Integer id) {
        // TODO: Implement me
        return MailApi.super.delistBlock(body, id);
    }

    @Override
    public Single<HttpResponse<MailAlertsResponse>> getMailAlerts(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailAlerts(id);
    }

    @Override
    public Single<HttpResponse<MailBlocks>> getMailBlocks(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailBlocks(id);
    }

    @Override
    public Single<HttpResponse<MailDelistResponse>> getMailDelist(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailDelist(id);
    }

    @Override
    public Single<HttpResponse<MailDeliverabilityResponse>> getMailDeliverability(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailDeliverability(id);
    }

    @Override
    public Single<HttpResponse<MailSchema>> getMailInfo(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getMailInvoices(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<MailRow>>> getMailList() {
        // TODO: Implement me
        return MailApi.super.getMailList();
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getMailWelcomeEmail(Integer id) {
        // TODO: Implement me
        return MailApi.super.getMailWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<MailOrder>> getNewMail() {
        // TODO: Implement me
        return MailApi.super.getNewMail();
    }

    @Override
    public Single<HttpResponse<List<DenyRuleRecord>>> getRules(Integer id) {
        // TODO: Implement me
        return MailApi.super.getRules(id);
    }

    @Override
    public Single<HttpResponse<MailStatsType>> getStats(Integer id, @Nullable String time) {
        // TODO: Implement me
        return MailApi.super.getStats(id, time);
    }

    @Override
    public Single<HttpResponse<InlineResponse2009>> mailCancel(Integer id) {
        // TODO: Implement me
        return MailApi.super.mailCancel(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postMailDelist(@NotNull @Valid MailDelistRequest body, Integer id) {
        // TODO: Implement me
        return MailApi.super.postMailDelist(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> postMailDelist(@NotNull String unblock, Integer id) {
        // TODO: Implement me
        return MailApi.super.postMailDelist(unblock, id);
    }

    @Override
    public Single<HttpResponse<Void>> putMail(@NotNull @Valid MailOrderRequest body) {
        // TODO: Implement me
        return MailApi.super.putMail(body);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> resetMailPassword(Integer id) {
        // TODO: Implement me
        return MailApi.super.resetMailPassword(id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> sendAdvMail(@NotNull @Valid SendMailAdv body, Integer id) {
        // TODO: Implement me
        return MailApi.super.sendAdvMail(body, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> sendAdvMail(@NotNull String subject, @NotNull String body, @NotNull @Valid EmailAddressName from, @NotNull @Valid List<EmailAddressName> to, @NotNull @Valid List<EmailAddressName> replyto, @NotNull @Valid List<EmailAddressName> cc, @NotNull @Valid List<EmailAddressName> bcc, @NotNull @Valid List<MailAttachment> attachments, @NotNull Long id2, Integer id) {
        // TODO: Implement me
        return MailApi.super.sendAdvMail(subject, body, from, to, replyto, cc, bcc, attachments, id2, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> sendMail(@NotNull @Valid SendMail body, Integer id) {
        // TODO: Implement me
        return MailApi.super.sendMail(body, id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> sendMail(@NotNull String to, @NotNull String from, @NotNull String subject, @NotNull String body, Integer id) {
        // TODO: Implement me
        return MailApi.super.sendMail(to, from, subject, body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateMailAlert(@NotNull @Valid MailAlertUpdateRequest body, Integer id) {
        // TODO: Implement me
        return MailApi.super.updateMailAlert(body, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateMailAlert(@NotNull Integer alertId, @NotNull String type, @NotNull String value, @NotNull String to, @NotNull String enabled, Integer id) {
        // TODO: Implement me
        return MailApi.super.updateMailAlert(alertId, type, value, to, enabled, id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateMailInfo(String id) {
        // TODO: Implement me
        return MailApi.super.updateMailInfo(id);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> updateRule(@NotNull @Valid DenyRuleNew body, Integer id, String rule) {
        // TODO: Implement me
        return MailApi.super.updateRule(body, id, rule);
    }

    @Override
    public Single<HttpResponse<GenericResponse>> updateRule(@NotNull String user, @NotNull String type, @NotNull String data, Integer id, String rule) {
        // TODO: Implement me
        return MailApi.super.updateRule(user, type, data, id, rule);
    }

    @Override
    public Single<HttpResponse<MailLog>> viewMailLog(Integer id, @Nullable Long id, @Nullable String origin, @Nullable String mx, @Nullable String from, @Nullable String to, @Nullable String subject, @Nullable @Size(min=18,max=19) String mailid, @Nullable String messageId, @Nullable String replyto, @Nullable String headerfrom, @Nullable Integer delivered, @Nullable @Min(0)Integer skip, @Nullable @Min(1) @Max(10000) Integer limit, @Nullable @Valid StartDate startDate, @Nullable @Valid EndDate endDate, @Nullable String sort, @Nullable String dir, @Nullable String groupby) {
        // TODO: Implement me
        return MailApi.super.viewMailLog(id, id, origin, mx, from, to, subject, mailid, messageId, replyto, headerfrom, delivered, skip, limit, startDate, endDate, sort, dir, groupby);
    }
}
