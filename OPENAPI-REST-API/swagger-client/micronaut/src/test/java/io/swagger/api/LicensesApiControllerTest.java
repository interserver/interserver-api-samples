package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.License;
import io.swagger.model.LicenseOrderRequest;
import io.swagger.model.LicenseRow;
import io.swagger.model.LicensesOrder;
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
class LicensesApiControllerTest {

    @Inject
    private LicensesApi api;

    @Test
    void addLicenseTest() {
        LicenseOrderRequest body = null;
        try {
            //TODO: api.addLicense(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getLicenseInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getLicenseInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getLicenseInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getLicenseInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getLicenseListTest() {
        try {
            //TODO: api.getLicenseList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getLicensesWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getLicensesWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewLicenseTest() {
        try {
            //TODO: api.getNewLicense().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void licensesCancelTest() {
        Integer id = null;
        try {
            //TODO: api.licensesCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postLicenseChangeIpTest() {
        IpObject body = null;
        Integer id = null;
        try {
            //TODO: api.postLicenseChangeIp(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putLicensesTest() {
        LicenseOrderRequest body = null;
        try {
            //TODO: api.putLicenses(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateLicenseInfoTest() {
        String id = null;
        try {
            //TODO: api.updateLicenseInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
