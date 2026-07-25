package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

import io.swagger.model.Backup;
import io.swagger.model.BackupLoginResponse;
import io.swagger.model.BackupOrderPostResponse;
import io.swagger.model.BackupOrderPutRequest;
import io.swagger.model.BackupOrderPutResponse;
import io.swagger.model.BackupRow;
import io.swagger.model.BackupsOrder;
import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2002;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class BackupsApiServiceImpl implements BackupsApi {
      public Response addBackup(MultipartFormDataInput input,Boolean validateOnly,Integer serviceType,String coupon,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response addBackup(MultipartFormDataInput input,BackupOrderPutRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response cancelBackup(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBackupInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBackupInvoices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBackupLogin(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBackupsList(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getBackupsWelcomeEmail(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getNewBackup(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateBackupInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response validateBackupOrder(MultipartFormDataInput input,Boolean validateOnly,Integer serviceType,String coupon,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response validateBackupOrder(MultipartFormDataInput input,BackupOrderPutRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
