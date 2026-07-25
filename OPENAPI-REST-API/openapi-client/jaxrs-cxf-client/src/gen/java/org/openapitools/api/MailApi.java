package org.openapitools.api;

import org.openapitools.model.ChargeInvoiceRows;
import org.openapitools.model.DeleteMailAlertRequest;
import org.openapitools.model.DenyRuleNew;
import org.openapitools.model.DenyRuleRecord;
import org.openapitools.model.GenericResponse;
import org.openapitools.model.GetAccountInfo401Response;
import org.openapitools.model.MailAlertRequest;
import org.openapitools.model.MailAlertUpdateRequest;
import org.openapitools.model.MailAlertsResponse;
import org.openapitools.model.MailBlocks;
import org.openapitools.model.MailCancel200Response;
import org.openapitools.model.MailDelistRequest;
import org.openapitools.model.MailDelistResponse;
import org.openapitools.model.MailDeliverabilityResponse;
import org.openapitools.model.MailLog;
import org.openapitools.model.MailOrder;
import org.openapitools.model.MailOrderRequest;
import org.openapitools.model.MailRow;
import org.openapitools.model.MailSchema;
import org.openapitools.model.MailStatsType;
import org.openapitools.model.SendMail;
import org.openapitools.model.SendMailAdv;
import org.openapitools.model.ServiceOrderPostResponse;
import org.openapitools.model.SuccessTextResponse;
import org.openapitools.model.ViewMailLogStartDateParameter;

import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * InterServer Management API
 *
 * <p># Overview  The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.  The API covers the following service categories: - [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management - [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting - [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers - [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html) - [Backups](https://www.interserver.net/storage/) — storage and backup services - Licenses — control panel and software licenses - [Mail](https://www.mail.baby/) — mail delivery services - SSL — certificate provisioning - Billing — invoices, payment methods, and account management  For interactive testing, see the [API documentation](/api-docs/).  # Authentication  Most endpoints require authentication. Two methods are supported:  ## API Key (Preferred)  Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the `X-API-KEY` request header:  ``` X-API-KEY: your-api-key-here ```  ## Session-Based Authentication  Alternatively, authenticate by creating a session:  1. **Log in** — Send a `POST` request to `/login` with your account credentials. The response includes a session identifier. 2. **Pass the session ID** — Include the session identifier in the `sessionid` header on subsequent requests:  ``` sessionid: your-session-id-here ```  API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.  
 *
 */
@Path("/mail")
@Api(value = "/", description = "")
public interface MailApi  {

    /**
     * Place a new Mail Baby order, generate invoice, and queue provisioning
     *
     * Step 3 of the Mail Baby order flow. Revalidates via &#x60;validate_buy_mail()&#x60;, then calls &#x60;place_buy_mail()&#x60; to create a &#x60;Repeat_Invoice&#x60; recurring billing row, an initial &#x60;invoices&#x60; row, and a &#x60;mail&#x60; service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call &#x60;putMail&#x60; first. Sibling ops: &#x60;getNewMail&#x60;, &#x60;putMail&#x60;, &#x60;getMailInfo&#x60;, &#x60;initiatePayment&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail&#x60;. - &#x60;coupon&#x60; (string, optional). - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60;. On validation failure: &#x60;{continue: false, errors: [...]}&#x60; with HTTP 200.  **Side effects:** - Inserts &#x60;mail&#x60; service row in &#x60;pending&#x60; status. - Inserts &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;. - **Confirm activation:** &#x60;getMailInfo&#x60; (poll until &#x60;mail_status&#x3D;&#x3D;&#39;active&#39;&#x60;). - **Resend credentials:** &#x60;getMailWelcomeEmail&#x60;.  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /mail/order                                    -&gt; catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -&gt; quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -&gt; { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -&gt; pay (initiatePayment) GET /mail/{serviceId}                              -&gt; poll until mail_status&#x3D;&#x3D;&#39;active&#39; &#x60;&#x60;&#x60; 
     *
     */
    @POST
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Place a new Mail Baby order, generate invoice, and queue provisioning", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Order placed successfully. Use the invoice ID to proceed to payment via `/billing/pay/{method}/{invoices}` or view the invoice at `/billing/invoices/{id}`.", response = ServiceOrderPostResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ServiceOrderPostResponse addMail(MailOrderRequest mailOrderRequest);

    /**
     * Create a new deny rule to auto-block matching submissions
     *
     * Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/rules")
    @Consumes({ "application/json", "application/x-www-form-urlencoded" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Create a new deny rule to auto-block matching submissions", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Deny rule created successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse addRule(@PathParam("id") Integer id, DenyRuleNew denyRuleNew);

    /**
     * Create a new Mail Baby alert for delivery, bounce, or quota events
     *
     * Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/alerts")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Create a new Mail Baby alert for delivery, bounce, or quota events", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse createMailAlert(@PathParam("id") Integer id, MailAlertRequest mailAlertRequest);

    /**
     * Delete a Mail Baby alert by alert_id (hard delete — no recovery)
     *
     * Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @DELETE
    @Path("/{id}/alerts")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Delete a Mail Baby alert by alert_id (hard delete — no recovery)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse deleteMailAlert(@PathParam("id") Integer id, DeleteMailAlertRequest deleteMailAlertRequest);

    /**
     * Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
     *
     * Hard-deletes a single &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60;. **Irreversible** — no audit copy preserved. Query filter &#x60;id&#x3D;{rule} AND user&#x3D;&#39;{mail_username}&#39;&#x60; prevents cross-tenant deletes; passing a &#x60;rule&#x60; belonging to a different mail order is silently a no-op (still returns success). Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;updateRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Returns:** &#x60;\&quot;Block deleted successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @DELETE
    @Path("/{id}/rules/{rule}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Deny rule deleted successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse deleteRule(@PathParam("id") Integer id, @PathParam("rule") String rule);

    /**
     * Delist a sender email from rspamd / mailchannels / mailbaby block lists
     *
     * Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#39;...&#39; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/blocks/delete")
    @Consumes({ "multipart/form-data", "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Delist a sender email from rspamd / mailchannels / mailbaby block lists", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Email address removed from block list successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse delistBlock(@PathParam("id") Integer id, @Multipart(value = "email", required = false)  String email);

    /**
     * List configured delivery/bounce/quota alerts for one Mail Baby service
     *
     * Returns every alert row from &#x60;alerts&#x60; matching this service. Each row carries &#x60;alert_id&#x60; (use with PUT/DELETE), &#x60;alert_type&#x60;, &#x60;alert_value&#x60; (threshold), &#x60;alert_to&#x60; (notification email), &#x60;alert_enabled&#x60;, and timestamps. Sibling ops: &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailAlertsResponse&#x60;): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/alerts")
    @Produces({ "application/json" })
    @ApiOperation(value = "List configured delivery/bounce/quota alerts for one Mail Baby service", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Alert configuration for the mail service.", response = MailAlertsResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailAlertsResponse getMailAlerts(@PathParam("id") Integer id);

    /**
     * List recent local-blocklist hits and spam-trap captures for the mail user
     *
     * Returns relay-side block events for the SMTP user behind &#x60;mail_id&#x60; — the last 24 hours of &#x60;LOCAL_BL_RCPT&#x60; and &#x60;MBTRAP&#x60; rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing &#x60;@&#x60; / &#x60;smtp&#x60; / &#x60;socks5&#x60; / &#x60;socks4&#x60; more than 4 times). Use the &#x60;from&#x60; value with &#x60;delistBlock&#x60; or &#x60;postMailDelist&#x60; to clear a block. Sibling ops: &#x60;delistBlock&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailBlocks&#x60;): - &#x60;local&#x60; (array) — rspamd &#x60;LOCAL_BL_RCPT&#x60; hits: &#x60;{date, from, messageId, subject, to}&#x60;. - &#x60;mbtrap&#x60; (array) — spam-trap captures (&#x60;MBTRAP&#x60; symbol): same shape. - &#x60;subject&#x60; (array) — senders flagged by subject-line heuristic: &#x60;{from, subject}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Clear a block:** &#x60;delistBlock&#x60; (POST &#x60;/mail/{id}/blocks/delete&#x60;). - **Broader delist UI:** &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;. 
     *
     */
    @GET
    @Path("/{id}/blocks")
    @Produces({ "application/json" })
    @ApiOperation(value = "List recent local-blocklist hits and spam-trap captures for the mail user", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = MailBlocks.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailBlocks getMailBlocks(@PathParam("id") Integer id);

    /**
     * Read blocklist diagnostics and find senders eligible for delisting
     *
     * Returns a richer diagnostic snapshot than &#x60;getMailBlocks&#x60; — intended for the delist UI. Use any &#x60;SMTPFrom&#x60;/&#x60;from&#x60; value as the &#x60;unblock&#x60; field for &#x60;postMailDelist&#x60;. Sibling ops: &#x60;postMailDelist&#x60;, &#x60;getMailBlocks&#x60;, &#x60;delistBlock&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailDelistResponse&#x60;): - &#x60;id&#x60; (integer) — &#x60;mail_id&#x60; echo. - &#x60;local&#x60;, &#x60;mbtrap&#x60; (array) — last 24h rspamd hits with capitalized keys (&#x60;Date&#x60;, &#x60;SMTPFrom&#x60;, &#x60;MessageId&#x60;, &#x60;Subject&#x60;, &#x60;MimeRecipients&#x60;). - &#x60;subject&#x60; (array) — credential-leak-heuristic firings (3-day window). - &#x60;manual&#x60; (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/delist")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read blocklist diagnostics and find senders eligible for delisting", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Blocklist entries and delist details for the mail service.", response = MailDelistResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailDelistResponse getMailDelist(@PathParam("id") Integer id);

    /**
     * Read delivered vs bounced totals broken down by sender (or by recipient domain)
     *
     * Returns deliverability analytics from &#x60;MailDeliveryStats&#x60; (Dragonfly cache) for the SMTP user behind &#x60;mail_id&#x60;. Default pivot is by sender; pass &#x60;?filter_domain&#x3D;1&#x60; to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;filter_domain&#x60; (string &#x60;1&#x60;, optional) — pivot by recipient domain instead of sender.  **Returns** (schema &#x60;MailDeliverabilityResponse&#x60;): - &#x60;stat&#x60;: &#x60;{delivered, bounced, percent}&#x60; — totals and bounce ratio. - &#x60;header&#x60; (string), &#x60;col1&#x60; (string) — table headers. - &#x60;table_data&#x60; (array) — rows of &#x60;[&lt;sender-or-domain&gt;, bounced, delivered, bouncePercent]&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/deliverability")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read delivered vs bounced totals broken down by sender (or by recipient domain)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Deliverability metrics for the mail service.", response = MailDeliverabilityResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailDeliverabilityResponse getMailDeliverability(@PathParam("id") Integer id);

    /**
     * Read full detail for one Mail Baby service including SMTP credentials
     *
     * Returns the full &#x60;ViewMail&#x60; payload for one Mail Baby service — &#x60;serviceInfo&#x60;, &#x60;serviceType&#x60;, and &#x60;client_links&#x60; (URLs rewritten to API paths, e.g. &#x60;view_mail_log&#x60; → &#x60;log&#x60;). Admin fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: &#x60;getMailList&#x60;, &#x60;updateMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;, &#x60;getMailWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailSchema&#x60;): - &#x60;serviceInfo&#x60; — &#x60;mail_id&#x60;, &#x60;mail_username&#x60; (e.g. &#x60;mb1234&#x60;), &#x60;mail_status&#x60;, &#x60;mail_invoice&#x60;, &#x60;mail_custid&#x60;, dates, currency. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Send:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. - **Reset credentials:** &#x60;getMailWelcomeEmail&#x60;. - **Cancel:** &#x60;mailCancel&#x60;. 
     *
     */
    @GET
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read full detail for one Mail Baby service including SMTP credentials", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Mail Information.", response = MailSchema.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailSchema getMailInfo(@PathParam("id") Integer id);

    /**
     * List billing invoices linked to this Mail Baby service
     *
     * Returns every invoice associated with this &#x60;mail_id&#x60; via the shared &#x60;InvoicesList&#x60; workflow. Use to render per-service billing history or find unpaid invoices to pay via &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;addMail&#x60;, &#x60;mailCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, currency, paid, date, due_date, description, module: \&quot;mail\&quot;, service}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404 Invalid Service&#x60;. 
     *
     */
    @GET
    @Path("/{id}/invoices")
    @Produces({ "application/json" })
    @ApiOperation(value = "List billing invoices linked to this Mail Baby service", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Get Invoices response", response = ChargeInvoiceRows.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ChargeInvoiceRows getMailInvoices(@PathParam("id") Integer id);

    /**
     * List every Mail Baby SMTP relay service on the account
     *
     * Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a &#x60;mail_id&#x60; to pass to other Mail endpoints. Filtered server-side by &#x60;mail_custid&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;MailRow&#x60;: - &#x60;mail_id&#x60; (integer) — canonical id. - &#x60;mail_username&#x60; (string) — SMTP username (e.g. &#x60;mb1234&#x60;). - &#x60;mail_status&#x60; (string enum) — &#x60;active&#x60; / &#x60;pending&#x60; / &#x60;canceled&#x60; / &#x60;suspended&#x60;. - &#x60;services_name&#x60; (string) — plan label. - &#x60;repeat_invoices_cost&#x60; (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-service detail:** &#x60;getMailInfo&#x60;. - **Send mail:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Reputation:** &#x60;getMailDeliverability&#x60; / &#x60;getMailBlocks&#x60; / &#x60;getMailDelist&#x60;. - **Order a new service:** &#x60;getNewMail&#x60; → &#x60;putMail&#x60; → &#x60;addMail&#x60;. 
     *
     */
    @GET
    
    @Produces({ "application/json" })
    @ApiOperation(value = "List every Mail Baby SMTP relay service on the account", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The listing of `Mail` services on your account.", response = MailRow.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public List<MailRow> getMailList();

    /**
     * Resend the Mail Baby welcome email with SMTP credentials and setup info
     *
     * Re-runs the &#x60;mail_welcome_email&#x60; plugin function — composes and sends the standard welcome email (SMTP host &#x60;relay.mailbaby.net&#x60;, port, username &#x60;mb{mail_id}&#x60;, current password, configuration tips) to the account-on-file. Use after &#x60;resetMailPassword&#x60; to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: &#x60;resetMailPassword&#x60;, &#x60;getMailInfo&#x60;. Cross-module welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/welcome_email")
    @Produces({ "application/json" })
    @ApiOperation(value = "Resend the Mail Baby welcome email with SMTP credentials and setup info", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse getMailWelcomeEmail(@PathParam("id") Integer id);

    /**
     * Read the Mail Baby order catalog — plans, package costs, service-type metadata
     *
     * Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: &#x60;packageCosts&#x60; keyed by &#x60;services_id&#x60; (only buyable services where &#x60;services_buyable&#x3D;1&#x60;) and the full &#x60;serviceTypes&#x60; map. Read-only. Pricing is normalized to the customer&#39;s currency via &#x60;getCurrency()&#x60;. Sibling ops: &#x60;putMail&#x60;, &#x60;addMail&#x60;, &#x60;getMailList&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;MailOrder&#x60;): - &#x60;packageCosts&#x60; (object) — &#x60;{&lt;services_id&gt;: &lt;cost&gt;}&#x60; per buyable plan. - &#x60;serviceTypes&#x60; (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putMail&#x60; (validate + quote — no charge), &#x60;addMail&#x60; (place order). 
     *
     */
    @GET
    @Path("/order")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read the Mail Baby order catalog — plans, package costs, service-type metadata", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Mail ordering information.", response = MailOrder.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailOrder getNewMail();

    /**
     * List configured deny rules (sender/recipient blocks) for a Mail Baby service
     *
     * Returns every &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60; — local sender/recipient block rules the customer has configured. Sibling ops: &#x60;addRule&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** Array of &#x60;DenyRuleRecord&#x60; — &#x60;{id, user, type, data, created}&#x60;. &#x60;type&#x60; values: - &#x60;domain&#x60; — block by sender domain. - &#x60;email&#x60; — block by exact sender email. - &#x60;startswith&#x60; — block when sender local-part starts with a string. - &#x60;destination&#x60; — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/rules")
    @Produces({ "application/json" })
    @ApiOperation(value = "List configured deny rules (sender/recipient blocks) for a Mail Baby service", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "List of configured deny rules.", response = DenyRuleRecord.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public List<DenyRuleRecord> getRules(@PathParam("id") Integer id);

    /**
     * Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
     *
     * Returns aggregate usage and cost metrics for the SMTP user behind &#x60;mail_id&#x60; from the ZoneMTA &#x60;mail_messagestore&#x60; / &#x60;mail_senderdelivered&#x60; tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;time&#x60; (string enum, optional, default &#x60;1h&#x60;) — window: &#x60;all&#x60; / &#x60;billing&#x60; (current invoice cycle) / &#x60;month&#x60; / &#x60;7d&#x60; / &#x60;24h&#x60; / &#x60;1d&#x60; / &#x60;1h&#x60;.  **Returns** (schema &#x60;MailStatsType&#x60;): - &#x60;time&#x60; (string) — echo of selected window. - &#x60;usage&#x60; (integer) — full-billing-cycle send count. - &#x60;currency&#x60;, &#x60;currencySymbol&#x60; (string). - &#x60;cost&#x60; (decimal) — projected &#x3D; base + &#x60;$0.20 / 1000 emails&#x60;. - &#x60;received&#x60;, &#x60;sent&#x60; (integer). - &#x60;volume.to&#x60;, &#x60;volume.from&#x60;, &#x60;volume.ip&#x60; (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid or missing mail order id&#x60;, &#x60;401&#x60;. 
     *
     */
    @GET
    @Path("/{id}/stats")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read Mail Baby usage counts, send volume totals, top destinations, and projected cost", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Mail service usage statistics.", response = MailStatsType.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailStatsType getStats(@PathParam("id") Integer id, @QueryParam("time") String time);

    /**
     * Cancel a Mail Baby service and stop the recurring invoice
     *
     * Cancels the Mail Baby service through the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#39;mail&#39;&#x60;. SMTP credentials are deactivated, the service transitions to canceled, the &#x60;repeat_invoice&#x60; is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via &#x60;addMail&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;MailCancelResponse&#x60;.  **Side effects:** - Sets &#x60;mail_status&#x3D;&#39;canceled&#39;&#x60;. - Marks &#x60;repeat_invoices&#x60; non-renewing. - ZoneMTA-side: stops accepting new submissions for &#x60;mb{mail_id}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Sibling cancels:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;webhostingCancel&#x60;, etc. - **Re-provision:** &#x60;addMail&#x60;. 
     *
     */
    @DELETE
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Cancel a Mail Baby service and stop the recurring invoice", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Mail Cancel", response = MailCancel200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public MailCancel200Response mailCancel(@PathParam("id") Integer id);

    /**
     * Delist a sender from rspamd / mailchannels / mailbaby block lists
     *
     * Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/delist")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Delist a sender from rspamd / mailchannels / mailbaby block lists", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse postMailDelist(@PathParam("id") Integer id, MailDelistRequest mailDelistRequest);

    /**
     * Validate Mail Baby order, quote pricing, and verify coupon — no charge
     *
     * Step 2 of the Mail Baby order flow. Dry-runs the order through &#x60;validate_buy_mail()&#x60; without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before &#x60;addMail&#x60;. Sibling ops: &#x60;getNewMail&#x60;, &#x60;addMail&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail.packageCosts&#x60; keys. - &#x60;coupon&#x60; (string, optional) — coupon code.  **Returns:** - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if order can safely be POSTed. - &#x60;errors&#x60; (array) — validation messages. - &#x60;serviceType&#x60;, &#x60;serviceCost&#x60;, &#x60;originalCost&#x60;, &#x60;repeatServiceCost&#x60; (numeric). - &#x60;password&#x60; (string) — auto-generated SMTP password preview. - &#x60;introFrequency&#x60; (integer). - &#x60;coupon&#x60;, &#x60;couponCode&#x60; (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - &#x60;200&#x60; with &#x60;continue&#x3D;false&#x60; and &#x60;errors[]&#x60; — validation problems. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewMail&#x60; (catalog). - **Place order:** &#x60;addMail&#x60;. 
     *
     */
    @PUT
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Validate Mail Baby order, quote pricing, and verify coupon — no charge", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Validate Mail order response."),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public void putMail(MailOrderRequest mailOrderRequest);

    /**
     * Rotate the SMTP password and email the new credential to the account owner
     *
     * Generates a new 20-char SMTP password (lower/upper/digits via &#x60;generate_password&#x60;), writes it to the ZoneMTA Mongo &#x60;users&#x60; collection for username &#x60;mb{mail_id}&#x60;, logs the change to &#x60;App::history()&#x60;, and emails the result to the account-on-file via &#x60;client_email.tpl&#x60;. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via &#x60;getMailWelcomeEmail&#x60; or &#x60;getMailInfo&#x60;. Sibling ops: &#x60;getMailWelcomeEmail&#x60;, &#x60;getMailInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Side effects:** - Mongo update on ZoneMTA &#x60;users&#x60; for &#x60;mb{mail_id}&#x60;. - &#x60;App::history()&#x60; audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @GET
    @Path("/{id}/reset_password")
    @Produces({ "application/json" })
    @ApiOperation(value = "Rotate the SMTP password and email the new credential to the account owner", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse resetMailPassword(@PathParam("id") Integer id);

    /**
     * Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
     *
     * Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#39;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/advsend")
    @Consumes({ "application/json", "application/x-www-form-urlencoded" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Email queued successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse sendAdvMail(@PathParam("id") Integer id, SendMailAdv sendMailAdv);

    /**
     * Send a simple single-recipient email through the Mail Baby SMTP relay
     *
     * Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @POST
    @Path("/{id}/send")
    @Consumes({ "application/json", "application/x-www-form-urlencoded" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Send a simple single-recipient email through the Mail Baby SMTP relay", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Email queued successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse sendMail(@PathParam("id") Integer id, SendMail sendMail);

    /**
     * Update an existing Mail Baby alert by alert_id
     *
     * Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @PUT
    @Path("/{id}/alerts")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update an existing Mail Baby alert by alert_id", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse updateMailAlert(@PathParam("id") Integer id, MailAlertUpdateRequest mailAlertUpdateRequest);

    /**
     * POST mutation hook for the Mail Baby service detail page
     *
     * POST mutation hook for the Mail Baby service detail page. Currently delegates to the same &#x60;View::go()&#x60; handler as &#x60;getMailInfo&#x60; — placeholder for future field updates. Does NOT rotate credentials (use &#x60;resetMailPassword&#x60;) and does NOT change billing (use &#x60;/billing&#x60; endpoints). Sibling ops: &#x60;getMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body:** Form fields.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read:** &#x60;getMailInfo&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. 
     *
     */
    @POST
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "POST mutation hook for the Mail Baby service detail page", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse updateMailInfo(@PathParam("id") String id);

    /**
     * Update an existing Mail Baby deny rule&#39;s type and match data
     *
     * Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#39;{mail_username}&#39;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
     *
     */
    @PUT
    @Path("/{id}/rules/{rule}")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update an existing Mail Baby deny rule's type and match data", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Deny rule updated successfully.", response = GenericResponse.class),
        @ApiResponse(code = 400, message = "The specified resource was not found", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = GetAccountInfo401Response.class) })
    public GenericResponse updateRule(@PathParam("id") Integer id, @PathParam("rule") String rule, DenyRuleNew denyRuleNew);

    /**
     * Search and paginate per-message Mail Baby delivery log entries
     *
     * Paginated search over ZoneMTA&#39;s &#x60;mail_messagestore&#x60; joined with &#x60;mail_senderdelivered&#x60; and &#x60;mail_queuerelease&#x60;. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: &#x60;getStats&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;delistBlock&#x60; (clear a block surfaced by a bounce).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60; (omit to span all owned mail users — admin-only).  **Query params:** - &#x60;from&#x60;, &#x60;to&#x60; (string) — envelope address, exact match. - &#x60;headerfrom&#x60;, &#x60;replyto&#x60; (string) — header address, exact match; validated as email. - &#x60;subject&#x60; (string) — LIKE match on subject. - &#x60;mailid&#x60; (string, 18–19 chars) — relay id, exact. - &#x60;messageId&#x60; (string) — Message-ID header, substring match. - &#x60;origin&#x60; (string) — submitter IP, exact. - &#x60;mx&#x60; (string) — destination MX hostname, LIKE. - &#x60;delivered&#x60; (integer 0/1). - &#x60;startDate&#x60;, &#x60;endDate&#x60; (Unix timestamp or &#x60;strtotime&#x60;-parseable string). - &#x60;skip&#x60; (integer, default 0), &#x60;limit&#x60; (integer 1–10000, default 100). - &#x60;sort&#x60; (&#x60;time&#x60;), &#x60;dir&#x60; (&#x60;asc&#x60;/&#x60;desc&#x60;, default &#x60;desc&#x60;). - &#x60;groupby&#x60; (&#x60;recipient&#x60; default — one row per delivery attempt; &#x60;message&#x60; — one row per &#x60;_id&#x60;).  **Returns** (schema &#x60;MailLog&#x60;): &#x60;{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; bad input, &#x60;401&#x60;. 
     *
     */
    @GET
    @Path("/{id}/log")
    @Produces({ "application/json" })
    @ApiOperation(value = "Search and paginate per-message Mail Baby delivery log entries", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Paginated list of mail log entries matching the specified filters.", response = MailLog.class),
        @ApiResponse(code = 400, message = "bad input parameter") })
    public MailLog viewMailLog(@PathParam("id") Integer id, @QueryParam("id") Long id2, @QueryParam("origin") String origin, @QueryParam("mx") String mx, @QueryParam("from") String from, @QueryParam("to") String to, @QueryParam("subject") String subject, @QueryParam("mailid") String mailid, @QueryParam("messageId") String messageId, @QueryParam("replyto") String replyto, @QueryParam("headerfrom") String headerfrom, @QueryParam("delivered") Integer delivered, @QueryParam("skip") @DefaultValue("0")Integer skip, @QueryParam("limit") @DefaultValue("100")Integer limit, @QueryParam("startDate") ViewMailLogStartDateParameter startDate, @QueryParam("endDate") ViewMailLogStartDateParameter endDate, @QueryParam("sort") @DefaultValue("time")String sort, @QueryParam("dir") @DefaultValue("desc")String dir, @QueryParam("groupby") @DefaultValue("recipient")String groupby);
}
