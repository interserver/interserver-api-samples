package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.FloatingIpOrderRequest;
import io.swagger.model.InlineResponse2004;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface FloatingIpsApiService {
      public Response addFloatingIp(FloatingIpOrderRequest body, SecurityContext securityContext);
      public Response floatingIpsCancel(Integer id, SecurityContext securityContext);
      public Response getFloatingIpInfo(Integer id, SecurityContext securityContext);
      public Response getFloatingIpInvoices(Integer id, SecurityContext securityContext);
      public Response getFloatingIpsList(SecurityContext securityContext);
      public Response getFloatingIpsWelcomeEmail(Integer id, SecurityContext securityContext);
      public Response getNewFloatingIp(SecurityContext securityContext);
      public Response postFloatingIpsChangeIp(String ip, Integer id, SecurityContext securityContext);
      public Response postFloatingIpsChangeIp(IpObject body, Integer id, SecurityContext securityContext);
      public Response putFloatingIps(FloatingIpOrderRequest body, SecurityContext securityContext);
      public Response updateFloatingIpInfo(String id, SecurityContext securityContext);
}
