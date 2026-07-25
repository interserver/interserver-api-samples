package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.IdBackupsBody;
import io.swagger.model.InlineResponse20011;
import io.swagger.model.InlineResponse20012;
import io.swagger.model.InlineResponse401;
import io.swagger.model.QsOrderRequest;
import io.swagger.model.QueueResponse;
import io.swagger.model.Quickserver;
import io.swagger.model.QuickserverOrder;
import io.swagger.model.QuickserverRow;
import io.swagger.model.RestoreRequest;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;
import io.swagger.model.TimezoneUpdate;
import io.swagger.model.VpsBackupRows;
import io.swagger.model.VpsTemplatesList;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import jakarta.inject.Inject;

import java.util.*;

import static org.junit.jupiter.api.Assumptions.assumeTrue;

@MicronautTest
class QsApiControllerTest {

    @Inject
    private QsApi api;

    @Test
    void addQsTest() {
        QsOrderRequest body = null;
        try {
            //TODO: api.addQs(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void deleteQsBackupTest() {
        Integer id = null;
        String file = null;
        String all = null;
        try {
            //TODO: api.deleteQsBackup(id, file, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsBlockSmtpTest() {
        Integer id = null;
        try {
            //TODO: api.doQsBlockSmtp(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsDisableCdTest() {
        Integer id = null;
        try {
            //TODO: api.doQsDisableCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsDisableQuotaTest() {
        Integer id = null;
        try {
            //TODO: api.doQsDisableQuota(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsEjectCdTest() {
        Integer id = null;
        try {
            //TODO: api.doQsEjectCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsEnableQuotaTest() {
        Integer id = null;
        try {
            //TODO: api.doQsEnableQuota(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsRestartTest() {
        Integer id = null;
        try {
            //TODO: api.doQsRestart(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsStartTest() {
        Integer id = null;
        try {
            //TODO: api.doQsStart(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void doQsStopTest() {
        Integer id = null;
        try {
            //TODO: api.doQsStop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void downloadQsBackupTest() {
        IdBackupsBody body = null;
        Integer id = null;
        String all = null;
        try {
            //TODO: api.downloadQsBackup(body, id, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getNewQsTest() {
        try {
            //TODO: api.getNewQs().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsBackupTest() {
        Integer id = null;
        try {
            //TODO: api.getQsBackup(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsBackupsTest() {
        Integer id = null;
        String all = null;
        try {
            //TODO: api.getQsBackups(id, all).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsChangeHostnameTest() {
        Integer id = null;
        try {
            //TODO: api.getQsChangeHostname(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsChangeRootPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.getQsChangeRootPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsChangeTimezoneTest() {
        Integer id = null;
        try {
            //TODO: api.getQsChangeTimezone(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsChangeWebuzoPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.getQsChangeWebuzoPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsInfoTest() {
        Integer id = null;
        try {
            //TODO: api.getQsInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsInsertCdTest() {
        Integer id = null;
        try {
            //TODO: api.getQsInsertCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsInvoicesTest() {
        Integer id = null;
        try {
            //TODO: api.getQsInvoices(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsListTest() {
        try {
            //TODO: api.getQsList().blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsReinstallOsTest() {
        Integer id = null;
        try {
            //TODO: api.getQsReinstallOs(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsResetPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.getQsResetPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsReverseDnsTest() {
        Integer id = null;
        try {
            //TODO: api.getQsReverseDns(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsSetupVncTest() {
        Integer id = null;
        try {
            //TODO: api.getQsSetupVnc(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsTrafficUsageTest() {
        Integer id = null;
        try {
            //TODO: api.getQsTrafficUsage(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsViewDesktopTest() {
        Integer id = null;
        try {
            //TODO: api.getQsViewDesktop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void getQsWelcomeEmailTest() {
        String id = null;
        try {
            //TODO: api.getQsWelcomeEmail(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsChangeHostnameTest() {
        Integer id = null;
        try {
            //TODO: api.postQsChangeHostname(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsChangeRootPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.postQsChangeRootPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsChangeTimezoneFormTest() {
        String timezone = null;
        Integer id = null;
        try {
            //TODO: api.postQsChangeTimezone(timezone, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsChangeWebuzoPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.postQsChangeWebuzoPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsInsertCdTest() {
        Integer id = null;
        try {
            //TODO: api.postQsInsertCd(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsReinstallOsTest() {
        Integer id = null;
        try {
            //TODO: api.postQsReinstallOs(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsResetPasswordTest() {
        Integer id = null;
        try {
            //TODO: api.postQsResetPassword(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsReverseDnsTest() {
        ReverseDnsEntries body = null;
        Integer id = null;
        try {
            //TODO: api.postQsReverseDns(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsSetupVncTest() {
        Integer id = null;
        try {
            //TODO: api.postQsSetupVnc(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsTrafficUsageTest() {
        Integer id = null;
        try {
            //TODO: api.postQsTrafficUsage(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQsViewDesktopTest() {
        Integer id = null;
        try {
            //TODO: api.postQsViewDesktop(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void postQuickServerRestoreTest() {
        RestoreRequest body = null;
        Integer id = null;
        try {
            //TODO: api.postQuickServerRestore(body, id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void putQsTest() {
        QsOrderRequest body = null;
        try {
            //TODO: api.putQs(body).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void quickserversCancelTest() {
        Integer id = null;
        try {
            //TODO: api.quickserversCancel(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

    @Test
    void updateQsInfoTest() {
        String id = null;
        try {
            //TODO: api.updateQsInfo(id).blockingGet();
        } catch (UnsupportedOperationException e) {
            assumeTrue(false, "API is not yet implemented");
        }
    }

}
