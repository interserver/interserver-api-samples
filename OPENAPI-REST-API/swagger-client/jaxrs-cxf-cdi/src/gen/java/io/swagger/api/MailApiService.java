package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.DenyRuleNew;
import io.swagger.model.DenyRuleRecord;
import io.swagger.model.EmailAddress;
import io.swagger.model.EmailAddressName;
import io.swagger.model.EndDate;
import io.swagger.model.GenericResponse;
import io.swagger.model.IdAlertsBody;
import io.swagger.model.InlineResponse2009;
import io.swagger.model.InlineResponse401;
import io.swagger.model.MailAlertRequest;
import io.swagger.model.MailAlertUpdateRequest;
import io.swagger.model.MailAlertsResponse;
import io.swagger.model.MailAttachment;
import io.swagger.model.MailBlocks;
import io.swagger.model.MailDelistRequest;
import io.swagger.model.MailDelistResponse;
import io.swagger.model.MailDeliverabilityResponse;
import io.swagger.model.MailLog;
import io.swagger.model.MailOrder;
import io.swagger.model.MailOrderRequest;
import io.swagger.model.MailRow;
import io.swagger.model.MailSchema;
import io.swagger.model.MailStatsType;
import io.swagger.model.SendMail;
import io.swagger.model.SendMailAdv;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.StartDate;
import io.swagger.model.SuccessTextResponse;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface MailApiService {
      public Response addMail(MailOrderRequest body, SecurityContext securityContext);
      public Response addRule(DenyRuleNew body, Integer id, SecurityContext securityContext);
      public Response addRule(String user, String type, String data, Integer id, SecurityContext securityContext);
      public Response createMailAlert(MailAlertRequest body, Integer id, SecurityContext securityContext);
      public Response createMailAlert(String type, String value, String to, String enabled, Integer id, SecurityContext securityContext);
      public Response deleteMailAlert(IdAlertsBody body, Integer id, SecurityContext securityContext);
      public Response deleteMailAlert(Integer alertId, Integer id, SecurityContext securityContext);
      public Response deleteRule(Integer id, String rule, SecurityContext securityContext);
      public Response delistBlock(String email, Integer id, SecurityContext securityContext);
      public Response delistBlock(EmailAddress body, Integer id, SecurityContext securityContext);
      public Response getMailAlerts(Integer id, SecurityContext securityContext);
      public Response getMailBlocks(Integer id, SecurityContext securityContext);
      public Response getMailDelist(Integer id, SecurityContext securityContext);
      public Response getMailDeliverability(Integer id, SecurityContext securityContext);
      public Response getMailInfo(Integer id, SecurityContext securityContext);
      public Response getMailInvoices(Integer id, SecurityContext securityContext);
      public Response getMailList(SecurityContext securityContext);
      public Response getMailWelcomeEmail(Integer id, SecurityContext securityContext);
      public Response getNewMail(SecurityContext securityContext);
      public Response getRules(Integer id, SecurityContext securityContext);
      public Response getStats(Integer id, String time, SecurityContext securityContext);
      public Response mailCancel(Integer id, SecurityContext securityContext);
      public Response postMailDelist(MailDelistRequest body, Integer id, SecurityContext securityContext);
      public Response postMailDelist(String unblock, Integer id, SecurityContext securityContext);
      public Response putMail(MailOrderRequest body, SecurityContext securityContext);
      public Response resetMailPassword(Integer id, SecurityContext securityContext);
      public Response sendAdvMail(SendMailAdv body, Integer id, SecurityContext securityContext);
      public Response sendAdvMail(String subject, String body, EmailAddressName from, List<EmailAddressName> to, List<EmailAddressName> replyto, List<EmailAddressName> cc, List<EmailAddressName> bcc, List<MailAttachment> attachments, Long id2, Integer id, SecurityContext securityContext);
      public Response sendMail(SendMail body, Integer id, SecurityContext securityContext);
      public Response sendMail(String to, String from, String subject, String body, Integer id, SecurityContext securityContext);
      public Response updateMailAlert(MailAlertUpdateRequest body, Integer id, SecurityContext securityContext);
      public Response updateMailAlert(Integer alertId, String type, String value, String to, String enabled, Integer id, SecurityContext securityContext);
      public Response updateMailInfo(String id, SecurityContext securityContext);
      public Response updateRule(DenyRuleNew body, Integer id, String rule, SecurityContext securityContext);
      public Response updateRule(String user, String type, String data, Integer id, String rule, SecurityContext securityContext);
      public Response viewMailLog(Integer id, Long id, String origin, String mx, String from, String to, String subject, String mailid, String messageId, String replyto, String headerfrom, Integer delivered, Integer skip, Integer limit, StartDate startDate, EndDate endDate, String sort, String dir, String groupby, SecurityContext securityContext);
}
