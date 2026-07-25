package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

import io.swagger.model.AffiliateBannerRow;
import io.swagger.model.AffiliateDockSetup;
import io.swagger.model.AffiliatePaymentSetup;
import io.swagger.model.AffiliateTrafficRow;
import io.swagger.model.InlineResponse2001;
import io.swagger.model.InlineResponse401;
import io.swagger.model.MonthlyCounts;
import io.swagger.model.StatusMonthlyBreakdown;
import io.swagger.model.TextResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class AffiliateApiServiceImpl implements AffiliateApi {
      public Response getAffiliateBanners(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateDownload(String st,String ex,Integer year,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateRichReport(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateSalesGraph(Integer days,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateSignups(String st,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateTrafficGraph(Integer days,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAffiliateWebTraffic(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAffiliateDockSetup(MultipartFormDataInput input,String affiliateDockTitle,String affiliateDockDescription,String referrerCoupon,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAffiliateDockSetup(MultipartFormDataInput input,AffiliateDockSetup body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAffiliatePaymentSetup(MultipartFormDataInput input,String affiliatePaypal,String affiliatePaymentMethod,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAffiliatePaymentSetup(MultipartFormDataInput input,AffiliatePaymentSetup body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
