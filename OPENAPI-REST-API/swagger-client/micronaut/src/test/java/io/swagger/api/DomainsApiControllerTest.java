package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.Domain;
import io.swagger.model.DomainContactDetails;
import io.swagger.model.DomainDnssecRecords;
import io.swagger.model.DomainDnssecRequest;
import io.swagger.model.DomainLookupResponse;
import io.swagger.model.DomainNameserverGetResponse;
import io.swagger.model.DomainNameserverPostRequest;
import io.swagger.model.DomainNameserverPutRequest;
import io.swagger.model.DomainOrder;
import io.swagger.model.DomainRow;
import io.swagger.model.DomainSearchResponse;
import io.swagger.model.DomainWhoisPrivacyRequest;
import io.swagger.model.InlineResponse2003;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class DomainsApiControllerTest {

    @Inject
    private DomainsApi api;

    @Test
    void addDomainTest() {
        Map<String, Object> body = null;
        try {
            //TODO: api.addDomain(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void addDomainDnssecTest() {
        DomainDnssecRequest body = null;
        Integer id = null;
        try {
            //TODO: api.addDomainDnssec(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void addDomainNameserverTest() {
        DomainNameserverPostRequest body = null;
        Integer id = null;
        try {
            //TODO: api.addDomainNameserver(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void cancelDomainTest() {
        Integer id = null;
        try {
            //TODO: api.cancelDomain(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteDomainDnssecTest() {
        Integer id = null;
        try {
            //TODO: api.deleteDomainDnssec(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteDomainNameserverTest() {
        Integer id = null;
        Integer index = null;
        try {
            //TODO: api.deleteDomainNameserver(id, index).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainContactTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainContact(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainDnssecTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainDnssec(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainLookupTest() {
        String name = null;
        try {
            //TODO: api.getDomainLookup(name).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainNameserversTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainNameservers(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainRenewalTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainRenewal(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainSearchTest() {
        String name = null;
        try {
            //TODO: api.getDomainSearch(name).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainTransferTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainTransfer(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainWhoisPrivacyTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainWhoisPrivacy(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainsListTest() {
        try {
            //TODO: api.getDomainsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getDomainsWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getDomainsWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewDomainTest() {
        try {
            //TODO: api.getNewDomain().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void patchDomainsTest() {
        Map<String, Object> body = null;
        try {
            //TODO: api.patchDomains(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postDomainRenewalTest() {
        Integer id = null;
        try {
            //TODO: api.postDomainRenewal(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postDomainSearchTest() {
        String name = null;
        try {
            //TODO: api.postDomainSearch(name).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postDomainTransferTest() {
        Integer id = null;
        try {
            //TODO: api.postDomainTransfer(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putDomainsTest() {
        Map<String, Object> body = null;
        try {
            //TODO: api.putDomains(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateDomainContactTest() {
        DomainContactDetails body = null;
        Integer id = null;
        try {
            //TODO: api.updateDomainContact(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateDomainInfoTest() {
        Integer id = null;
        try {
            //TODO: api.updateDomainInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateDomainNameserversTest() {
        DomainNameserverPutRequest body = null;
        Integer id = null;
        try {
            //TODO: api.updateDomainNameservers(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateDomainWhoisPrivacyTest() {
        DomainWhoisPrivacyRequest body = null;
        Integer id = null;
        try {
            //TODO: api.updateDomainWhoisPrivacy(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
