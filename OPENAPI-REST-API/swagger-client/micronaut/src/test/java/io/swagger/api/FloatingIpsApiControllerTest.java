package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.FloatingIpOrderRequest;
import io.swagger.model.InlineResponse2004;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class FloatingIpsApiControllerTest {

    @Inject
    private FloatingIpsApi api;

    @Test
    void addFloatingIpTest() {
        FloatingIpOrderRequest body = null;
        try {
            //TODO: api.addFloatingIp(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void floatingIpsCancelTest() {
        Integer id = null;
        try {
            //TODO: api.floatingIpsCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getFloatingIpInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getFloatingIpInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getFloatingIpInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getFloatingIpInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getFloatingIpsListTest() {
        try {
            //TODO: api.getFloatingIpsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getFloatingIpsWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getFloatingIpsWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewFloatingIpTest() {
        try {
            //TODO: api.getNewFloatingIp().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postFloatingIpsChangeIpFormTest() {
        String ip = null;
        Integer id = null;
        try {
            //TODO: api.postFloatingIpsChangeIp(ip, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putFloatingIpsTest() {
        FloatingIpOrderRequest body = null;
        try {
            //TODO: api.putFloatingIps(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateFloatingIpInfoTest() {
        String id = null;
        try {
            //TODO: api.updateFloatingIpInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
