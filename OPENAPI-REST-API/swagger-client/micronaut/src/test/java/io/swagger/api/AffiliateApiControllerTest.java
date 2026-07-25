package io.swagger.api;

import io.swagger.model.AffiliateBannerRow;
import io.swagger.model.AffiliateDockSetup;
import io.swagger.model.AffiliatePaymentSetup;
import io.swagger.model.AffiliateTrafficRow;
import io.swagger.model.InlineResponse2001;
import io.swagger.model.InlineResponse401;
import io.swagger.model.MonthlyCounts;
import io.swagger.model.StatusMonthlyBreakdown;
import io.swagger.model.TextResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class AffiliateApiControllerTest {

    @Inject
    private AffiliateApi api;

    @Test
    void getAffiliateBannersTest() {
        try {
            //TODO: api.getAffiliateBanners().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateDownloadTest() {
        String st = null;
        String ex = null;
        Integer year = null;
        try {
            //TODO: api.getAffiliateDownload(st, ex, year).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateRichReportTest() {
        try {
            //TODO: api.getAffiliateRichReport().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateSalesGraphTest() {
        Integer days = null;
        try {
            //TODO: api.getAffiliateSalesGraph(days).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateSignupsTest() {
        String st = null;
        try {
            //TODO: api.getAffiliateSignups(st).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateTrafficGraphTest() {
        Integer days = null;
        try {
            //TODO: api.getAffiliateTrafficGraph(days).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getAffiliateWebTrafficTest() {
        try {
            //TODO: api.getAffiliateWebTraffic().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateAffiliateDockSetupFormTest() {
        String affiliateDockTitle = null;
        String affiliateDockDescription = null;
        String referrerCoupon = null;
        try {
            //TODO: api.updateAffiliateDockSetup(affiliateDockTitle, affiliateDockDescription, referrerCoupon).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateAffiliatePaymentSetupFormTest() {
        String affiliatePaypal = null;
        String affiliatePaymentMethod = null;
        try {
            //TODO: api.updateAffiliatePaymentSetup(affiliatePaypal, affiliatePaymentMethod).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
