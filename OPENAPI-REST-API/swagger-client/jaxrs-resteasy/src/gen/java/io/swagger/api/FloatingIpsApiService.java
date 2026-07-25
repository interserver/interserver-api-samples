package io.swagger.api;

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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface FloatingIpsApiService {
      Response addFloatingIp(FloatingIpOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response floatingIpsCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getFloatingIpInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getFloatingIpInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getFloatingIpsList(SecurityContext securityContext) throws NotFoundException;
      Response getFloatingIpsWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getNewFloatingIp(SecurityContext securityContext) throws NotFoundException;
      Response postFloatingIpsChangeIp(MultipartFormDataInput input,String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postFloatingIpsChangeIp(MultipartFormDataInput input,IpObject body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response putFloatingIps(FloatingIpOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response updateFloatingIpInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
