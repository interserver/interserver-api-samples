package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.IdBuyIpBody;
import io.swagger.model.IdMigrationBody;
import io.swagger.model.InlineResponse20025;
import io.swagger.model.InlineResponse20026;
import io.swagger.model.InlineResponse20027;
import io.swagger.model.InlineResponse20028;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;
import io.swagger.model.Website;
import io.swagger.model.WebsiteBackups;
import io.swagger.model.WebsiteLoginResponse;
import io.swagger.model.WebsiteOrderPostRequest;
import io.swagger.model.WebsiteOrderPutRequest;
import io.swagger.model.WebsiteRow;
import io.swagger.model.WebsitesOrder;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class WebsitesApiServiceImpl implements WebsitesApi {
      public Response addWebsite(WebsiteOrderPostRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getNewWebsite(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsiteBuyIp(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsiteInfo(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsiteInvoices(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsiteList(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsitesBackups(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsitesLogin(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getWebsitesWelcomeEmail(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response gettWebsiteReverseDns(Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsiteBuyIp(IdBuyIpBody body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsiteBuyIp(Map<String, String> ips,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsiteMigration(IdMigrationBody body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsiteMigration(String custPortal,String regEmail,String password,String ctrlPanel,String ftpUsername,String ftpPassword,String siteBusyMig,String splReqMig,String domainReg,String dataMig,String domainRegPortal,String domainRegEmail,String domainRegPassword,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsitesReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postWebsitesReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response putWebsites(WebsiteOrderPutRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateWebsiteInfo(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response webhostingCancel(String id,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
