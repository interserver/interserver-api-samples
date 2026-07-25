package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

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
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface QsApiService {
      Response addQs(QsOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response deleteQsBackup(Integer id,String file,String all,SecurityContext securityContext) throws NotFoundException;
      Response doQsBlockSmtp(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsDisableCd(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsDisableQuota(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsEjectCd(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsEnableQuota(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsRestart(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsStart(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response doQsStop(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response downloadQsBackup(IdBackupsBody body,Integer id,String all,SecurityContext securityContext) throws NotFoundException;
      Response downloadQsBackup(String file,Integer id,String all,SecurityContext securityContext) throws NotFoundException;
      Response getNewQs(SecurityContext securityContext) throws NotFoundException;
      Response getQsBackup(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsBackups(Integer id,String all,SecurityContext securityContext) throws NotFoundException;
      Response getQsChangeHostname(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsChangeRootPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsChangeTimezone(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsChangeWebuzoPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsInsertCd(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsList(SecurityContext securityContext) throws NotFoundException;
      Response getQsReinstallOs(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsResetPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsReverseDns(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsSetupVnc(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsTrafficUsage(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsViewDesktop(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getQsWelcomeEmail(String id,SecurityContext securityContext) throws NotFoundException;
      Response postQsChangeHostname(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsChangeRootPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsChangeTimezone(MultipartFormDataInput input,String timezone,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsChangeTimezone(MultipartFormDataInput input,TimezoneUpdate body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsChangeWebuzoPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsInsertCd(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsReinstallOs(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsResetPassword(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsSetupVnc(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsTrafficUsage(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQsViewDesktop(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQuickServerRestore(RestoreRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response postQuickServerRestore(String backup,String password,Integer id,SecurityContext securityContext) throws NotFoundException;
      Response putQs(QsOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response quickserversCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateQsInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
