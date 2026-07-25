package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.FloatingIpOrderRequest;
import io.swagger.model.InlineResponse2004;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class FloatingIpsApiServiceImpl implements FloatingIpsApi {
      public Response addFloatingIp(FloatingIpOrderRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response floatingIpsCancel(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getFloatingIpInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getFloatingIpInvoices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getFloatingIpsList(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getFloatingIpsWelcomeEmail(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getNewFloatingIp(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postFloatingIpsChangeIp(MultipartFormDataInput input,String ip,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postFloatingIpsChangeIp(MultipartFormDataInput input,IpObject body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putFloatingIps(FloatingIpOrderRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateFloatingIpInfo(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
