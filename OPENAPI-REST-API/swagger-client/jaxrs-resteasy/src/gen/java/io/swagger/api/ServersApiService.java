package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

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

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface ServersApiService {
      Response addServer(ServerOrderPostRequest body,SecurityContext securityContext) throws NotFoundException;
      Response buyItNowServerOrder(SecurityContext securityContext) throws NotFoundException;
      Response getNewServer(SecurityContext securityContext) throws NotFoundException;
      Response getServerInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getServerInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getServerList(SecurityContext securityContext) throws NotFoundException;
      Response getServerReverseDns(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getServersWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response placeBuyNowServer(OrderBuyNowServerBody body,SecurityContext securityContext) throws NotFoundException;
      Response postServerReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postServerReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverBulkIpmiPowerGet(String ids,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiLiveGet(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiLivePost(MultipartFormDataInput input,Integer asset,String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiLivePost(MultipartFormDataInput input,ServerIpmiLiveRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiPowerGet(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiPowerPost(MultipartFormDataInput input,Integer asset,String action,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serverIpmiPowerPost(MultipartFormDataInput input,ServerIpmiPowerRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response serversCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateServerInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
