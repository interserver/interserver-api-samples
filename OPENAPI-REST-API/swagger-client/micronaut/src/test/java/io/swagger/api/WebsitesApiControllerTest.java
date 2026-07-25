package io.swagger.api;

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

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class WebsitesApiControllerTest {

    @Inject
    private WebsitesApi api;

    @Test
    void addWebsiteTest() {
        WebsiteOrderPostRequest body = null;
        try {
            //TODO: api.addWebsite(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewWebsiteTest() {
        try {
            //TODO: api.getNewWebsite().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsiteBuyIpTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsiteBuyIp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsiteInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsiteInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsiteInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsiteInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsiteListTest() {
        try {
            //TODO: api.getWebsiteList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsitesBackupsTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsitesBackups(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsitesLoginTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsitesLogin(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getWebsitesWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getWebsitesWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void gettWebsiteReverseDnsTest() {
        Integer id = null;
        try {
            //TODO: api.gettWebsiteReverseDns(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postWebsiteBuyIpTest() {
        IdBuyIpBody body = null;
        Integer id = null;
        try {
            //TODO: api.postWebsiteBuyIp(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postWebsiteMigrationTest() {
        IdMigrationBody body = null;
        Integer id = null;
        try {
            //TODO: api.postWebsiteMigration(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postWebsitesReverseDnsTest() {
        ReverseDnsEntries body = null;
        Integer id = null;
        try {
            //TODO: api.postWebsitesReverseDns(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putWebsitesTest() {
        WebsiteOrderPutRequest body = null;
        try {
            //TODO: api.putWebsites(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateWebsiteInfoTest() {
        String id = null;
        try {
            //TODO: api.updateWebsiteInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void webhostingCancelTest() {
        String id = null;
        try {
            //TODO: api.webhostingCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
