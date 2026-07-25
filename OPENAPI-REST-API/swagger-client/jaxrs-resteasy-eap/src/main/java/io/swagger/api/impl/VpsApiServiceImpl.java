package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.HostnameObject;
import io.swagger.model.IdBackupsBody2;
import io.swagger.model.InlineResponse20012;
import io.swagger.model.InlineResponse20024;
import io.swagger.model.InlineResponse401;
import io.swagger.model.PasswordRequest;
import io.swagger.model.QueueResponse;
import io.swagger.model.RestoreRequest;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TemplateRequest;
import io.swagger.model.TextResponse;
import io.swagger.model.TimezoneUpdate;
import io.swagger.model.UrlRequest;
import io.swagger.model.Vps;
import io.swagger.model.VpsBackupRows;
import io.swagger.model.VpsOrder;
import io.swagger.model.VpsOrderPostRequest;
import io.swagger.model.VpsOrderPutRequest;
import io.swagger.model.VpsOrderPutResponse;
import io.swagger.model.VpsRow;
import io.swagger.model.VpsTemplatesList;
import io.swagger.model.VpsTrafficResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class VpsApiServiceImpl implements VpsApi {
      public Response addVps(VpsOrderPostRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response addVps(String osDistro,Integer slices,String vpsPlatform,String controlpanel,Integer period,Integer location,String osVersion,String hostname,String coupon,String rootpass,String comment,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteVpsBackup(Integer id,String file,String all,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsBlockSmtp(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsDisableCd(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsDisableQuota(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsEjectCd(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsEnableQuota(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsRestart(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsStart(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response doVpsStop(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response downloadVpsBackup(IdBackupsBody2 body,Integer id,String all,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response downloadVpsBackup(String file,Integer id,String all,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getNewVps(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsBackup(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsBackups(Integer id,String all,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsBuyHdSpace(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsBuyIp(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsChangeHostname(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsChangeRootPassword(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsChangeTimezone(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsInsertCd(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsInvoices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsList(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsReinstallOs(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsResetPassword(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsReverseDns(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsSetupVnc(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsSlices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsTrafficUsage(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsViewDesktop(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getVpsWelcomeEmail(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsBuyHdSpace(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsBuyIp(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeHostname(MultipartFormDataInput input,String hostname,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeHostname(MultipartFormDataInput input,HostnameObject body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeRootPassword(MultipartFormDataInput input,String password,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeRootPassword(MultipartFormDataInput input,PasswordRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeTimezone(MultipartFormDataInput input,String timezone,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeTimezone(MultipartFormDataInput input,TimezoneUpdate body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeWebuzoPassword(MultipartFormDataInput input,String password,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsChangeWebuzoPassword(MultipartFormDataInput input,PasswordRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsInsertCd(MultipartFormDataInput input,String url,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsInsertCd(MultipartFormDataInput input,UrlRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsReinstallOs(MultipartFormDataInput input,String template,String password,String localPassword,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsReinstallOs(MultipartFormDataInput input,TemplateRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsResetPassword(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsRestore(RestoreRequest body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsRestore(String backup,String password,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsSetupVnc(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsSlices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsTrafficUsage(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postVpsViewDesktop(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putVps(VpsOrderPutRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putVps(String osDistro,Integer slices,String vpsPlatform,String controlpanel,Integer period,Integer location,String osVersion,String hostname,String coupon,String rootpass,String comment,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putVpsBuyHdSpace(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateVpsInfo(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response vPSCancel(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
