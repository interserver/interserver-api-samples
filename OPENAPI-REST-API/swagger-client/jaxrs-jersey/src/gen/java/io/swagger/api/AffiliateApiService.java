package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.AffiliateBannerRow;
import io.swagger.model.AffiliateDockSetup;
import io.swagger.model.AffiliatePaymentSetup;
import io.swagger.model.AffiliateTrafficRow;
import io.swagger.model.InlineResponse2001;
import io.swagger.model.InlineResponse401;
import io.swagger.model.MonthlyCounts;
import io.swagger.model.StatusMonthlyBreakdown;
import io.swagger.model.TextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class AffiliateApiService {
    public abstract Response getAffiliateBanners(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateDownload( String st, String ex, Integer year,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateRichReport(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateSalesGraph( Integer days,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateSignups( String st,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateTrafficGraph( Integer days,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getAffiliateWebTraffic(SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAffiliateDockSetup(String affiliateDockTitle,String affiliateDockDescription,String referrerCoupon,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAffiliateDockSetup(AffiliateDockSetup body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAffiliatePaymentSetup(String affiliatePaypal,String affiliatePaymentMethod,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateAffiliatePaymentSetup(AffiliatePaymentSetup body,SecurityContext securityContext) throws NotFoundException;
}
