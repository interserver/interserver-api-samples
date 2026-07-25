package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface AffiliateApiService {
      public Response getAffiliateBanners(SecurityContext securityContext);
      public Response getAffiliateDownload(String st, String ex, Integer year, SecurityContext securityContext);
      public Response getAffiliateRichReport(SecurityContext securityContext);
      public Response getAffiliateSalesGraph(Integer days, SecurityContext securityContext);
      public Response getAffiliateSignups(String st, SecurityContext securityContext);
      public Response getAffiliateTrafficGraph(Integer days, SecurityContext securityContext);
      public Response getAffiliateWebTraffic(SecurityContext securityContext);
      public Response updateAffiliateDockSetup(String affiliateDockTitle, String affiliateDockDescription, String referrerCoupon, SecurityContext securityContext);
      public Response updateAffiliateDockSetup(AffiliateDockSetup body, SecurityContext securityContext);
      public Response updateAffiliatePaymentSetup(String affiliatePaypal, String affiliatePaymentMethod, SecurityContext securityContext);
      public Response updateAffiliatePaymentSetup(AffiliatePaymentSetup body, SecurityContext securityContext);
}
