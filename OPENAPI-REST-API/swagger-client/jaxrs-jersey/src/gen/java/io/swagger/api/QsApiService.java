package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class QsApiService {
    public abstract Response addQs(QsOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteQsBackup(Integer id, @NotNull String file, String all,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsBlockSmtp(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsDisableCd(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsDisableQuota(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsEjectCd(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsEnableQuota(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsRestart(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsStart(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response doQsStop(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response downloadQsBackup(IdBackupsBody body,Integer id, String all,SecurityContext securityContext) throws NotFoundException;
    public abstract Response downloadQsBackup(String file,Integer id, String all,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewQs(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsBackup(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsBackups(Integer id, String all,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsChangeHostname(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsChangeRootPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsChangeTimezone(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsChangeWebuzoPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsInsertCd(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsReinstallOs(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsResetPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsReverseDns(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsSetupVnc(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsTrafficUsage(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsViewDesktop(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQsWelcomeEmail(String id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsChangeHostname(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsChangeRootPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsChangeTimezone(String timezone,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsChangeTimezone(TimezoneUpdate body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsChangeWebuzoPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsInsertCd(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsReinstallOs(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsResetPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsSetupVnc(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsTrafficUsage(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQsViewDesktop(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQuickServerRestore(RestoreRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postQuickServerRestore(String backup,String password,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putQs(QsOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response quickserversCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateQsInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
