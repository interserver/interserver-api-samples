package io.swagger.api;

import java.math.BigDecimal;
import io.swagger.model.BillingAddCcRequest;
import io.swagger.model.BillingInvoiceDetail;
import io.swagger.model.BillingInvoiceList;
import io.swagger.model.BillingPaymentMethodRequest;
import io.swagger.model.BillingPrepayRequest;
import io.swagger.model.BillingVerifyCcRequest;
import io.swagger.model.IdVerifyBody;
import io.swagger.model.InlineResponse20010;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class BillingApiControllerTest {

    @Inject
    private BillingApi api;

    @Test
    void addBillingCreditCardTest() {
        BillingAddCcRequest body = null;
        try {
            //TODO: api.addBillingCreditCard(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void addBillingPrepayTest() {
        BillingPrepayRequest body = null;
        try {
            //TODO: api.addBillingPrepay(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteBillingCreditCardTest() {
        Integer id = null;
        try {
            //TODO: api.deleteBillingCreditCard(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteBillingInvoiceTest() {
        Integer id = null;
        try {
            //TODO: api.deleteBillingInvoice(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteBillingPrepayTest() {
        Integer id = null;
        try {
            //TODO: api.deleteBillingPrepay(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBillingCartTest() {
        try {
            //TODO: api.getBillingCart().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBillingCreditCardVerifyTest() {
        Integer id = null;
        try {
            //TODO: api.getBillingCreditCardVerify(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBillingInvoiceTest() {
        Integer id = null;
        try {
            //TODO: api.getBillingInvoice(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBillingInvoicesTest() {
        try {
            //TODO: api.getBillingInvoices().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBillingPrePaysTest() {
        try {
            //TODO: api.getBillingPrePays().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void initiatePaymentTest() {
        String method = null;
        String invoices = null;
        try {
            //TODO: api.initiatePayment(method, invoices).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void patchBillingCreditCardVerifyTest() {
        IdVerifyBody body = null;
        Integer id = null;
        try {
            //TODO: api.patchBillingCreditCardVerify(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postBillingCreditCardVerifyTest() {
        BillingVerifyCcRequest body = null;
        Integer id = null;
        try {
            //TODO: api.postBillingCreditCardVerify(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateBillingCreditCardTest() {
        Integer id = null;
        try {
            //TODO: api.updateBillingCreditCard(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateBillingPaymentMethodTest() {
        BillingPaymentMethodRequest body = null;
        try {
            //TODO: api.updateBillingPaymentMethod(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
