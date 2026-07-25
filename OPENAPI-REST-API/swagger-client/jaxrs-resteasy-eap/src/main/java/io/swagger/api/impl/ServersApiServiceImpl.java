package io.swagger.api.impl;

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

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class ServersApiServiceImpl implements ServersApi {
      public Response addServer(ServerOrderPostRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response buyItNowServerOrder(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getNewServer(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getServerInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getServerInvoices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getServerList(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getServerReverseDns(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getServersWelcomeEmail(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response placeBuyNowServer(OrderBuyNowServerBody body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postServerReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postServerReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverBulkIpmiPowerGet(String ids,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiLiveGet(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiLivePost(MultipartFormDataInput input,Integer asset,String ip,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiLivePost(MultipartFormDataInput input,ServerIpmiLiveRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiPowerGet(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiPowerPost(MultipartFormDataInput input,Integer asset,String action,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serverIpmiPowerPost(MultipartFormDataInput input,ServerIpmiPowerRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response serversCancel(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateServerInfo(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
