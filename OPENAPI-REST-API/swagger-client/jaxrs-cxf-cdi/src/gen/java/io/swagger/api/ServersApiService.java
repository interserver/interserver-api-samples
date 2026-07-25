package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface ServersApiService {
      public Response addServer(ServerOrderPostRequest body, SecurityContext securityContext);
      public Response buyItNowServerOrder(SecurityContext securityContext);
      public Response getNewServer(SecurityContext securityContext);
      public Response getServerInfo(Integer id, SecurityContext securityContext);
      public Response getServerInvoices(Integer id, SecurityContext securityContext);
      public Response getServerList(SecurityContext securityContext);
      public Response getServerReverseDns(Integer id, SecurityContext securityContext);
      public Response getServersWelcomeEmail(Integer id, SecurityContext securityContext);
      public Response placeBuyNowServer(OrderBuyNowServerBody body, SecurityContext securityContext);
      public Response postServerReverseDns(ReverseDnsEntries body, Integer id, SecurityContext securityContext);
      public Response postServerReverseDns(Map<String, Object> ips, Integer id, SecurityContext securityContext);
      public Response serverBulkIpmiPowerGet(String ids, SecurityContext securityContext);
      public Response serverIpmiLiveGet(Integer id, SecurityContext securityContext);
      public Response serverIpmiLivePost(Integer asset, String ip, Integer id, SecurityContext securityContext);
      public Response serverIpmiLivePost(ServerIpmiLiveRequest body, Integer id, SecurityContext securityContext);
      public Response serverIpmiPowerGet(Integer id, SecurityContext securityContext);
      public Response serverIpmiPowerPost(Integer asset, String action, Integer id, SecurityContext securityContext);
      public Response serverIpmiPowerPost(ServerIpmiPowerRequest body, Integer id, SecurityContext securityContext);
      public Response serversCancel(Integer id, SecurityContext securityContext);
      public Response updateServerInfo(String id, SecurityContext securityContext);
}
