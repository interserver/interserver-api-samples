package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.HostnameObject;
import io.swagger.model.IdBackupsBody2;
import io.swagger.model.InlineResponse20012;
import io.swagger.model.InlineResponse20024;
import io.swagger.model.InlineResponse401;
import io.swagger.model.PasswordRequest;
import io.swagger.model.QueueResponse;
import io.swagger.model.RestoreRequest;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TemplateRequest;
import io.swagger.model.TextResponse;
import io.swagger.model.TimezoneUpdate;
import io.swagger.model.UrlRequest;
import io.swagger.model.Vps;
import io.swagger.model.VpsBackupRows;
import io.swagger.model.VpsOrder;
import io.swagger.model.VpsOrderPostRequest;
import io.swagger.model.VpsOrderPutRequest;
import io.swagger.model.VpsOrderPutResponse;
import io.swagger.model.VpsRow;
import io.swagger.model.VpsTemplatesList;
import io.swagger.model.VpsTrafficResponse;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class VpsApiControllerTest {

    @Inject
    private VpsApi api;

    @Test
    void addVpsTest() {
        VpsOrderPostRequest body = null;
        try {
            //TODO: api.addVps(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteVpsBackupTest() {
        Integer id = null;
        String file = null;
        String all = null;
        try {
            //TODO: api.deleteVpsBackup(id, file, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsBlockSmtpTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsBlockSmtp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsDisableCdTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsDisableCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsDisableQuotaTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsDisableQuota(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsEjectCdTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsEjectCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsEnableQuotaTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsEnableQuota(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsRestartTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsRestart(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsStartTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsStart(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doVpsStopTest() {
        Integer id = null;
        try {
            //TODO: api.doVpsStop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void downloadVpsBackupTest() {
        IdBackupsBody2 body = null;
        Integer id = null;
        String all = null;
        try {
            //TODO: api.downloadVpsBackup(body, id, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewVpsTest() {
        try {
            //TODO: api.getNewVps().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsBackupTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsBackup(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsBackupsTest() {
        Integer id = null;
        String all = null;
        try {
            //TODO: api.getVpsBackups(id, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsBuyHdSpaceTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsBuyHdSpace(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsBuyIpTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsBuyIp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsChangeHostnameTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsChangeHostname(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsChangeRootPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsChangeRootPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsChangeTimezoneTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsChangeTimezone(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsInsertCdTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsInsertCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsListTest() {
        try {
            //TODO: api.getVpsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsReinstallOsTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsReinstallOs(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsResetPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsResetPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsReverseDnsTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsReverseDns(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsSetupVncTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsSetupVnc(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsSlicesTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsSlices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsTrafficUsageTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsTrafficUsage(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsViewDesktopTest() {
        Integer id = null;
        try {
            //TODO: api.getVpsViewDesktop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getVpsWelcomeEmailTest() {
        String id = null;
        try {
            //TODO: api.getVpsWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsBuyHdSpaceTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsBuyHdSpace(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsBuyIpTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsBuyIp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsChangeHostnameFormTest() {
        String hostname = null;
        Integer id = null;
        try {
            //TODO: api.postVpsChangeHostname(hostname, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsChangeRootPasswordFormTest() {
        String password = null;
        Integer id = null;
        try {
            //TODO: api.postVpsChangeRootPassword(password, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsChangeTimezoneFormTest() {
        String timezone = null;
        Integer id = null;
        try {
            //TODO: api.postVpsChangeTimezone(timezone, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsChangeWebuzoPasswordFormTest() {
        String password = null;
        Integer id = null;
        try {
            //TODO: api.postVpsChangeWebuzoPassword(password, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsInsertCdFormTest() {
        String url = null;
        Integer id = null;
        try {
            //TODO: api.postVpsInsertCd(url, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsReinstallOsFormTest() {
        String template = null;
        String password = null;
        String localPassword = null;
        Integer id = null;
        try {
            //TODO: api.postVpsReinstallOs(template, password, localPassword, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsResetPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsResetPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsRestoreTest() {
        RestoreRequest body = null;
        Integer id = null;
        try {
            //TODO: api.postVpsRestore(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsReverseDnsTest() {
        ReverseDnsEntries body = null;
        Integer id = null;
        try {
            //TODO: api.postVpsReverseDns(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsSetupVncTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsSetupVnc(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsSlicesTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsSlices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsTrafficUsageTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsTrafficUsage(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postVpsViewDesktopTest() {
        Integer id = null;
        try {
            //TODO: api.postVpsViewDesktop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putVpsTest() {
        VpsOrderPutRequest body = null;
        try {
            //TODO: api.putVps(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putVpsBuyHdSpaceTest() {
        Integer id = null;
        try {
            //TODO: api.putVpsBuyHdSpace(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateVpsInfoTest() {
        String id = null;
        try {
            //TODO: api.updateVpsInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void vPSCancelTest() {
        Integer id = null;
        try {
            //TODO: api.vPSCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
