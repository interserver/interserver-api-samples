package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.CreateFilter;
import io.swagger.model.CreateFirewallRule;
import io.swagger.model.CreateGeoFirewallRule;
import io.swagger.model.DeleteFirewallRule;
import io.swagger.model.DeleteGeoFirewallRule;
import io.swagger.model.InlineResponse20013;
import io.swagger.model.InlineResponse20014;
import io.swagger.model.InlineResponse20015;
import io.swagger.model.InlineResponse20016;
import io.swagger.model.InlineResponse20017;
import io.swagger.model.InlineResponse20018;
import io.swagger.model.InlineResponse20019;
import io.swagger.model.InlineResponse20020;
import io.swagger.model.InlineResponse201;
import io.swagger.model.InlineResponse2011;
import io.swagger.model.InlineResponse2012;
import io.swagger.model.InlineResponse400;
import io.swagger.model.InlineResponse4001;
import io.swagger.model.InlineResponse4002;
import io.swagger.model.InlineResponse4003;
import io.swagger.model.InlineResponse4004;
import io.swagger.model.InlineResponse4005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.InlineResponse500;
import io.swagger.model.InlineResponse5001;
import io.swagger.model.InlineResponse5002;
import io.swagger.model.InlineResponse5003;
import io.swagger.model.InlineResponse5004;
import io.swagger.model.InlineResponse5005;
import io.swagger.model.ScrubIpFilterTypes;
import io.swagger.model.ScrubIpPlaceOrder;
import io.swagger.model.ScrubIpsLogRowSchema;
import io.swagger.model.ScrubIpsRowSchema;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class ScrubIpsApiControllerTest {

    @Inject
    private ScrubIpsApi api;

    @Test
    void cancelScrubIpTest() {
        Integer id = null;
        try {
            //TODO: api.cancelScrubIp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void createFilterTest() {
        CreateFilter body = null;
        Integer id = null;
        try {
            //TODO: api.createFilter(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void createGeoRuleTest() {
        CreateGeoFirewallRule body = null;
        Integer id = null;
        try {
            //TODO: api.createGeoRule(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void createRuleTest() {
        CreateFirewallRule body = null;
        Integer id = null;
        try {
            //TODO: api.createRule(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteFilterTest() {
        CreateFilter body = null;
        Integer id = null;
        try {
            //TODO: api.deleteFilter(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void disableScrubTest() {
        Integer id = null;
        try {
            //TODO: api.disableScrub(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void enableScrubTest() {
        Integer id = null;
        try {
            //TODO: api.enableScrub(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getOrderDetailTest() {
        try {
            //TODO: api.getOrderDetail().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getScrubIpDetailsTest() {
        Integer id = null;
        try {
            //TODO: api.getScrubIpDetails(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getScrubIpFilterTypesTest() {
        try {
            //TODO: api.getScrubIpFilterTypes().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getScrubIpInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getScrubIpInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getScrubIpLogsTest() {
        String id = null;
        try {
            //TODO: api.getScrubIpLogs(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getScrubIpsListTest() {
        try {
            //TODO: api.getScrubIpsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void placeScrubOrderTest() {
        ScrubIpPlaceOrder body = null;
        try {
            //TODO: api.placeScrubOrder(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putScrubIpsTest() {
        ScrubIpPlaceOrder body = null;
        try {
            //TODO: api.putScrubIps(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void scrubIpsDeleteGeoRuleTest() {
        DeleteGeoFirewallRule body = null;
        Integer id = null;
        try {
            //TODO: api.scrubIpsDeleteGeoRule(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void scrubIpsDeleteRuleTest() {
        DeleteFirewallRule body = null;
        Integer id = null;
        try {
            //TODO: api.scrubIpsDeleteRule(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
