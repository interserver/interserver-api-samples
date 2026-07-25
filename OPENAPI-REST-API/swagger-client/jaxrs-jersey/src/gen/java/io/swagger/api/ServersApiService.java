package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class ServersApiService {
    public abstract Response addServer(ServerOrderPostRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response buyItNowServerOrder(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewServer(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getServerInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getServerInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getServerList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getServerReverseDns(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getServersWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response placeBuyNowServer(OrderBuyNowServerBody body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postServerReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postServerReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverBulkIpmiPowerGet( @NotNull String ids,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiLiveGet(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiLivePost(Integer asset,String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiLivePost(ServerIpmiLiveRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiPowerGet(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiPowerPost(Integer asset,String action,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serverIpmiPowerPost(ServerIpmiPowerRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response serversCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateServerInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
