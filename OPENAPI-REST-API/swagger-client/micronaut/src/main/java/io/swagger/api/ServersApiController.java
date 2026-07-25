package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;

import io.swagger.model.InlineResponse20021;

import io.swagger.model.InlineResponse20022;

import io.swagger.model.InlineResponse20029;

import io.swagger.model.InlineResponse401;

import io.swagger.model.OrderBuyNowServerBody;

import io.swagger.model.ReverseDnsEntries;

import io.swagger.model.Server;

import io.swagger.model.ServerBulkIpmiPowerResponse;

import io.swagger.model.ServerIpmiLiveInfo;

import io.swagger.model.ServerIpmiLiveRequest;

import io.swagger.model.ServerIpmiPowerRequest;

import io.swagger.model.ServerOrder;

import io.swagger.model.ServerOrderPostRequest;

import io.swagger.model.ServerRow;

import io.swagger.model.ServersBuyNowError;

import io.swagger.model.ServersBuyNowResponse;

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
public class ServersApiController implements ServersApi {

    @Override
    public Single<HttpResponse<InlineResponse20021>> addServer(@NotNull @Valid ServerOrderPostRequest body) {
        // TODO: Implement me
        return ServersApi.super.addServer(body);
    }

    @Override
    public Single<HttpResponse<InlineResponse20029>> buyItNowServerOrder() {
        // TODO: Implement me
        return ServersApi.super.buyItNowServerOrder();
    }

    @Override
    public Single<HttpResponse<ServerOrder>> getNewServer() {
        // TODO: Implement me
        return ServersApi.super.getNewServer();
    }

    @Override
    public Single<HttpResponse<Server>> getServerInfo(Integer id) {
        // TODO: Implement me
        return ServersApi.super.getServerInfo(id);
    }

    @Override
    public Single<HttpResponse<ChargeInvoiceRows>> getServerInvoices(Integer id) {
        // TODO: Implement me
        return ServersApi.super.getServerInvoices(id);
    }

    @Override
    public Single<HttpResponse<List<ServerRow>>> getServerList() {
        // TODO: Implement me
        return ServersApi.super.getServerList();
    }

    @Override
    public Single<HttpResponse<ReverseDnsEntries>> getServerReverseDns(Integer id) {
        // TODO: Implement me
        return ServersApi.super.getServerReverseDns(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> getServersWelcomeEmail(Integer id) {
        // TODO: Implement me
        return ServersApi.super.getServersWelcomeEmail(id);
    }

    @Override
    public Single<HttpResponse<ServersBuyNowResponse>> placeBuyNowServer(@Nullable @Valid OrderBuyNowServerBody body) {
        // TODO: Implement me
        return ServersApi.super.placeBuyNowServer(body);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postServerReverseDns(@NotNull @Valid ReverseDnsEntries body, Integer id) {
        // TODO: Implement me
        return ServersApi.super.postServerReverseDns(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> postServerReverseDns(@NotNull Map<String, Object> ips, Integer id) {
        // TODO: Implement me
        return ServersApi.super.postServerReverseDns(ips, id);
    }

    @Override
    public Single<HttpResponse<ServerBulkIpmiPowerResponse>> serverBulkIpmiPowerGet(@NotNull String ids) {
        // TODO: Implement me
        return ServersApi.super.serverBulkIpmiPowerGet(ids);
    }

    @Override
    public Single<HttpResponse<ServerIpmiLiveInfo>> serverIpmiLiveGet(Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiLiveGet(id);
    }

    @Override
    public Single<HttpResponse<ServerIpmiLiveInfo>> serverIpmiLivePost(@NotNull Integer asset, @NotNull String ip, Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiLivePost(asset, ip, id);
    }

    @Override
    public Single<HttpResponse<ServerIpmiLiveInfo>> serverIpmiLivePost(@NotNull @Valid ServerIpmiLiveRequest body, Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiLivePost(body, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> serverIpmiPowerGet(Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiPowerGet(id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> serverIpmiPowerPost(@NotNull Integer asset, @NotNull String action, Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiPowerPost(asset, action, id);
    }

    @Override
    public Single<HttpResponse<TextResponse>> serverIpmiPowerPost(@NotNull @Valid ServerIpmiPowerRequest body, Integer id) {
        // TODO: Implement me
        return ServersApi.super.serverIpmiPowerPost(body, id);
    }

    @Override
    public Single<HttpResponse<InlineResponse20022>> serversCancel(Integer id) {
        // TODO: Implement me
        return ServersApi.super.serversCancel(id);
    }

    @Override
    public Single<HttpResponse<SuccessTextResponse>> updateServerInfo(String id) {
        // TODO: Implement me
        return ServersApi.super.updateServerInfo(id);
    }
}
