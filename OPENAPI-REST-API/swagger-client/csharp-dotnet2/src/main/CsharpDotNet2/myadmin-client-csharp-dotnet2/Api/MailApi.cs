using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMailApi
    {
        /// <summary>
        /// Place a new Mail Baby order, generate invoice, and queue provisioning Step 3 of the Mail Baby order flow. Revalidates via &#x60;validate_buy_mail()&#x60;, then calls &#x60;place_buy_mail()&#x60; to create a &#x60;Repeat_Invoice&#x60; recurring billing row, an initial &#x60;invoices&#x60; row, and a &#x60;mail&#x60; service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call &#x60;putMail&#x60; first. Sibling ops: &#x60;getNewMail&#x60;, &#x60;putMail&#x60;, &#x60;getMailInfo&#x60;, &#x60;initiatePayment&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail&#x60;. - &#x60;coupon&#x60; (string, optional). - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60;. On validation failure: &#x60;{continue: false, errors: [...]}&#x60; with HTTP 200.  **Side effects:** - Inserts &#x60;mail&#x60; service row in &#x60;pending&#x60; status. - Inserts &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;. - **Confirm activation:** &#x60;getMailInfo&#x60; (poll until &#x60;mail_status&#x3D;&#x3D;&#x27;active&#x27;&#x60;). - **Resend credentials:** &#x60;getMailWelcomeEmail&#x60;.  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /mail/order                                    -&gt; catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -&gt; quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -&gt; { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -&gt; pay (initiatePayment) GET /mail/{serviceId}                              -&gt; poll until mail_status&#x3D;&#x3D;&#x27;active&#x27; &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        ServiceOrderPostResponse AddMail (MailOrderRequest body);
        /// <summary>
        /// Create a new deny rule to auto-block matching submissions Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body">These are the fields needed to create a new email deny rule.</param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse AddRule (DenyRuleNew body, int? id);
        /// <summary>
        /// Create a new deny rule to auto-block matching submissions Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="user"></param>
        /// <param name="type"></param>
        /// <param name="data"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse AddRule (string user, string type, string data, int? id);
        /// <summary>
        /// Create a new Mail Baby alert for delivery, bounce, or quota events Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse CreateMailAlert (MailAlertRequest body, int? id);
        /// <summary>
        /// Create a new Mail Baby alert for delivery, bounce, or quota events Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="type"></param>
        /// <param name="value"></param>
        /// <param name="to"></param>
        /// <param name="enabled"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse CreateMailAlert (string type, string value, string to, string enabled, int? id);
        /// <summary>
        /// Delete a Mail Baby alert by alert_id (hard delete — no recovery) Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse DeleteMailAlert (IdAlertsBody body, int? id);
        /// <summary>
        /// Delete a Mail Baby alert by alert_id (hard delete — no recovery) Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="alertId"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse DeleteMailAlert (int? alertId, int? id);
        /// <summary>
        /// Delete a Mail Baby deny rule by rule ID (hard delete — no recovery) Hard-deletes a single &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60;. **Irreversible** — no audit copy preserved. Query filter &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; prevents cross-tenant deletes; passing a &#x60;rule&#x60; belonging to a different mail order is silently a no-op (still returns success). Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;updateRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Returns:** &#x60;\&quot;Block deleted successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the Rules entry.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse DeleteRule (int? id, string rule);
        /// <summary>
        /// Delist a sender email from rspamd / mailchannels / mailbaby block lists Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#x27;...&#x27; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="email"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse DelistBlock (string email, int? id);
        /// <summary>
        /// Delist a sender email from rspamd / mailchannels / mailbaby block lists Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#x27;...&#x27; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse DelistBlock (EmailAddress body, int? id);
        /// <summary>
        /// List configured delivery/bounce/quota alerts for one Mail Baby service Returns every alert row from &#x60;alerts&#x60; matching this service. Each row carries &#x60;alert_id&#x60; (use with PUT/DELETE), &#x60;alert_type&#x60;, &#x60;alert_value&#x60; (threshold), &#x60;alert_to&#x60; (notification email), &#x60;alert_enabled&#x60;, and timestamps. Sibling ops: &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailAlertsResponse&#x60;): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailAlertsResponse</returns>
        MailAlertsResponse GetMailAlerts (int? id);
        /// <summary>
        /// List recent local-blocklist hits and spam-trap captures for the mail user Returns relay-side block events for the SMTP user behind &#x60;mail_id&#x60; — the last 24 hours of &#x60;LOCAL_BL_RCPT&#x60; and &#x60;MBTRAP&#x60; rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing &#x60;@&#x60; / &#x60;smtp&#x60; / &#x60;socks5&#x60; / &#x60;socks4&#x60; more than 4 times). Use the &#x60;from&#x60; value with &#x60;delistBlock&#x60; or &#x60;postMailDelist&#x60; to clear a block. Sibling ops: &#x60;delistBlock&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailBlocks&#x60;): - &#x60;local&#x60; (array) — rspamd &#x60;LOCAL_BL_RCPT&#x60; hits: &#x60;{date, from, messageId, subject, to}&#x60;. - &#x60;mbtrap&#x60; (array) — spam-trap captures (&#x60;MBTRAP&#x60; symbol): same shape. - &#x60;subject&#x60; (array) — senders flagged by subject-line heuristic: &#x60;{from, subject}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Clear a block:** &#x60;delistBlock&#x60; (POST &#x60;/mail/{id}/blocks/delete&#x60;). - **Broader delist UI:** &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailBlocks</returns>
        MailBlocks GetMailBlocks (int? id);
        /// <summary>
        /// Read blocklist diagnostics and find senders eligible for delisting Returns a richer diagnostic snapshot than &#x60;getMailBlocks&#x60; — intended for the delist UI. Use any &#x60;SMTPFrom&#x60;/&#x60;from&#x60; value as the &#x60;unblock&#x60; field for &#x60;postMailDelist&#x60;. Sibling ops: &#x60;postMailDelist&#x60;, &#x60;getMailBlocks&#x60;, &#x60;delistBlock&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailDelistResponse&#x60;): - &#x60;id&#x60; (integer) — &#x60;mail_id&#x60; echo. - &#x60;local&#x60;, &#x60;mbtrap&#x60; (array) — last 24h rspamd hits with capitalized keys (&#x60;Date&#x60;, &#x60;SMTPFrom&#x60;, &#x60;MessageId&#x60;, &#x60;Subject&#x60;, &#x60;MimeRecipients&#x60;). - &#x60;subject&#x60; (array) — credential-leak-heuristic firings (3-day window). - &#x60;manual&#x60; (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailDelistResponse</returns>
        MailDelistResponse GetMailDelist (int? id);
        /// <summary>
        /// Read delivered vs bounced totals broken down by sender (or by recipient domain) Returns deliverability analytics from &#x60;MailDeliveryStats&#x60; (Dragonfly cache) for the SMTP user behind &#x60;mail_id&#x60;. Default pivot is by sender; pass &#x60;?filter_domain&#x3D;1&#x60; to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;filter_domain&#x60; (string &#x60;1&#x60;, optional) — pivot by recipient domain instead of sender.  **Returns** (schema &#x60;MailDeliverabilityResponse&#x60;): - &#x60;stat&#x60;: &#x60;{delivered, bounced, percent}&#x60; — totals and bounce ratio. - &#x60;header&#x60; (string), &#x60;col1&#x60; (string) — table headers. - &#x60;table_data&#x60; (array) — rows of &#x60;[&lt;sender-or-domain&gt;, bounced, delivered, bouncePercent]&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailDeliverabilityResponse</returns>
        MailDeliverabilityResponse GetMailDeliverability (int? id);
        /// <summary>
        /// Read full detail for one Mail Baby service including SMTP credentials Returns the full &#x60;ViewMail&#x60; payload for one Mail Baby service — &#x60;serviceInfo&#x60;, &#x60;serviceType&#x60;, and &#x60;client_links&#x60; (URLs rewritten to API paths, e.g. &#x60;view_mail_log&#x60; → &#x60;log&#x60;). Admin fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: &#x60;getMailList&#x60;, &#x60;updateMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;, &#x60;getMailWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailSchema&#x60;): - &#x60;serviceInfo&#x60; — &#x60;mail_id&#x60;, &#x60;mail_username&#x60; (e.g. &#x60;mb1234&#x60;), &#x60;mail_status&#x60;, &#x60;mail_invoice&#x60;, &#x60;mail_custid&#x60;, dates, currency. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Send:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. - **Reset credentials:** &#x60;getMailWelcomeEmail&#x60;. - **Cancel:** &#x60;mailCancel&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailSchema</returns>
        MailSchema GetMailInfo (int? id);
        /// <summary>
        /// List billing invoices linked to this Mail Baby service Returns every invoice associated with this &#x60;mail_id&#x60; via the shared &#x60;InvoicesList&#x60; workflow. Use to render per-service billing history or find unpaid invoices to pay via &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;addMail&#x60;, &#x60;mailCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, currency, paid, date, due_date, description, module: \&quot;mail\&quot;, service}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404 Invalid Service&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        ChargeInvoiceRows GetMailInvoices (int? id);
        /// <summary>
        /// List every Mail Baby SMTP relay service on the account Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a &#x60;mail_id&#x60; to pass to other Mail endpoints. Filtered server-side by &#x60;mail_custid&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;MailRow&#x60;: - &#x60;mail_id&#x60; (integer) — canonical id. - &#x60;mail_username&#x60; (string) — SMTP username (e.g. &#x60;mb1234&#x60;). - &#x60;mail_status&#x60; (string enum) — &#x60;active&#x60; / &#x60;pending&#x60; / &#x60;canceled&#x60; / &#x60;suspended&#x60;. - &#x60;services_name&#x60; (string) — plan label. - &#x60;repeat_invoices_cost&#x60; (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-service detail:** &#x60;getMailInfo&#x60;. - **Send mail:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Reputation:** &#x60;getMailDeliverability&#x60; / &#x60;getMailBlocks&#x60; / &#x60;getMailDelist&#x60;. - **Order a new service:** &#x60;getNewMail&#x60; → &#x60;putMail&#x60; → &#x60;addMail&#x60;. 
        /// </summary>
        /// <returns>List&lt;MailRow&gt;</returns>
        List<MailRow> GetMailList ();
        /// <summary>
        /// Resend the Mail Baby welcome email with SMTP credentials and setup info Re-runs the &#x60;mail_welcome_email&#x60; plugin function — composes and sends the standard welcome email (SMTP host &#x60;relay.mailbaby.net&#x60;, port, username &#x60;mb{mail_id}&#x60;, current password, configuration tips) to the account-on-file. Use after &#x60;resetMailPassword&#x60; to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: &#x60;resetMailPassword&#x60;, &#x60;getMailInfo&#x60;. Cross-module welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse GetMailWelcomeEmail (int? id);
        /// <summary>
        /// Read the Mail Baby order catalog — plans, package costs, service-type metadata Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: &#x60;packageCosts&#x60; keyed by &#x60;services_id&#x60; (only buyable services where &#x60;services_buyable&#x3D;1&#x60;) and the full &#x60;serviceTypes&#x60; map. Read-only. Pricing is normalized to the customer&#x27;s currency via &#x60;getCurrency()&#x60;. Sibling ops: &#x60;putMail&#x60;, &#x60;addMail&#x60;, &#x60;getMailList&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;MailOrder&#x60;): - &#x60;packageCosts&#x60; (object) — &#x60;{&lt;services_id&gt;: &lt;cost&gt;}&#x60; per buyable plan. - &#x60;serviceTypes&#x60; (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putMail&#x60; (validate + quote — no charge), &#x60;addMail&#x60; (place order). 
        /// </summary>
        /// <returns>MailOrder</returns>
        MailOrder GetNewMail ();
        /// <summary>
        /// List configured deny rules (sender/recipient blocks) for a Mail Baby service Returns every &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; — local sender/recipient block rules the customer has configured. Sibling ops: &#x60;addRule&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** Array of &#x60;DenyRuleRecord&#x60; — &#x60;{id, user, type, data, created}&#x60;. &#x60;type&#x60; values: - &#x60;domain&#x60; — block by sender domain. - &#x60;email&#x60; — block by exact sender email. - &#x60;startswith&#x60; — block when sender local-part starts with a string. - &#x60;destination&#x60; — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>List&lt;DenyRuleRecord&gt;</returns>
        List<DenyRuleRecord> GetRules (int? id);
        /// <summary>
        /// Read Mail Baby usage counts, send volume totals, top destinations, and projected cost Returns aggregate usage and cost metrics for the SMTP user behind &#x60;mail_id&#x60; from the ZoneMTA &#x60;mail_messagestore&#x60; / &#x60;mail_senderdelivered&#x60; tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;time&#x60; (string enum, optional, default &#x60;1h&#x60;) — window: &#x60;all&#x60; / &#x60;billing&#x60; (current invoice cycle) / &#x60;month&#x60; / &#x60;7d&#x60; / &#x60;24h&#x60; / &#x60;1d&#x60; / &#x60;1h&#x60;.  **Returns** (schema &#x60;MailStatsType&#x60;): - &#x60;time&#x60; (string) — echo of selected window. - &#x60;usage&#x60; (integer) — full-billing-cycle send count. - &#x60;currency&#x60;, &#x60;currencySymbol&#x60; (string). - &#x60;cost&#x60; (decimal) — projected &#x3D; base + &#x60;$0.20 / 1000 emails&#x60;. - &#x60;received&#x60;, &#x60;sent&#x60; (integer). - &#x60;volume.to&#x60;, &#x60;volume.from&#x60;, &#x60;volume.ip&#x60; (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid or missing mail order id&#x60;, &#x60;401&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="time">The timeframe for the statistics.</param>
        /// <returns>MailStatsType</returns>
        MailStatsType GetStats (int? id, string time);
        /// <summary>
        /// Cancel a Mail Baby service and stop the recurring invoice Cancels the Mail Baby service through the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#x27;mail&#x27;&#x60;. SMTP credentials are deactivated, the service transitions to canceled, the &#x60;repeat_invoice&#x60; is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via &#x60;addMail&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;MailCancelResponse&#x60;.  **Side effects:** - Sets &#x60;mail_status&#x3D;&#x27;canceled&#x27;&#x60;. - Marks &#x60;repeat_invoices&#x60; non-renewing. - ZoneMTA-side: stops accepting new submissions for &#x60;mb{mail_id}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Sibling cancels:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;webhostingCancel&#x60;, etc. - **Re-provision:** &#x60;addMail&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>InlineResponse2009</returns>
        InlineResponse2009 MailCancel (int? id);
        /// <summary>
        /// Delist a sender from rspamd / mailchannels / mailbaby block lists Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostMailDelist (MailDelistRequest body, int? id);
        /// <summary>
        /// Delist a sender from rspamd / mailchannels / mailbaby block lists Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="unblock"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostMailDelist (string unblock, int? id);
        /// <summary>
        /// Validate Mail Baby order, quote pricing, and verify coupon — no charge Step 2 of the Mail Baby order flow. Dry-runs the order through &#x60;validate_buy_mail()&#x60; without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before &#x60;addMail&#x60;. Sibling ops: &#x60;getNewMail&#x60;, &#x60;addMail&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail.packageCosts&#x60; keys. - &#x60;coupon&#x60; (string, optional) — coupon code.  **Returns:** - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if order can safely be POSTed. - &#x60;errors&#x60; (array) — validation messages. - &#x60;serviceType&#x60;, &#x60;serviceCost&#x60;, &#x60;originalCost&#x60;, &#x60;repeatServiceCost&#x60; (numeric). - &#x60;password&#x60; (string) — auto-generated SMTP password preview. - &#x60;introFrequency&#x60; (integer). - &#x60;coupon&#x60;, &#x60;couponCode&#x60; (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - &#x60;200&#x60; with &#x60;continue&#x3D;false&#x60; and &#x60;errors[]&#x60; — validation problems. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewMail&#x60; (catalog). - **Place order:** &#x60;addMail&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        void PutMail (MailOrderRequest body);
        /// <summary>
        /// Rotate the SMTP password and email the new credential to the account owner Generates a new 20-char SMTP password (lower/upper/digits via &#x60;generate_password&#x60;), writes it to the ZoneMTA Mongo &#x60;users&#x60; collection for username &#x60;mb{mail_id}&#x60;, logs the change to &#x60;App::history()&#x60;, and emails the result to the account-on-file via &#x60;client_email.tpl&#x60;. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via &#x60;getMailWelcomeEmail&#x60; or &#x60;getMailInfo&#x60;. Sibling ops: &#x60;getMailWelcomeEmail&#x60;, &#x60;getMailInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Side effects:** - Mongo update on ZoneMTA &#x60;users&#x60; for &#x60;mb{mail_id}&#x60;. - &#x60;App::history()&#x60; audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse ResetMailPassword (int? id);
        /// <summary>
        /// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#x27;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse SendAdvMail (SendMailAdv body, int? id);
        /// <summary>
        /// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#x27;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. 
        /// </summary>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="from"></param>
        /// <param name="to"></param>
        /// <param name="replyto"></param>
        /// <param name="cc"></param>
        /// <param name="bcc"></param>
        /// <param name="attachments"></param>
        /// <param name="id2"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse SendAdvMail (string subject, string body, EmailAddressName from, List<EmailAddressName> to, List<EmailAddressName> replyto, List<EmailAddressName> cc, List<EmailAddressName> bcc, List<MailAttachment> attachments, long? id2, int? id);
        /// <summary>
        /// Send a simple single-recipient email through the Mail Baby SMTP relay Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse SendMail (SendMail body, int? id);
        /// <summary>
        /// Send a simple single-recipient email through the Mail Baby SMTP relay Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="to"></param>
        /// <param name="from"></param>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse SendMail (string to, string from, string subject, string body, int? id);
        /// <summary>
        /// Update an existing Mail Baby alert by alert_id Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateMailAlert (MailAlertUpdateRequest body, int? id);
        /// <summary>
        /// Update an existing Mail Baby alert by alert_id Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="alertId"></param>
        /// <param name="type"></param>
        /// <param name="value"></param>
        /// <param name="to"></param>
        /// <param name="enabled"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateMailAlert (int? alertId, string type, string value, string to, string enabled, int? id);
        /// <summary>
        /// POST mutation hook for the Mail Baby service detail page POST mutation hook for the Mail Baby service detail page. Currently delegates to the same &#x60;View::go()&#x60; handler as &#x60;getMailInfo&#x60; — placeholder for future field updates. Does NOT rotate credentials (use &#x60;resetMailPassword&#x60;) and does NOT change billing (use &#x60;/billing&#x60; endpoints). Sibling ops: &#x60;getMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body:** Form fields.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read:** &#x60;getMailInfo&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateMailInfo (string id);
        /// <summary>
        /// Update an existing Mail Baby deny rule&#x27;s type and match data Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the deny rule to update.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse UpdateRule (DenyRuleNew body, int? id, string rule);
        /// <summary>
        /// Update an existing Mail Baby deny rule&#x27;s type and match data Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="user"></param>
        /// <param name="type"></param>
        /// <param name="data"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the deny rule to update.</param>
        /// <returns>GenericResponse</returns>
        GenericResponse UpdateRule (string user, string type, string data, int? id, string rule);
        /// <summary>
        /// Search and paginate per-message Mail Baby delivery log entries Paginated search over ZoneMTA&#x27;s &#x60;mail_messagestore&#x60; joined with &#x60;mail_senderdelivered&#x60; and &#x60;mail_queuerelease&#x60;. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: &#x60;getStats&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;delistBlock&#x60; (clear a block surfaced by a bounce).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60; (omit to span all owned mail users — admin-only).  **Query params:** - &#x60;from&#x60;, &#x60;to&#x60; (string) — envelope address, exact match. - &#x60;headerfrom&#x60;, &#x60;replyto&#x60; (string) — header address, exact match; validated as email. - &#x60;subject&#x60; (string) — LIKE match on subject. - &#x60;mailid&#x60; (string, 18–19 chars) — relay id, exact. - &#x60;messageId&#x60; (string) — Message-ID header, substring match. - &#x60;origin&#x60; (string) — submitter IP, exact. - &#x60;mx&#x60; (string) — destination MX hostname, LIKE. - &#x60;delivered&#x60; (integer 0/1). - &#x60;startDate&#x60;, &#x60;endDate&#x60; (Unix timestamp or &#x60;strtotime&#x60;-parseable string). - &#x60;skip&#x60; (integer, default 0), &#x60;limit&#x60; (integer 1–10000, default 100). - &#x60;sort&#x60; (&#x60;time&#x60;), &#x60;dir&#x60; (&#x60;asc&#x60;/&#x60;desc&#x60;, default &#x60;desc&#x60;). - &#x60;groupby&#x60; (&#x60;recipient&#x60; default — one row per delivery attempt; &#x60;message&#x60; — one row per &#x60;_id&#x60;).  **Returns** (schema &#x60;MailLog&#x60;): &#x60;{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; bad input, &#x60;401&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="id">The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;.</param>
        /// <param name="origin">Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address.</param>
        /// <param name="mx">Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response.</param>
        /// <param name="from">Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;.</param>
        /// <param name="to">Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved.</param>
        /// <param name="subject">Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response.</param>
        /// <param name="mailid">Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;.</param>
        /// <param name="messageId">Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;.</param>
        /// <param name="replyto">Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set.</param>
        /// <param name="headerfrom">Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address.</param>
        /// <param name="delivered">Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status.</param>
        /// <param name="skip">Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip).</param>
        /// <param name="limit">Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages.</param>
        /// <param name="startDate">Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-15&#x60; or &#x60;last monday&#x60;.  Messages with a &#x60;time&#x60; value **greater than or equal to** this value will be included.</param>
        /// <param name="endDate">Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-31&#x60; or &#x60;yesterday&#x60;. Messages with a &#x60;time&#x60; value **less than or equal to** this value will be included.</param>
        /// <param name="sort">Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order).</param>
        /// <param name="dir">Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first.</param>
        /// <param name="groupby">Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode.</param>
        /// <returns>MailLog</returns>
        MailLog ViewMailLog (int? id, long? id, string origin, string mx, string from, string to, string subject, string mailid, string messageId, string replyto, string headerfrom, int? delivered, int? skip, int? limit, StartDate startDate, EndDate endDate, string sort, string dir, string groupby);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MailApi : IMailApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MailApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MailApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="MailApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MailApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Place a new Mail Baby order, generate invoice, and queue provisioning Step 3 of the Mail Baby order flow. Revalidates via &#x60;validate_buy_mail()&#x60;, then calls &#x60;place_buy_mail()&#x60; to create a &#x60;Repeat_Invoice&#x60; recurring billing row, an initial &#x60;invoices&#x60; row, and a &#x60;mail&#x60; service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call &#x60;putMail&#x60; first. Sibling ops: &#x60;getNewMail&#x60;, &#x60;putMail&#x60;, &#x60;getMailInfo&#x60;, &#x60;initiatePayment&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail&#x60;. - &#x60;coupon&#x60; (string, optional). - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60;. On validation failure: &#x60;{continue: false, errors: [...]}&#x60; with HTTP 200.  **Side effects:** - Inserts &#x60;mail&#x60; service row in &#x60;pending&#x60; status. - Inserts &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;. - **Confirm activation:** &#x60;getMailInfo&#x60; (poll until &#x60;mail_status&#x3D;&#x3D;&#x27;active&#x27;&#x60;). - **Resend credentials:** &#x60;getMailWelcomeEmail&#x60;.  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /mail/order                                    -&gt; catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -&gt; quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -&gt; { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -&gt; pay (initiatePayment) GET /mail/{serviceId}                              -&gt; poll until mail_status&#x3D;&#x3D;&#x27;active&#x27; &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        public ServiceOrderPostResponse AddMail (MailOrderRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddMail");
    
            var path = "/mail/order";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ServiceOrderPostResponse) ApiClient.Deserialize(response.Content, typeof(ServiceOrderPostResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a new deny rule to auto-block matching submissions Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body">These are the fields needed to create a new email deny rule.</param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse AddRule (DenyRuleNew body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddRule");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling AddRule");
    
            var path = "/mail/{id}/rules";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddRule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddRule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a new deny rule to auto-block matching submissions Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="user"></param>
        /// <param name="type"></param>
        /// <param name="data"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse AddRule (string user, string type, string data, int? id)
        {
            // verify the required parameter 'user' is set
            if (user == null) throw new ApiException(400, "Missing required parameter 'user' when calling AddRule");
            // verify the required parameter 'type' is set
            if (type == null) throw new ApiException(400, "Missing required parameter 'type' when calling AddRule");
            // verify the required parameter 'data' is set
            if (data == null) throw new ApiException(400, "Missing required parameter 'data' when calling AddRule");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling AddRule");
    
            var path = "/mail/{id}/rules";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (user != null) formParams.Add("user", ApiClient.ParameterToString(user)); // form parameter
if (type != null) formParams.Add("type", ApiClient.ParameterToString(type)); // form parameter
if (data != null) formParams.Add("data", ApiClient.ParameterToString(data)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddRule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddRule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a new Mail Baby alert for delivery, bounce, or quota events Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse CreateMailAlert (MailAlertRequest body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling CreateMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling CreateMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a new Mail Baby alert for delivery, bounce, or quota events Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="type"></param>
        /// <param name="value"></param>
        /// <param name="to"></param>
        /// <param name="enabled"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse CreateMailAlert (string type, string value, string to, string enabled, int? id)
        {
            // verify the required parameter 'type' is set
            if (type == null) throw new ApiException(400, "Missing required parameter 'type' when calling CreateMailAlert");
            // verify the required parameter 'value' is set
            if (value == null) throw new ApiException(400, "Missing required parameter 'value' when calling CreateMailAlert");
            // verify the required parameter 'to' is set
            if (to == null) throw new ApiException(400, "Missing required parameter 'to' when calling CreateMailAlert");
            // verify the required parameter 'enabled' is set
            if (enabled == null) throw new ApiException(400, "Missing required parameter 'enabled' when calling CreateMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling CreateMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (type != null) formParams.Add("type", ApiClient.ParameterToString(type)); // form parameter
if (value != null) formParams.Add("value", ApiClient.ParameterToString(value)); // form parameter
if (to != null) formParams.Add("to", ApiClient.ParameterToString(to)); // form parameter
if (enabled != null) formParams.Add("enabled", ApiClient.ParameterToString(enabled)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CreateMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Delete a Mail Baby alert by alert_id (hard delete — no recovery) Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse DeleteMailAlert (IdAlertsBody body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling DeleteMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Delete a Mail Baby alert by alert_id (hard delete — no recovery) Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="alertId"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse DeleteMailAlert (int? alertId, int? id)
        {
            // verify the required parameter 'alertId' is set
            if (alertId == null) throw new ApiException(400, "Missing required parameter 'alertId' when calling DeleteMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (alertId != null) formParams.Add("alert_id", ApiClient.ParameterToString(alertId)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Delete a Mail Baby deny rule by rule ID (hard delete — no recovery) Hard-deletes a single &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60;. **Irreversible** — no audit copy preserved. Query filter &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; prevents cross-tenant deletes; passing a &#x60;rule&#x60; belonging to a different mail order is silently a no-op (still returns success). Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;updateRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Returns:** &#x60;\&quot;Block deleted successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the Rules entry.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse DeleteRule (int? id, string rule)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteRule");
            // verify the required parameter 'rule' is set
            if (rule == null) throw new ApiException(400, "Missing required parameter 'rule' when calling DeleteRule");
    
            var path = "/mail/{id}/rules/{rule}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
path = path.Replace("{" + "rule" + "}", ApiClient.ParameterToString(rule));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteRule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteRule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Delist a sender email from rspamd / mailchannels / mailbaby block lists Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#x27;...&#x27; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="email"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse DelistBlock (string email, int? id)
        {
            // verify the required parameter 'email' is set
            if (email == null) throw new ApiException(400, "Missing required parameter 'email' when calling DelistBlock");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DelistBlock");
    
            var path = "/mail/{id}/blocks/delete";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (email != null) formParams.Add("email", ApiClient.ParameterToString(email)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DelistBlock: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DelistBlock: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Delist a sender email from rspamd / mailchannels / mailbaby block lists Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#x27;...&#x27; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse DelistBlock (EmailAddress body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling DelistBlock");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DelistBlock");
    
            var path = "/mail/{id}/blocks/delete";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DelistBlock: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DelistBlock: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// List configured delivery/bounce/quota alerts for one Mail Baby service Returns every alert row from &#x60;alerts&#x60; matching this service. Each row carries &#x60;alert_id&#x60; (use with PUT/DELETE), &#x60;alert_type&#x60;, &#x60;alert_value&#x60; (threshold), &#x60;alert_to&#x60; (notification email), &#x60;alert_enabled&#x60;, and timestamps. Sibling ops: &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailAlertsResponse&#x60;): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailAlertsResponse</returns>
        public MailAlertsResponse GetMailAlerts (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailAlerts");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailAlerts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailAlerts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailAlertsResponse) ApiClient.Deserialize(response.Content, typeof(MailAlertsResponse), response.Headers);
        }
    
        /// <summary>
        /// List recent local-blocklist hits and spam-trap captures for the mail user Returns relay-side block events for the SMTP user behind &#x60;mail_id&#x60; — the last 24 hours of &#x60;LOCAL_BL_RCPT&#x60; and &#x60;MBTRAP&#x60; rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing &#x60;@&#x60; / &#x60;smtp&#x60; / &#x60;socks5&#x60; / &#x60;socks4&#x60; more than 4 times). Use the &#x60;from&#x60; value with &#x60;delistBlock&#x60; or &#x60;postMailDelist&#x60; to clear a block. Sibling ops: &#x60;delistBlock&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailBlocks&#x60;): - &#x60;local&#x60; (array) — rspamd &#x60;LOCAL_BL_RCPT&#x60; hits: &#x60;{date, from, messageId, subject, to}&#x60;. - &#x60;mbtrap&#x60; (array) — spam-trap captures (&#x60;MBTRAP&#x60; symbol): same shape. - &#x60;subject&#x60; (array) — senders flagged by subject-line heuristic: &#x60;{from, subject}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Clear a block:** &#x60;delistBlock&#x60; (POST &#x60;/mail/{id}/blocks/delete&#x60;). - **Broader delist UI:** &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailBlocks</returns>
        public MailBlocks GetMailBlocks (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailBlocks");
    
            var path = "/mail/{id}/blocks";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailBlocks: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailBlocks: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailBlocks) ApiClient.Deserialize(response.Content, typeof(MailBlocks), response.Headers);
        }
    
        /// <summary>
        /// Read blocklist diagnostics and find senders eligible for delisting Returns a richer diagnostic snapshot than &#x60;getMailBlocks&#x60; — intended for the delist UI. Use any &#x60;SMTPFrom&#x60;/&#x60;from&#x60; value as the &#x60;unblock&#x60; field for &#x60;postMailDelist&#x60;. Sibling ops: &#x60;postMailDelist&#x60;, &#x60;getMailBlocks&#x60;, &#x60;delistBlock&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailDelistResponse&#x60;): - &#x60;id&#x60; (integer) — &#x60;mail_id&#x60; echo. - &#x60;local&#x60;, &#x60;mbtrap&#x60; (array) — last 24h rspamd hits with capitalized keys (&#x60;Date&#x60;, &#x60;SMTPFrom&#x60;, &#x60;MessageId&#x60;, &#x60;Subject&#x60;, &#x60;MimeRecipients&#x60;). - &#x60;subject&#x60; (array) — credential-leak-heuristic firings (3-day window). - &#x60;manual&#x60; (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailDelistResponse</returns>
        public MailDelistResponse GetMailDelist (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailDelist");
    
            var path = "/mail/{id}/delist";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailDelist: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailDelist: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailDelistResponse) ApiClient.Deserialize(response.Content, typeof(MailDelistResponse), response.Headers);
        }
    
        /// <summary>
        /// Read delivered vs bounced totals broken down by sender (or by recipient domain) Returns deliverability analytics from &#x60;MailDeliveryStats&#x60; (Dragonfly cache) for the SMTP user behind &#x60;mail_id&#x60;. Default pivot is by sender; pass &#x60;?filter_domain&#x3D;1&#x60; to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;filter_domain&#x60; (string &#x60;1&#x60;, optional) — pivot by recipient domain instead of sender.  **Returns** (schema &#x60;MailDeliverabilityResponse&#x60;): - &#x60;stat&#x60;: &#x60;{delivered, bounced, percent}&#x60; — totals and bounce ratio. - &#x60;header&#x60; (string), &#x60;col1&#x60; (string) — table headers. - &#x60;table_data&#x60; (array) — rows of &#x60;[&lt;sender-or-domain&gt;, bounced, delivered, bouncePercent]&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailDeliverabilityResponse</returns>
        public MailDeliverabilityResponse GetMailDeliverability (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailDeliverability");
    
            var path = "/mail/{id}/deliverability";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailDeliverability: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailDeliverability: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailDeliverabilityResponse) ApiClient.Deserialize(response.Content, typeof(MailDeliverabilityResponse), response.Headers);
        }
    
        /// <summary>
        /// Read full detail for one Mail Baby service including SMTP credentials Returns the full &#x60;ViewMail&#x60; payload for one Mail Baby service — &#x60;serviceInfo&#x60;, &#x60;serviceType&#x60;, and &#x60;client_links&#x60; (URLs rewritten to API paths, e.g. &#x60;view_mail_log&#x60; → &#x60;log&#x60;). Admin fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: &#x60;getMailList&#x60;, &#x60;updateMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;, &#x60;getMailWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailSchema&#x60;): - &#x60;serviceInfo&#x60; — &#x60;mail_id&#x60;, &#x60;mail_username&#x60; (e.g. &#x60;mb1234&#x60;), &#x60;mail_status&#x60;, &#x60;mail_invoice&#x60;, &#x60;mail_custid&#x60;, dates, currency. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Send:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. - **Reset credentials:** &#x60;getMailWelcomeEmail&#x60;. - **Cancel:** &#x60;mailCancel&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>MailSchema</returns>
        public MailSchema GetMailInfo (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailInfo");
    
            var path = "/mail/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailSchema) ApiClient.Deserialize(response.Content, typeof(MailSchema), response.Headers);
        }
    
        /// <summary>
        /// List billing invoices linked to this Mail Baby service Returns every invoice associated with this &#x60;mail_id&#x60; via the shared &#x60;InvoicesList&#x60; workflow. Use to render per-service billing history or find unpaid invoices to pay via &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;addMail&#x60;, &#x60;mailCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, currency, paid, date, due_date, description, module: \&quot;mail\&quot;, service}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404 Invalid Service&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        public ChargeInvoiceRows GetMailInvoices (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailInvoices");
    
            var path = "/mail/{id}/invoices";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailInvoices: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailInvoices: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ChargeInvoiceRows) ApiClient.Deserialize(response.Content, typeof(ChargeInvoiceRows), response.Headers);
        }
    
        /// <summary>
        /// List every Mail Baby SMTP relay service on the account Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a &#x60;mail_id&#x60; to pass to other Mail endpoints. Filtered server-side by &#x60;mail_custid&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;MailRow&#x60;: - &#x60;mail_id&#x60; (integer) — canonical id. - &#x60;mail_username&#x60; (string) — SMTP username (e.g. &#x60;mb1234&#x60;). - &#x60;mail_status&#x60; (string enum) — &#x60;active&#x60; / &#x60;pending&#x60; / &#x60;canceled&#x60; / &#x60;suspended&#x60;. - &#x60;services_name&#x60; (string) — plan label. - &#x60;repeat_invoices_cost&#x60; (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-service detail:** &#x60;getMailInfo&#x60;. - **Send mail:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Reputation:** &#x60;getMailDeliverability&#x60; / &#x60;getMailBlocks&#x60; / &#x60;getMailDelist&#x60;. - **Order a new service:** &#x60;getNewMail&#x60; → &#x60;putMail&#x60; → &#x60;addMail&#x60;. 
        /// </summary>
        /// <returns>List&lt;MailRow&gt;</returns>
        public List<MailRow> GetMailList ()
        {
    
            var path = "/mail";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<MailRow>) ApiClient.Deserialize(response.Content, typeof(List<MailRow>), response.Headers);
        }
    
        /// <summary>
        /// Resend the Mail Baby welcome email with SMTP credentials and setup info Re-runs the &#x60;mail_welcome_email&#x60; plugin function — composes and sends the standard welcome email (SMTP host &#x60;relay.mailbaby.net&#x60;, port, username &#x60;mb{mail_id}&#x60;, current password, configuration tips) to the account-on-file. Use after &#x60;resetMailPassword&#x60; to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: &#x60;resetMailPassword&#x60;, &#x60;getMailInfo&#x60;. Cross-module welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse GetMailWelcomeEmail (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetMailWelcomeEmail");
    
            var path = "/mail/{id}/welcome_email";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailWelcomeEmail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetMailWelcomeEmail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Read the Mail Baby order catalog — plans, package costs, service-type metadata Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: &#x60;packageCosts&#x60; keyed by &#x60;services_id&#x60; (only buyable services where &#x60;services_buyable&#x3D;1&#x60;) and the full &#x60;serviceTypes&#x60; map. Read-only. Pricing is normalized to the customer&#x27;s currency via &#x60;getCurrency()&#x60;. Sibling ops: &#x60;putMail&#x60;, &#x60;addMail&#x60;, &#x60;getMailList&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;MailOrder&#x60;): - &#x60;packageCosts&#x60; (object) — &#x60;{&lt;services_id&gt;: &lt;cost&gt;}&#x60; per buyable plan. - &#x60;serviceTypes&#x60; (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putMail&#x60; (validate + quote — no charge), &#x60;addMail&#x60; (place order). 
        /// </summary>
        /// <returns>MailOrder</returns>
        public MailOrder GetNewMail ()
        {
    
            var path = "/mail/order";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailOrder) ApiClient.Deserialize(response.Content, typeof(MailOrder), response.Headers);
        }
    
        /// <summary>
        /// List configured deny rules (sender/recipient blocks) for a Mail Baby service Returns every &#x60;mail_spam&#x60; row scoped to this service&#x27;s &#x60;mail_username&#x60; — local sender/recipient block rules the customer has configured. Sibling ops: &#x60;addRule&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** Array of &#x60;DenyRuleRecord&#x60; — &#x60;{id, user, type, data, created}&#x60;. &#x60;type&#x60; values: - &#x60;domain&#x60; — block by sender domain. - &#x60;email&#x60; — block by exact sender email. - &#x60;startswith&#x60; — block when sender local-part starts with a string. - &#x60;destination&#x60; — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>List&lt;DenyRuleRecord&gt;</returns>
        public List<DenyRuleRecord> GetRules (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetRules");
    
            var path = "/mail/{id}/rules";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRules: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetRules: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<DenyRuleRecord>) ApiClient.Deserialize(response.Content, typeof(List<DenyRuleRecord>), response.Headers);
        }
    
        /// <summary>
        /// Read Mail Baby usage counts, send volume totals, top destinations, and projected cost Returns aggregate usage and cost metrics for the SMTP user behind &#x60;mail_id&#x60; from the ZoneMTA &#x60;mail_messagestore&#x60; / &#x60;mail_senderdelivered&#x60; tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;time&#x60; (string enum, optional, default &#x60;1h&#x60;) — window: &#x60;all&#x60; / &#x60;billing&#x60; (current invoice cycle) / &#x60;month&#x60; / &#x60;7d&#x60; / &#x60;24h&#x60; / &#x60;1d&#x60; / &#x60;1h&#x60;.  **Returns** (schema &#x60;MailStatsType&#x60;): - &#x60;time&#x60; (string) — echo of selected window. - &#x60;usage&#x60; (integer) — full-billing-cycle send count. - &#x60;currency&#x60;, &#x60;currencySymbol&#x60; (string). - &#x60;cost&#x60; (decimal) — projected &#x3D; base + &#x60;$0.20 / 1000 emails&#x60;. - &#x60;received&#x60;, &#x60;sent&#x60; (integer). - &#x60;volume.to&#x60;, &#x60;volume.from&#x60;, &#x60;volume.ip&#x60; (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid or missing mail order id&#x60;, &#x60;401&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="time">The timeframe for the statistics.</param>
        /// <returns>MailStatsType</returns>
        public MailStatsType GetStats (int? id, string time)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetStats");
    
            var path = "/mail/{id}/stats";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (time != null) queryParams.Add("time", ApiClient.ParameterToString(time)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStats: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetStats: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailStatsType) ApiClient.Deserialize(response.Content, typeof(MailStatsType), response.Headers);
        }
    
        /// <summary>
        /// Cancel a Mail Baby service and stop the recurring invoice Cancels the Mail Baby service through the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#x27;mail&#x27;&#x60;. SMTP credentials are deactivated, the service transitions to canceled, the &#x60;repeat_invoice&#x60; is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via &#x60;addMail&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;MailCancelResponse&#x60;.  **Side effects:** - Sets &#x60;mail_status&#x3D;&#x27;canceled&#x27;&#x60;. - Marks &#x60;repeat_invoices&#x60; non-renewing. - ZoneMTA-side: stops accepting new submissions for &#x60;mb{mail_id}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Sibling cancels:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;webhostingCancel&#x60;, etc. - **Re-provision:** &#x60;addMail&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>InlineResponse2009</returns>
        public InlineResponse2009 MailCancel (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling MailCancel");
    
            var path = "/mail/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MailCancel: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MailCancel: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2009) ApiClient.Deserialize(response.Content, typeof(InlineResponse2009), response.Headers);
        }
    
        /// <summary>
        /// Delist a sender from rspamd / mailchannels / mailbaby block lists Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostMailDelist (MailDelistRequest body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostMailDelist");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostMailDelist");
    
            var path = "/mail/{id}/delist";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostMailDelist: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostMailDelist: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Delist a sender from rspamd / mailchannels / mailbaby block lists Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="unblock"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostMailDelist (string unblock, int? id)
        {
            // verify the required parameter 'unblock' is set
            if (unblock == null) throw new ApiException(400, "Missing required parameter 'unblock' when calling PostMailDelist");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostMailDelist");
    
            var path = "/mail/{id}/delist";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (unblock != null) formParams.Add("unblock", ApiClient.ParameterToString(unblock)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostMailDelist: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostMailDelist: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Validate Mail Baby order, quote pricing, and verify coupon — no charge Step 2 of the Mail Baby order flow. Dry-runs the order through &#x60;validate_buy_mail()&#x60; without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before &#x60;addMail&#x60;. Sibling ops: &#x60;getNewMail&#x60;, &#x60;addMail&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail.packageCosts&#x60; keys. - &#x60;coupon&#x60; (string, optional) — coupon code.  **Returns:** - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if order can safely be POSTed. - &#x60;errors&#x60; (array) — validation messages. - &#x60;serviceType&#x60;, &#x60;serviceCost&#x60;, &#x60;originalCost&#x60;, &#x60;repeatServiceCost&#x60; (numeric). - &#x60;password&#x60; (string) — auto-generated SMTP password preview. - &#x60;introFrequency&#x60; (integer). - &#x60;coupon&#x60;, &#x60;couponCode&#x60; (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - &#x60;200&#x60; with &#x60;continue&#x3D;false&#x60; and &#x60;errors[]&#x60; — validation problems. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewMail&#x60; (catalog). - **Place order:** &#x60;addMail&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        public void PutMail (MailOrderRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutMail");
    
            var path = "/mail/order";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Rotate the SMTP password and email the new credential to the account owner Generates a new 20-char SMTP password (lower/upper/digits via &#x60;generate_password&#x60;), writes it to the ZoneMTA Mongo &#x60;users&#x60; collection for username &#x60;mb{mail_id}&#x60;, logs the change to &#x60;App::history()&#x60;, and emails the result to the account-on-file via &#x60;client_email.tpl&#x60;. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via &#x60;getMailWelcomeEmail&#x60; or &#x60;getMailInfo&#x60;. Sibling ops: &#x60;getMailWelcomeEmail&#x60;, &#x60;getMailInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Side effects:** - Mongo update on ZoneMTA &#x60;users&#x60; for &#x60;mb{mail_id}&#x60;. - &#x60;App::history()&#x60; audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse ResetMailPassword (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ResetMailPassword");
    
            var path = "/mail/{id}/reset_password";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ResetMailPassword: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ResetMailPassword: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#x27;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse SendAdvMail (SendMailAdv body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling SendAdvMail");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling SendAdvMail");
    
            var path = "/mail/{id}/advsend";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SendAdvMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SendAdvMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#x27;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. 
        /// </summary>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="from"></param>
        /// <param name="to"></param>
        /// <param name="replyto"></param>
        /// <param name="cc"></param>
        /// <param name="bcc"></param>
        /// <param name="attachments"></param>
        /// <param name="id2"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse SendAdvMail (string subject, string body, EmailAddressName from, List<EmailAddressName> to, List<EmailAddressName> replyto, List<EmailAddressName> cc, List<EmailAddressName> bcc, List<MailAttachment> attachments, long? id2, int? id)
        {
            // verify the required parameter 'subject' is set
            if (subject == null) throw new ApiException(400, "Missing required parameter 'subject' when calling SendAdvMail");
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling SendAdvMail");
            // verify the required parameter 'from' is set
            if (from == null) throw new ApiException(400, "Missing required parameter 'from' when calling SendAdvMail");
            // verify the required parameter 'to' is set
            if (to == null) throw new ApiException(400, "Missing required parameter 'to' when calling SendAdvMail");
            // verify the required parameter 'replyto' is set
            if (replyto == null) throw new ApiException(400, "Missing required parameter 'replyto' when calling SendAdvMail");
            // verify the required parameter 'cc' is set
            if (cc == null) throw new ApiException(400, "Missing required parameter 'cc' when calling SendAdvMail");
            // verify the required parameter 'bcc' is set
            if (bcc == null) throw new ApiException(400, "Missing required parameter 'bcc' when calling SendAdvMail");
            // verify the required parameter 'attachments' is set
            if (attachments == null) throw new ApiException(400, "Missing required parameter 'attachments' when calling SendAdvMail");
            // verify the required parameter 'id2' is set
            if (id2 == null) throw new ApiException(400, "Missing required parameter 'id2' when calling SendAdvMail");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling SendAdvMail");
    
            var path = "/mail/{id}/advsend";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (subject != null) formParams.Add("subject", ApiClient.ParameterToString(subject)); // form parameter
if (body != null) formParams.Add("body", ApiClient.ParameterToString(body)); // form parameter
if (from != null) formParams.Add("from", ApiClient.ParameterToString(from)); // form parameter
if (to != null) formParams.Add("to", ApiClient.ParameterToString(to)); // form parameter
if (replyto != null) formParams.Add("replyto", ApiClient.ParameterToString(replyto)); // form parameter
if (cc != null) formParams.Add("cc", ApiClient.ParameterToString(cc)); // form parameter
if (bcc != null) formParams.Add("bcc", ApiClient.ParameterToString(bcc)); // form parameter
if (attachments != null) formParams.Add("attachments", ApiClient.ParameterToString(attachments)); // form parameter
if (id != null) formParams.Add("id", ApiClient.ParameterToString(id)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SendAdvMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SendAdvMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Send a simple single-recipient email through the Mail Baby SMTP relay Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse SendMail (SendMail body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling SendMail");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling SendMail");
    
            var path = "/mail/{id}/send";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SendMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SendMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Send a simple single-recipient email through the Mail Baby SMTP relay Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="to"></param>
        /// <param name="from"></param>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse SendMail (string to, string from, string subject, string body, int? id)
        {
            // verify the required parameter 'to' is set
            if (to == null) throw new ApiException(400, "Missing required parameter 'to' when calling SendMail");
            // verify the required parameter 'from' is set
            if (from == null) throw new ApiException(400, "Missing required parameter 'from' when calling SendMail");
            // verify the required parameter 'subject' is set
            if (subject == null) throw new ApiException(400, "Missing required parameter 'subject' when calling SendMail");
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling SendMail");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling SendMail");
    
            var path = "/mail/{id}/send";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (to != null) formParams.Add("to", ApiClient.ParameterToString(to)); // form parameter
if (from != null) formParams.Add("from", ApiClient.ParameterToString(from)); // form parameter
if (subject != null) formParams.Add("subject", ApiClient.ParameterToString(subject)); // form parameter
if (body != null) formParams.Add("body", ApiClient.ParameterToString(body)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SendMail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SendMail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Update an existing Mail Baby alert by alert_id Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateMailAlert (MailAlertUpdateRequest body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Update an existing Mail Baby alert by alert_id Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="alertId"></param>
        /// <param name="type"></param>
        /// <param name="value"></param>
        /// <param name="to"></param>
        /// <param name="enabled"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateMailAlert (int? alertId, string type, string value, string to, string enabled, int? id)
        {
            // verify the required parameter 'alertId' is set
            if (alertId == null) throw new ApiException(400, "Missing required parameter 'alertId' when calling UpdateMailAlert");
            // verify the required parameter 'type' is set
            if (type == null) throw new ApiException(400, "Missing required parameter 'type' when calling UpdateMailAlert");
            // verify the required parameter 'value' is set
            if (value == null) throw new ApiException(400, "Missing required parameter 'value' when calling UpdateMailAlert");
            // verify the required parameter 'to' is set
            if (to == null) throw new ApiException(400, "Missing required parameter 'to' when calling UpdateMailAlert");
            // verify the required parameter 'enabled' is set
            if (enabled == null) throw new ApiException(400, "Missing required parameter 'enabled' when calling UpdateMailAlert");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateMailAlert");
    
            var path = "/mail/{id}/alerts";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (alertId != null) formParams.Add("alert_id", ApiClient.ParameterToString(alertId)); // form parameter
if (type != null) formParams.Add("type", ApiClient.ParameterToString(type)); // form parameter
if (value != null) formParams.Add("value", ApiClient.ParameterToString(value)); // form parameter
if (to != null) formParams.Add("to", ApiClient.ParameterToString(to)); // form parameter
if (enabled != null) formParams.Add("enabled", ApiClient.ParameterToString(enabled)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailAlert: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailAlert: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// POST mutation hook for the Mail Baby service detail page POST mutation hook for the Mail Baby service detail page. Currently delegates to the same &#x60;View::go()&#x60; handler as &#x60;getMailInfo&#x60; — placeholder for future field updates. Does NOT rotate credentials (use &#x60;resetMailPassword&#x60;) and does NOT change billing (use &#x60;/billing&#x60; endpoints). Sibling ops: &#x60;getMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body:** Form fields.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read:** &#x60;getMailInfo&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateMailInfo (string id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateMailInfo");
    
            var path = "/mail/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateMailInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Update an existing Mail Baby deny rule&#x27;s type and match data Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the deny rule to update.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse UpdateRule (DenyRuleNew body, int? id, string rule)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateRule");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateRule");
            // verify the required parameter 'rule' is set
            if (rule == null) throw new ApiException(400, "Missing required parameter 'rule' when calling UpdateRule");
    
            var path = "/mail/{id}/rules/{rule}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
path = path.Replace("{" + "rule" + "}", ApiClient.ParameterToString(rule));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateRule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateRule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Update an existing Mail Baby deny rule&#x27;s type and match data Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#x27;{mail_username}&#x27;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. 
        /// </summary>
        /// <param name="user"></param>
        /// <param name="type"></param>
        /// <param name="data"></param>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="rule">The ID of the deny rule to update.</param>
        /// <returns>GenericResponse</returns>
        public GenericResponse UpdateRule (string user, string type, string data, int? id, string rule)
        {
            // verify the required parameter 'user' is set
            if (user == null) throw new ApiException(400, "Missing required parameter 'user' when calling UpdateRule");
            // verify the required parameter 'type' is set
            if (type == null) throw new ApiException(400, "Missing required parameter 'type' when calling UpdateRule");
            // verify the required parameter 'data' is set
            if (data == null) throw new ApiException(400, "Missing required parameter 'data' when calling UpdateRule");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateRule");
            // verify the required parameter 'rule' is set
            if (rule == null) throw new ApiException(400, "Missing required parameter 'rule' when calling UpdateRule");
    
            var path = "/mail/{id}/rules/{rule}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
path = path.Replace("{" + "rule" + "}", ApiClient.ParameterToString(rule));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (user != null) formParams.Add("user", ApiClient.ParameterToString(user)); // form parameter
if (type != null) formParams.Add("type", ApiClient.ParameterToString(type)); // form parameter
if (data != null) formParams.Add("data", ApiClient.ParameterToString(data)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateRule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateRule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GenericResponse) ApiClient.Deserialize(response.Content, typeof(GenericResponse), response.Headers);
        }
    
        /// <summary>
        /// Search and paginate per-message Mail Baby delivery log entries Paginated search over ZoneMTA&#x27;s &#x60;mail_messagestore&#x60; joined with &#x60;mail_senderdelivered&#x60; and &#x60;mail_queuerelease&#x60;. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: &#x60;getStats&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;delistBlock&#x60; (clear a block surfaced by a bounce).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60; (omit to span all owned mail users — admin-only).  **Query params:** - &#x60;from&#x60;, &#x60;to&#x60; (string) — envelope address, exact match. - &#x60;headerfrom&#x60;, &#x60;replyto&#x60; (string) — header address, exact match; validated as email. - &#x60;subject&#x60; (string) — LIKE match on subject. - &#x60;mailid&#x60; (string, 18–19 chars) — relay id, exact. - &#x60;messageId&#x60; (string) — Message-ID header, substring match. - &#x60;origin&#x60; (string) — submitter IP, exact. - &#x60;mx&#x60; (string) — destination MX hostname, LIKE. - &#x60;delivered&#x60; (integer 0/1). - &#x60;startDate&#x60;, &#x60;endDate&#x60; (Unix timestamp or &#x60;strtotime&#x60;-parseable string). - &#x60;skip&#x60; (integer, default 0), &#x60;limit&#x60; (integer 1–10000, default 100). - &#x60;sort&#x60; (&#x60;time&#x60;), &#x60;dir&#x60; (&#x60;asc&#x60;/&#x60;desc&#x60;, default &#x60;desc&#x60;). - &#x60;groupby&#x60; (&#x60;recipient&#x60; default — one row per delivery attempt; &#x60;message&#x60; — one row per &#x60;_id&#x60;).  **Returns** (schema &#x60;MailLog&#x60;): &#x60;{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; bad input, &#x60;401&#x60;. 
        /// </summary>
        /// <param name="id">The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.</param>
        /// <param name="id">The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;.</param>
        /// <param name="origin">Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address.</param>
        /// <param name="mx">Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response.</param>
        /// <param name="from">Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;.</param>
        /// <param name="to">Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved.</param>
        /// <param name="subject">Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response.</param>
        /// <param name="mailid">Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;.</param>
        /// <param name="messageId">Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;.</param>
        /// <param name="replyto">Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set.</param>
        /// <param name="headerfrom">Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address.</param>
        /// <param name="delivered">Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status.</param>
        /// <param name="skip">Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip).</param>
        /// <param name="limit">Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages.</param>
        /// <param name="startDate">Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-15&#x60; or &#x60;last monday&#x60;.  Messages with a &#x60;time&#x60; value **greater than or equal to** this value will be included.</param>
        /// <param name="endDate">Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by &#x60;strtotime()&#x60; such as &#x60;2024-01-31&#x60; or &#x60;yesterday&#x60;. Messages with a &#x60;time&#x60; value **less than or equal to** this value will be included.</param>
        /// <param name="sort">Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order).</param>
        /// <param name="dir">Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first.</param>
        /// <param name="groupby">Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode.</param>
        /// <returns>MailLog</returns>
        public MailLog ViewMailLog (int? id, long? id, string origin, string mx, string from, string to, string subject, string mailid, string messageId, string replyto, string headerfrom, int? delivered, int? skip, int? limit, StartDate startDate, EndDate endDate, string sort, string dir, string groupby)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ViewMailLog");
    
            var path = "/mail/{id}/log";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (id != null) queryParams.Add("id", ApiClient.ParameterToString(id)); // query parameter
 if (origin != null) queryParams.Add("origin", ApiClient.ParameterToString(origin)); // query parameter
 if (mx != null) queryParams.Add("mx", ApiClient.ParameterToString(mx)); // query parameter
 if (from != null) queryParams.Add("from", ApiClient.ParameterToString(from)); // query parameter
 if (to != null) queryParams.Add("to", ApiClient.ParameterToString(to)); // query parameter
 if (subject != null) queryParams.Add("subject", ApiClient.ParameterToString(subject)); // query parameter
 if (mailid != null) queryParams.Add("mailid", ApiClient.ParameterToString(mailid)); // query parameter
 if (messageId != null) queryParams.Add("messageId", ApiClient.ParameterToString(messageId)); // query parameter
 if (replyto != null) queryParams.Add("replyto", ApiClient.ParameterToString(replyto)); // query parameter
 if (headerfrom != null) queryParams.Add("headerfrom", ApiClient.ParameterToString(headerfrom)); // query parameter
 if (delivered != null) queryParams.Add("delivered", ApiClient.ParameterToString(delivered)); // query parameter
 if (skip != null) queryParams.Add("skip", ApiClient.ParameterToString(skip)); // query parameter
 if (limit != null) queryParams.Add("limit", ApiClient.ParameterToString(limit)); // query parameter
 if (startDate != null) queryParams.Add("startDate", ApiClient.ParameterToString(startDate)); // query parameter
 if (endDate != null) queryParams.Add("endDate", ApiClient.ParameterToString(endDate)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (dir != null) queryParams.Add("dir", ApiClient.ParameterToString(dir)); // query parameter
 if (groupby != null) queryParams.Add("groupby", ApiClient.ParameterToString(groupby)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ViewMailLog: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ViewMailLog: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MailLog) ApiClient.Deserialize(response.Content, typeof(MailLog), response.Headers);
        }
    
    }
}
