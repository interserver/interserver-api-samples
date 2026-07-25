package io.swagger.api;

import io.swagger.model.Backup;
import io.swagger.model.BackupLoginResponse;
import io.swagger.model.BackupOrderPostResponse;
import io.swagger.model.BackupOrderPutRequest;
import io.swagger.model.BackupOrderPutResponse;
import io.swagger.model.BackupRow;
import io.swagger.model.BackupsOrder;
import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2002;
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
class BackupsApiControllerTest {

    @Inject
    private BackupsApi api;

    @Test
    void addBackupFormTest() {
        Boolean validateOnly = null;
        Integer serviceType = null;
        String coupon = null;
        try {
            //TODO: api.addBackup(validateOnly, serviceType, coupon).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void cancelBackupTest() {
        Integer id = null;
        try {
            //TODO: api.cancelBackup(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBackupInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getBackupInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBackupInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getBackupInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBackupLoginTest() {
        Integer id = null;
        try {
            //TODO: api.getBackupLogin(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBackupsListTest() {
        try {
            //TODO: api.getBackupsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getBackupsWelcomeEmailTest() {
        Integer id = null;
        try {
            //TODO: api.getBackupsWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewBackupTest() {
        try {
            //TODO: api.getNewBackup().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateBackupInfoTest() {
        Integer id = null;
        try {
            //TODO: api.updateBackupInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void validateBackupOrderFormTest() {
        Boolean validateOnly = null;
        Integer serviceType = null;
        String coupon = null;
        try {
            //TODO: api.validateBackupOrder(validateOnly, serviceType, coupon).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
