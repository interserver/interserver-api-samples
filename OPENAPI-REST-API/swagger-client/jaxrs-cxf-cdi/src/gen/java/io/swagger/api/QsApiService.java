package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface QsApiService {
      public Response addQs(QsOrderRequest body, SecurityContext securityContext);
      public Response deleteQsBackup(Integer id, String file, String all, SecurityContext securityContext);
      public Response doQsBlockSmtp(Integer id, SecurityContext securityContext);
      public Response doQsDisableCd(Integer id, SecurityContext securityContext);
      public Response doQsDisableQuota(Integer id, SecurityContext securityContext);
      public Response doQsEjectCd(Integer id, SecurityContext securityContext);
      public Response doQsEnableQuota(Integer id, SecurityContext securityContext);
      public Response doQsRestart(Integer id, SecurityContext securityContext);
      public Response doQsStart(Integer id, SecurityContext securityContext);
      public Response doQsStop(Integer id, SecurityContext securityContext);
      public Response downloadQsBackup(IdBackupsBody body, Integer id, String all, SecurityContext securityContext);
      public Response downloadQsBackup(String file, Integer id, String all, SecurityContext securityContext);
      public Response getNewQs(SecurityContext securityContext);
      public Response getQsBackup(Integer id, SecurityContext securityContext);
      public Response getQsBackups(Integer id, String all, SecurityContext securityContext);
      public Response getQsChangeHostname(Integer id, SecurityContext securityContext);
      public Response getQsChangeRootPassword(Integer id, SecurityContext securityContext);
      public Response getQsChangeTimezone(Integer id, SecurityContext securityContext);
      public Response getQsChangeWebuzoPassword(Integer id, SecurityContext securityContext);
      public Response getQsInfo(Integer id, SecurityContext securityContext);
      public Response getQsInsertCd(Integer id, SecurityContext securityContext);
      public Response getQsInvoices(Integer id, SecurityContext securityContext);
      public Response getQsList(SecurityContext securityContext);
      public Response getQsReinstallOs(Integer id, SecurityContext securityContext);
      public Response getQsResetPassword(Integer id, SecurityContext securityContext);
      public Response getQsReverseDns(Integer id, SecurityContext securityContext);
      public Response getQsSetupVnc(Integer id, SecurityContext securityContext);
      public Response getQsTrafficUsage(Integer id, SecurityContext securityContext);
      public Response getQsViewDesktop(Integer id, SecurityContext securityContext);
      public Response getQsWelcomeEmail(String id, SecurityContext securityContext);
      public Response postQsChangeHostname(Integer id, SecurityContext securityContext);
      public Response postQsChangeRootPassword(Integer id, SecurityContext securityContext);
      public Response postQsChangeTimezone(String timezone, Integer id, SecurityContext securityContext);
      public Response postQsChangeTimezone(TimezoneUpdate body, Integer id, SecurityContext securityContext);
      public Response postQsChangeWebuzoPassword(Integer id, SecurityContext securityContext);
      public Response postQsInsertCd(Integer id, SecurityContext securityContext);
      public Response postQsReinstallOs(Integer id, SecurityContext securityContext);
      public Response postQsResetPassword(Integer id, SecurityContext securityContext);
      public Response postQsReverseDns(ReverseDnsEntries body, Integer id, SecurityContext securityContext);
      public Response postQsReverseDns(Map<String, Object> ips, Integer id, SecurityContext securityContext);
      public Response postQsSetupVnc(Integer id, SecurityContext securityContext);
      public Response postQsTrafficUsage(Integer id, SecurityContext securityContext);
      public Response postQsViewDesktop(Integer id, SecurityContext securityContext);
      public Response postQuickServerRestore(RestoreRequest body, Integer id, SecurityContext securityContext);
      public Response postQuickServerRestore(String backup, String password, Integer id, SecurityContext securityContext);
      public Response putQs(QsOrderRequest body, SecurityContext securityContext);
      public Response quickserversCancel(Integer id, SecurityContext securityContext);
      public Response updateQsInfo(String id, SecurityContext securityContext);
}
