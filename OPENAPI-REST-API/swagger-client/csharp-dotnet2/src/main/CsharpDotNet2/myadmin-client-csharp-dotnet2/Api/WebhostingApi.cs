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
    public interface IWebhostingApi
    {
        /// <summary>
        /// Place a new webhosting order, create the invoice, and queue provisioning Step 3 of the webhosting order flow — actually places the order. Revalidates via &#x60;validate_buy_website()&#x60; (same checks as &#x60;putWebsites&#x60;), then calls &#x60;place_buy_website()&#x60; to allocate a backing webhosting server, create the &#x60;webhosting&#x60; service row in &#x60;pending&#x60; status, generate a &#x60;Repeat_Invoice&#x60; recurring billing row, produce an initial &#x60;invoices&#x60; row, and (when &#x60;registerDomain&#x3D;true&#x60;) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; &#x60;getWebsitesWelcomeEmail&#x60; then fires automatically with control-panel credentials. **Real money** — call &#x60;putWebsites&#x60; first to preview cost. Sibling ops: &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;, &#x60;getWebsiteInfo&#x60;, &#x60;webhostingCancel&#x60;.  **Body fields:** Identical to &#x60;putWebsites&#x60;. Required: &#x60;hostname&#x60;, &#x60;packageId&#x60;. Optional: &#x60;rootpass&#x60; (auto-generated if blank), &#x60;period&#x60;, &#x60;coupon&#x60;, &#x60;serviceOfferId&#x60;, &#x60;script&#x60;, &#x60;comment&#x60;, &#x60;registerDomain&#x60;.  **Returns** (schema &#x60;ServiceOrderPostResponse&#x60;): - &#x60;total_cost&#x60; (string/decimal) — total to pay across all generated invoices. - &#x60;iid&#x60; (string) — primary invoice id (numeric). - &#x60;iids&#x60; (array) — tagged invoice ids (e.g. &#x60;SERVICEwebhosting12345&#x60;). - &#x60;real_iids&#x60; (array) — numeric invoice ids to pass to &#x60;initiatePayment&#x60;. - &#x60;serviceId&#x60; (integer) — new &#x60;website_id&#x60;; use with &#x60;getWebsiteInfo&#x60; to poll status. - &#x60;invoice_description&#x60; (string) — human-readable summary. - &#x60;cj_params&#x60; (object) — Commission Junction tracking parameters.  **Side effects:** - Inserts &#x60;webhosting&#x60; service row (&#x60;website_status&#x3D;&#x27;pending&#x27;&#x60;). - Inserts &#x60;repeat_invoices&#x60; row for recurring charge. - Inserts &#x60;invoices&#x60; row for the first period. - When &#x60;registerDomain&#x3D;true&#x60;: also creates a domain service row and its own invoice (&#x60;domain_serviceid&#x60;, &#x60;diid&#x60; returned alongside). - Hashes/encrypts &#x60;rootpass&#x60; to &#x60;history_log&#x60;.  **Auth:** Session/API key.  **Errors:** - When validation fails: response is the same &#x60;errors&#x60; array from &#x60;putWebsites&#x60; (HTTP 200 with &#x60;continue&#x3D;false&#x60; shape). - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;. - **Next:** &#x60;getBillingInvoice&#x60; (confirm), &#x60;initiatePayment&#x60; (pay with &#x60;real_iids&#x60;), then poll &#x60;getWebsiteInfo&#x60; until &#x60;website_status&#x3D;&#x3D;&#x27;active&#x27;&#x60;. - **Resend credentials after activation:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel before paying:** &#x60;webhostingCancel&#x60; (or &#x60;deleteBillingInvoice&#x60; for the pending invoice).  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /websites/order                              -&gt; catalog (getNewWebsite) PUT /websites/order { ...config }                -&gt; price quote (putWebsites) POST /websites/order { ...config }               -&gt; { serviceId, real_iids } (addWebsite) GET /billing/invoices/{iid}                      -&gt; confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}               -&gt; pay (initiatePayment) GET /websites/{serviceId}                        -&gt; poll until website_status&#x3D;&#x3D;\&quot;active\&quot; GET /websites/{serviceId}/welcome_email          -&gt; resend credentials if needed &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        ServiceOrderPostResponse AddWebsite (WebsiteOrderPostRequest body);
        /// <summary>
        /// Read the webhosting order catalog — plans, packages, promo offers, pricing Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available &#x60;serviceTypes&#x60; (plans), &#x60;serviceOffers&#x60; (promotional bundles), &#x60;packages&#x60;, billing &#x60;period&#x60; options, the customer&#x27;s currency symbol, default &#x60;serviceOfferId&#x60;, and &#x60;enableDomainRegistering&#x60; (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: &#x60;getNewVps&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewDomain&#x60;. Sibling order-flow ops: &#x60;putWebsites&#x60;, &#x60;addWebsite&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;WebsitesOrder&#x60;): - &#x60;currencySymbol&#x60; (string) — locale currency symbol for display. - &#x60;step&#x60; (integer) — current step in the multi-step order wizard. - &#x60;website&#x60; (integer) — pre-selected default plan id. - &#x60;period&#x60; (integer) — pre-selected default billing frequency. - &#x60;serviceOfferId&#x60; (integer) — pre-selected promo offer. - &#x60;serviceTypes&#x60; (array) — every plan; &#x60;services_ourcost&#x60; stripped server-side. Keys per row: &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_type&#x60; (&#x60;WEB_CPANEL&#x60; / &#x60;WEB_DIRECTADMIN&#x60; / &#x60;WEB_PLESK&#x60; / &#x60;WEB_VESTA&#x60; / &#x60;WEB_PPA&#x60; / &#x60;WEB_WORDPRESS&#x60; / &#x60;WEB_STORAGE&#x60;), etc. - &#x60;serviceOffers&#x60; (array) — current promotional bundles. - &#x60;packages&#x60;, &#x60;packges&#x60; (array — legacy field name preserved alongside &#x60;packages&#x60;). - &#x60;enableDomainRegistering&#x60; (bool) — when &#x60;true&#x60;, the order can also register/transfer a domain. - &#x60;jsonServices&#x60;, &#x60;jsonServiceOffers&#x60; (string) — JSON-encoded copies for inline use in HTML.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putWebsites&#x60; (validate + quote — no charge), &#x60;addWebsite&#x60; (place order).  **Example abridged response:** &#x60;&#x60;&#x60;json {   \&quot;currencySymbol\&quot;: \&quot;$\&quot;,   \&quot;step\&quot;: 1,   \&quot;website\&quot;: 23,   \&quot;period\&quot;: 1,   \&quot;enableDomainRegistering\&quot;: true,   \&quot;serviceTypes\&quot;: [     {\&quot;services_id\&quot;: 23, \&quot;services_name\&quot;: \&quot;Standard\&quot;, \&quot;services_cost\&quot;: 8.00, \&quot;services_type\&quot;: 1},     {\&quot;services_id\&quot;: 25, \&quot;services_name\&quot;: \&quot;Reseller\&quot;, \&quot;services_cost\&quot;: 24.95, \&quot;services_type\&quot;: 1}   ] } &#x60;&#x60;&#x60; 
        /// </summary>
        /// <returns>WebsitesOrder</returns>
        WebsitesOrder GetNewWebsite ();
        /// <summary>
        /// Read website IPs, current reverse DNS, and additional-IP pricing Combined IP/billing view for a website: returns the primary &#x60;website_ip&#x60; plus any addon extras, each mapped to its current PTR hostname (via &#x60;get_hostname()&#x60;), the list of existing additional-IP repeat invoices (with &#x60;cancel_link&#x60; URLs), the count of paid extras, and the per-IP cost (in the website&#x27;s billing currency, falling back to USD/&#x60;WEBSITE_IP_COST&#x60;). Read-only. Use to populate a \&quot;buy another IP\&quot; form or to audit current IP allocations. Sibling ops: &#x60;postWebsiteBuyIp&#x60; (buy or update PTR), &#x60;gettWebsiteReverseDns&#x60; (PTR-only view), &#x60;postWebsitesReverseDns&#x60; (PTR-only update).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** - &#x60;ips&#x60; (object) — &#x60;{\&quot;&lt;ipv4&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}&#x60; for every IP attached. - &#x60;ipsDetails&#x60; (array) — existing addon invoices with each row&#x27;s &#x60;ip&#x60;, &#x60;cancel_link&#x60; (&#x60;cancel_addon?module&#x3D;webhosting&amp;r&#x3D;&lt;rid&gt;&#x60;), invoice metadata. - &#x60;ipCount&#x60; (integer) — count of paid addon IPs. - &#x60;ipCost&#x60; (float) — per-IP recurring cost in &#x60;currency&#x60;. - &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Buy another IP:** &#x60;postWebsiteBuyIp&#x60;. - **Update PTRs only:** &#x60;postWebsitesReverseDns&#x60; (or &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;). - **Cancel an addon IP:** follow the &#x60;cancel_link&#x60; URL. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20026</returns>
        InlineResponse20026 GetWebsiteBuyIp (int? id);
        /// <summary>
        /// Read full configuration and status detail for one webhosting service Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action &#x60;client_links&#x60;, and supported addons. Read-only. Backed by &#x60;ViewWebsite::getDetails()&#x60;. Internal &#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;, and &#x60;serviceMaster.website_key&#x60; (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll &#x60;website_status&#x60; after &#x60;addWebsite&#x60;. Sibling ops: &#x60;getWebsiteList&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns** (schema &#x60;Website&#x60;): - &#x60;serviceInfo&#x60; — &#x60;website_id&#x60;, &#x60;website_hostname&#x60;, &#x60;website_username&#x60;, &#x60;website_ip&#x60;, &#x60;website_server&#x60;, &#x60;website_type&#x60; (plan id), &#x60;website_status&#x60;, &#x60;website_comment&#x60;. - &#x60;serviceMaster&#x60; — host-server row (cPanel/DA/Plesk hostname, panel URL). &#x60;website_key&#x60; is stripped. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — &#x60;{name, link, icon}&#x60; for restart, login, backup, etc. Internal &#x60;?link&#x3D;queue&amp;action&#x3D;...&#x60; URLs are pre-resolved to plain action names. - &#x60;serviceAddons&#x60; — extra IPs, additional resources.  **Auth:** Session/API key. Ownership enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text — webhosting reuses the helper) — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Login to panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Reverse DNS:** &#x60;gettWebsiteReverseDns&#x60;, &#x60;postWebsitesReverseDns&#x60;. - **Buy extra IP:** &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;. - **Migration:** &#x60;postWebsiteMigration&#x60;. - **Resend welcome email:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>Website</returns>
        Website GetWebsiteInfo (int? id);
        /// <summary>
        /// List all billing invoices and recurring charges scoped to one website Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via &#x60;postWebsiteBuyIp&#x60;. Backed by &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#x27;webhosting&#x27;&#x60; (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, sibling cross-module: &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;. For account-wide history use top-level &#x60;getBillingInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of invoice rows: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;currency&#x60;, &#x60;module&#x3D;webhosting&#x60;, &#x60;service&#x3D;{id}&#x60;.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Single invoice detail:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        ChargeInvoiceRows GetWebsiteInvoices (int? id);
        /// <summary>
        /// List the caller&#x27;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services Enumerates every shared/reseller hosting account (\&quot;website\&quot;) owned by the authenticated customer. The canonical entry point for discovering a &#x60;website_id&#x60; to pass into other webhosting endpoints. Filtered server-side by &#x60;website_custid &#x3D; session account_id&#x60; — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;, &#x60;getNewWebsite&#x60; (order a new one).  **Path/Query/Body:** None.  **Returns:** Array of &#x60;WebsiteRow&#x60; — per-website summary: - &#x60;website_id&#x60; (integer) — canonical id used in &#x60;/websites/{id}/_*&#x60; paths. - &#x60;website_hostname&#x60; (string) — primary FQDN. - &#x60;website_status&#x60; (string enum) — &#x60;pending&#x60; / &#x60;active&#x60; / &#x60;pending-cancel&#x60; / &#x60;canceled&#x60;. - &#x60;services_name&#x60; (string) — plan/package label (e.g. &#x60;Standard&#x60;, &#x60;Reseller&#x60;). - &#x60;repeat_invoices_cost&#x60; (decimal) — current recurring cost in the website&#x27;s billing currency. - &#x60;website_comment&#x60; (string|null) — customer-provided note.  **Auth:** Session/API key. Ownership filter enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-website detail:** &#x60;getWebsiteInfo&#x60; (full). - **Control panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore points:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Order a new site:** &#x60;getNewWebsite&#x60; → &#x60;putWebsites&#x60; → &#x60;addWebsite&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <returns>List&lt;WebsiteRow&gt;</returns>
        List<WebsiteRow> GetWebsiteList ();
        /// <summary>
        /// List off-site cpmove backups stored in Swift — list or inline-download archive Returns the list of off-site cpmove backups stored for the webhosting account, or — with the &#x60;download&#x3D;&lt;name&gt;&#x60; query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container &#x60;serviceMaster.website_name&#x60; (authenticated with &#x60;SWIFT_WEBHOSTING_USER&#x60;/&#x60;SWIFT_WEBHOSTING_PASS&#x60;) and filtered to objects matching &#x60;cpmove-{website_username}-*&#x60;. Use to find restore points before a risky change or before &#x60;webhostingCancel&#x60;. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: &#x60;webhostingCancel&#x60; (snapshot before terminating), &#x60;getWebsiteInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Query params:** - &#x60;download&#x60; (string, optional) — when set to a backup &#x60;name&#x60; from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no &#x60;download&#x60;): array of &#x60;{name: \&quot;&lt;cpmove-...&gt;\&quot;, size: \&quot;&lt;human-scaled&gt;\&quot;}&#x60; (size from &#x60;Content-Length&#x60; via &#x60;Scale($len, &#x27;bytes&#x27;, 1)&#x60;). - **Download mode** (&#x60;?download&#x3D;&lt;name&gt;&#x60;): single object &#x60;{name, size, file: \&quot;&lt;base64-encoded-archive&gt;\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Take a backup before cancelling:** &#x60;getWebsitesBackups&#x60; (with &#x60;download&#x3D;&#x60;) → &#x60;webhostingCancel&#x60;. - **Migrate to/from another host:** &#x60;postWebsiteMigration&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>WebsiteBackups</returns>
        WebsiteBackups GetWebsitesBackups (int? id);
        /// <summary>
        /// Get a one-time auto-login URL for the website&#x27;s control panel Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on &#x60;serviceMaster.website_type&#x60;: - **WEB_CPANEL** (default): calls WHM &#x60;create_user_session&#x60; for the &#x60;cpaneld&#x60; service, returns a session-bound cPanel URL. - **WEB_DIRECTADMIN**: calls DA &#x60;CMD_API_LOGIN_KEYS&#x60; (&#x60;max_uses&#x3D;2&#x60;, IP-locked to &#x60;127.0.0.1&#x60; plus the caller&#x27;s &#x60;client_ip&#x60;); returns one-time URL. - **WEB_PLESK**: calls Plesk SDK &#x60;createSession&#x60;, returns &#x60;https://&lt;host&gt;:8443/enterprise/rsession_init.php?PLESKSESSID&#x3D;...&#x60;. - **WEB_PPA**, **WEB_VESTA**: placeholders (return &#x60;Unhandled Server Type&#x60;).  Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesWelcomeEmail&#x60; (re-send credentials instead).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;{type: \&quot;location\&quot;, location: \&quot;&lt;one-time-url&gt;\&quot;}&#x60;.  **Side effects:** - WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: &#x60;max_uses&#x3D;2&#x60;, IP-locked).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;Website is &lt;status&gt;, only websites that are \&quot;active\&quot; can do this.&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;No Host server or username&#x60; — service has no &#x60;website_username&#x60; or &#x60;website_server&#x60; resolved. - &#x60;Sorry! something went wrong, couldn&#x27;t connect to &lt;panel&gt;!&#x60; — panel-side failure. - &#x60;Unhandled Server Type&#x60; — &#x60;website_type&#x60; is WEB_PPA / WEB_VESTA (or unrecognized).  **Related calls:** - **If you need the credentials themselves:** &#x60;getWebsitesWelcomeEmail&#x60; (re-sends the welcome email with username/password). - **List sites first:** &#x60;getWebsiteList&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>WebsiteLoginResponse</returns>
        WebsiteLoginResponse GetWebsitesLogin (int? id);
        /// <summary>
        /// Resend the webhosting welcome email with control-panel credentials and URL Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved &#x60;website_welcome_email($id)&#x60; helper which composes and dispatches the message to the account&#x27;s &#x60;account_lid&#x60;. Idempotent — safe to call multiple times. Use after &#x60;addWebsite&#x60; finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;, &#x60;getMailWelcomeEmail&#x60;. For an auto-login URL (no password reveal), use &#x60;getWebsitesLogin&#x60; instead.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Side effects:** - Sends an email to the account&#x27;s billing email address with the control-panel credentials currently stored in &#x60;history_log&#x60; for this website.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Service is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Auto-login instead:** &#x60;getWebsitesLogin&#x60; (one-time URL, no password disclosure). - **List sites first:** &#x60;getWebsiteList&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse GetWebsitesWelcomeEmail (int? id);
        /// <summary>
        /// Read current reverse-DNS (PTR) records for the website&#x27;s IPs Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary &#x60;website_ip&#x60; plus any addons (from &#x60;get_service_addons().extra_ips&#x60;). PTRs are read live via &#x60;get_hostname()&#x60;, not cached. Use to render a PTR editor before calling &#x60;postWebsitesReverseDns&#x60;. **Note:** the operationId has a typo (&#x60;gettWebsiteReverseDns&#x60; with double-t) preserved for back-compat — do not rename. Sibling ops: &#x60;postWebsitesReverseDns&#x60; (update), &#x60;getWebsiteBuyIp&#x60; (broader IP+billing view), &#x60;postWebsiteBuyIp&#x60; (also supports &#x60;action&#x3D;reverse_dns&#x60;).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ReverseDnsEntries&#x60; — &#x60;{\&quot;ips\&quot;: {\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}}&#x60;. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Update PTRs:** &#x60;postWebsitesReverseDns&#x60;. - **Add IPs first:** &#x60;getWebsiteBuyIp&#x60; → &#x60;postWebsiteBuyIp&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>ReverseDnsEntries</returns>
        ReverseDnsEntries GettWebsiteReverseDns (int? id);
        /// <summary>
        /// Buy an additional IP for the website OR update reverse DNS records Dual-purpose mutation that branches on the &#x60;action&#x60; body field. **&#x60;action&#x3D;buy_ip&#x60;** (default): allocates a new addon IP via &#x60;website_addon_get_free_ips&#x60;, creates an addon &#x60;repeat_invoices&#x60; row at &#x60;WEBSITE_IP_COST&#x60; (currency-converted to the parent invoice&#x27;s currency), and emits a one-period &#x60;invoices&#x60; row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **&#x60;action&#x3D;reverse_dns&#x60;**: skips billing entirely and updates PTR records via &#x60;reverse_dns()&#x60; for any IP in the &#x60;ips&#x60; map whose new hostname differs from the current &#x60;get_hostname()&#x60; value. Sibling ops: &#x60;getWebsiteBuyIp&#x60; (preview), &#x60;gettWebsiteReverseDns&#x60; / &#x60;postWebsitesReverseDns&#x60; (PTR-only).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields:** - &#x60;action&#x60; (string, optional, default &#x60;buy_ip&#x60;) — &#x60;buy_ip&#x60; or &#x60;reverse_dns&#x60;. - For &#x60;action&#x3D;reverse_dns&#x60;: &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For &#x60;buy_ip&#x60;: &#x60;{text: \&quot;Ordered Additional IP successfully.\&quot;, invoice: &lt;integer&gt;, repeatInvoice: &lt;integer&gt;}&#x60;. - For &#x60;reverse_dns&#x60;: &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - &#x60;buy_ip&#x60;: inserts &#x60;repeat_invoices&#x60; row (&#x60;Additional IP for Webhosting &lt;id&gt;&#x60;) and an &#x60;invoices&#x60; row for the first period. - &#x60;reverse_dns&#x60;: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60;. - &#x60;409 Website is not active&#x60;. - &#x60;No available free IPs on this server. Please contact support to order additional IPs.&#x60; — host has no free IPs.  **Related calls:** - **Preview first:** &#x60;getWebsiteBuyIp&#x60;. - **Pay the new addon invoice:** &#x60;initiatePayment&#x60; with the returned &#x60;invoice&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20027</returns>
        InlineResponse20027 PostWebsiteBuyIp (IdBuyIpBody body, int? id);
        /// <summary>
        /// Buy an additional IP for the website OR update reverse DNS records Dual-purpose mutation that branches on the &#x60;action&#x60; body field. **&#x60;action&#x3D;buy_ip&#x60;** (default): allocates a new addon IP via &#x60;website_addon_get_free_ips&#x60;, creates an addon &#x60;repeat_invoices&#x60; row at &#x60;WEBSITE_IP_COST&#x60; (currency-converted to the parent invoice&#x27;s currency), and emits a one-period &#x60;invoices&#x60; row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **&#x60;action&#x3D;reverse_dns&#x60;**: skips billing entirely and updates PTR records via &#x60;reverse_dns()&#x60; for any IP in the &#x60;ips&#x60; map whose new hostname differs from the current &#x60;get_hostname()&#x60; value. Sibling ops: &#x60;getWebsiteBuyIp&#x60; (preview), &#x60;gettWebsiteReverseDns&#x60; / &#x60;postWebsitesReverseDns&#x60; (PTR-only).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields:** - &#x60;action&#x60; (string, optional, default &#x60;buy_ip&#x60;) — &#x60;buy_ip&#x60; or &#x60;reverse_dns&#x60;. - For &#x60;action&#x3D;reverse_dns&#x60;: &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For &#x60;buy_ip&#x60;: &#x60;{text: \&quot;Ordered Additional IP successfully.\&quot;, invoice: &lt;integer&gt;, repeatInvoice: &lt;integer&gt;}&#x60;. - For &#x60;reverse_dns&#x60;: &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - &#x60;buy_ip&#x60;: inserts &#x60;repeat_invoices&#x60; row (&#x60;Additional IP for Webhosting &lt;id&gt;&#x60;) and an &#x60;invoices&#x60; row for the first period. - &#x60;reverse_dns&#x60;: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60;. - &#x60;409 Website is not active&#x60;. - &#x60;No available free IPs on this server. Please contact support to order additional IPs.&#x60; — host has no free IPs.  **Related calls:** - **Preview first:** &#x60;getWebsiteBuyIp&#x60;. - **Pay the new addon invoice:** &#x60;initiatePayment&#x60; with the returned &#x60;invoice&#x60;. 
        /// </summary>
        /// <param name="ips"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20027</returns>
        InlineResponse20027 PostWebsiteBuyIp (Dictionary<string, string> ips, int? id);
        /// <summary>
        /// Submit a request for InterServer staff to migrate a website from another host Submits a migration request: opens a support ticket containing the customer&#x27;s credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket&#x27;s id is returned; track progress with the helpdesk/tickets API. Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesBackups&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (JSON or multipart): - &#x60;custPortal&#x60; (string) — URL of the current hosting provider&#x27;s customer portal (e.g. &#x60;sso.godaddy.com&#x60;). - &#x60;regEmail&#x60; (string) — email/username at the current host. - &#x60;password&#x60; (string) — password at the current host. - &#x60;ctrlPanel&#x60; (string) — current control-panel URL (e.g. &#x60;yourdomain.com/cpanel/&#x60;). - &#x60;ftpUsername&#x60; (string), &#x60;ftpPassword&#x60; (string) — FTP credentials. - &#x60;siteBusyMig&#x60; (string) — info on site traffic / whether a holding page can be shown during migration. - &#x60;splReqMig&#x60; (string) — special requirements (PHP version, modules, etc.). - &#x60;domainReg&#x60; (string) — whether domain-registration transfer is also needed (&#x60;yes&#x60;/&#x60;no&#x60; or freeform). - &#x60;dataMig&#x60; (string) — nameserver switch timing preference. - &#x60;domainRegPortal&#x60;, &#x60;domainRegEmail&#x60;, &#x60;domainRegPassword&#x60; (strings) — domain-registrar credentials.  **Returns:** &#x60;{text: \&quot;Your migration request has been sucessfully submitted...\&quot;, ticket: &lt;integer&gt;}&#x60; — pass &#x60;ticket&#x60; to the tickets API to monitor.  **Side effects:** - Creates a support ticket via &#x60;create_ticket()&#x60; with the credentials in the ticket body. - Inserts a &#x60;history_log&#x60; row of type &#x60;Webhost Migration&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned &#x60;ticket&#x60; id). - **Verify after migration:** &#x60;getWebsitesLogin&#x60;, &#x60;getWebsiteInfo&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20028</returns>
        InlineResponse20028 PostWebsiteMigration (IdMigrationBody body, int? id);
        /// <summary>
        /// Submit a request for InterServer staff to migrate a website from another host Submits a migration request: opens a support ticket containing the customer&#x27;s credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket&#x27;s id is returned; track progress with the helpdesk/tickets API. Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesBackups&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (JSON or multipart): - &#x60;custPortal&#x60; (string) — URL of the current hosting provider&#x27;s customer portal (e.g. &#x60;sso.godaddy.com&#x60;). - &#x60;regEmail&#x60; (string) — email/username at the current host. - &#x60;password&#x60; (string) — password at the current host. - &#x60;ctrlPanel&#x60; (string) — current control-panel URL (e.g. &#x60;yourdomain.com/cpanel/&#x60;). - &#x60;ftpUsername&#x60; (string), &#x60;ftpPassword&#x60; (string) — FTP credentials. - &#x60;siteBusyMig&#x60; (string) — info on site traffic / whether a holding page can be shown during migration. - &#x60;splReqMig&#x60; (string) — special requirements (PHP version, modules, etc.). - &#x60;domainReg&#x60; (string) — whether domain-registration transfer is also needed (&#x60;yes&#x60;/&#x60;no&#x60; or freeform). - &#x60;dataMig&#x60; (string) — nameserver switch timing preference. - &#x60;domainRegPortal&#x60;, &#x60;domainRegEmail&#x60;, &#x60;domainRegPassword&#x60; (strings) — domain-registrar credentials.  **Returns:** &#x60;{text: \&quot;Your migration request has been sucessfully submitted...\&quot;, ticket: &lt;integer&gt;}&#x60; — pass &#x60;ticket&#x60; to the tickets API to monitor.  **Side effects:** - Creates a support ticket via &#x60;create_ticket()&#x60; with the credentials in the ticket body. - Inserts a &#x60;history_log&#x60; row of type &#x60;Webhost Migration&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned &#x60;ticket&#x60; id). - **Verify after migration:** &#x60;getWebsitesLogin&#x60;, &#x60;getWebsiteInfo&#x60;. 
        /// </summary>
        /// <param name="custPortal"></param>
        /// <param name="regEmail"></param>
        /// <param name="password"></param>
        /// <param name="ctrlPanel"></param>
        /// <param name="ftpUsername"></param>
        /// <param name="ftpPassword"></param>
        /// <param name="siteBusyMig"></param>
        /// <param name="splReqMig"></param>
        /// <param name="domainReg"></param>
        /// <param name="dataMig"></param>
        /// <param name="domainRegPortal"></param>
        /// <param name="domainRegEmail"></param>
        /// <param name="domainRegPassword"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20028</returns>
        InlineResponse20028 PostWebsiteMigration (string custPortal, string regEmail, string password, string ctrlPanel, string ftpUsername, string ftpPassword, string siteBusyMig, string splReqMig, string domainReg, string dataMig, string domainRegPortal, string domainRegEmail, string domainRegPassword, int? id);
        /// <summary>
        /// Bulk-update reverse-DNS (PTR) records for one or more website IPs Sets the PTR hostname for each IP in the website&#x27;s IP set. Calls &#x60;reverse_dns($ip, $newHostname)&#x60; for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60; even if no entries actually changed. PTR propagation is asynchronous — re-call &#x60;gettWebsiteReverseDns&#x60; after a few minutes to confirm. Equivalent to calling &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;. Sibling ops: &#x60;gettWebsiteReverseDns&#x60;, &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (schema &#x60;ReverseDnsEntries&#x60;): - &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - One &#x60;reverse_dns()&#x60; call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read current PTRs first:** &#x60;gettWebsiteReverseDns&#x60;. - **Equivalent endpoint:** &#x60;postWebsiteBuyIp&#x60; (&#x60;action&#x3D;reverse_dns&#x60;). 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>TextResponse</returns>
        TextResponse PostWebsitesReverseDns (ReverseDnsEntries body, int? id);
        /// <summary>
        /// Bulk-update reverse-DNS (PTR) records for one or more website IPs Sets the PTR hostname for each IP in the website&#x27;s IP set. Calls &#x60;reverse_dns($ip, $newHostname)&#x60; for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60; even if no entries actually changed. PTR propagation is asynchronous — re-call &#x60;gettWebsiteReverseDns&#x60; after a few minutes to confirm. Equivalent to calling &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;. Sibling ops: &#x60;gettWebsiteReverseDns&#x60;, &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (schema &#x60;ReverseDnsEntries&#x60;): - &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - One &#x60;reverse_dns()&#x60; call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read current PTRs first:** &#x60;gettWebsiteReverseDns&#x60;. - **Equivalent endpoint:** &#x60;postWebsiteBuyIp&#x60; (&#x60;action&#x3D;reverse_dns&#x60;). 
        /// </summary>
        /// <param name="ips"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>TextResponse</returns>
        TextResponse PostWebsitesReverseDns (Dictionary<string, Object> ips, int? id);
        /// <summary>
        /// Validate a webhosting order and preview cost — dry run, no charge Step 2 of the webhosting order flow. Dry-runs the order through &#x60;validate_buy_website()&#x60;: checks &#x60;hostname&#x60; against &#x60;valid_hostname()&#x60; and the keyword blocklist, validates &#x60;packageId&#x60; against the customer&#x27;s plan eligibility, confirms the chosen plan&#x27;s hypervisor pool is in stock (&#x60;OUTOFSTOCK_WEBHOSTING_*&#x60; constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before &#x60;addWebsite&#x60;** to surface coupon/pricing/hostname problems cheaply. Sibling ops: &#x60;getNewWebsite&#x60; (catalog), &#x60;addWebsite&#x60; (place order).  **Body fields (form or JSON):** - &#x60;hostname&#x60; (string, required) — primary FQDN for the website. Must pass &#x60;valid_hostname()&#x60;, must not contain &#x60;interserver.net&#x60; (non-admin), must not be on the blocked-keyword list, must match the plan&#x27;s TOS rules. - &#x60;rootpass&#x60; (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via &#x60;generateRandomString(8,1,1,1,1)&#x60;. - &#x60;packageId&#x60; (integer, required) — plan id from &#x60;getNewWebsite.serviceTypes[].services_id&#x60;. Must have &#x60;services_module&#x3D;&#x27;webhosting&#x27;&#x60; and &#x60;services_buyable&#x3D;1&#x60; (non-admin). - &#x60;period&#x60; (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply. - &#x60;coupon&#x60; (string, optional) — coupon code. - &#x60;serviceOfferId&#x60; (integer, optional) — promo bundle from &#x60;getNewWebsite.serviceOffers&#x60;. - &#x60;script&#x60; (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 &#x3D; none). - &#x60;comment&#x60; (string, optional) — free-form note saved on the service row. - &#x60;registerDomain&#x60; (bool, optional) — when &#x60;true&#x60; and &#x60;enableDomainRegistering&#x3D;true&#x60; from the catalog, also registers/transfers the domain through the order. - Implicit: TOS acceptance (validated via &#x60;tos&#x3D;&#x27;yes&#x27;&#x60; in source — required for non-admin).  **Returns** (validation envelope): - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if the order can safely be POSTed. - &#x60;errors&#x60; (array of strings) — human-readable validation messages. - &#x60;frequency&#x60; (integer) — resolved billing frequency. - &#x60;coupon&#x60; (string) — the applied coupon name (echoed). - &#x60;couponCode&#x60; (integer) — the matched coupon row id, or &#x60;0&#x60; if none. - &#x60;serviceType&#x60; (integer) — resolved plan id. - &#x60;serviceCost&#x60; (float) — first-period total cost (includes coupon + period discount). - &#x60;originalCost&#x60; (float) — undiscounted reference. - &#x60;repeatServiceCost&#x60; (float) — recurring cost after discounts. - &#x60;hostname&#x60;, &#x60;password&#x60; (string) — final sanitized values (may differ from input — e.g. random password generated). - &#x60;introFrequency&#x60; (integer) — first-period bonus length (intro pricing).  **Side effects:** None — pure read.  **Auth:** Session/API key.  **Errors (within &#x60;errors&#x60; array, &#x60;continue&#x3D;false&#x60;):** - &#x60;Invalid Billing Interval&#x60; — &#x60;period&#x60; not numeric. - &#x60;All webhosting servers are currently full.&#x60; — &#x60;OUTOFSTOCK_WEBHOSTING&#x60;. - &#x60;Invalid Package Specified.&#x60; — plan id not in the webhosting module or not buyable. - &#x60;Our &lt;Plan&gt; Webhosting Servers are currently full.&#x60; — plan-specific stock check. - &#x60;The hostname cannot contain interserver.net&#x60;. - &#x60;Hostname \&quot;&lt;x&gt;\&quot; Contains Invalid Characters Or Is Blank&#x60;. - &#x60;Hostname contains a blocked keyword.&#x60;. - &#x60;You must agree to the terms of service and click the checkbox saying so.&#x60;. - &#x60;Invalid Coupon Specified&#x60; — coupon not usable for this plan/customer.  Top-level HTTP errors: &#x60;401&#x60; unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60; (catalog). - **Next:** &#x60;addWebsite&#x60; (same body — actually places the order).  **Example request body:** &#x60;&#x60;&#x60;json {   \&quot;hostname\&quot;: \&quot;mystore.example.com\&quot;,   \&quot;rootpass\&quot;: \&quot;Sup3rS3cret!\&quot;,   \&quot;packageId\&quot;: 23,   \&quot;period\&quot;: 12,   \&quot;coupon\&quot;: \&quot;\&quot;,   \&quot;registerDomain\&quot;: false,   \&quot;script\&quot;: 0 } &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        void PutWebsites (WebsiteOrderPutRequest body);
        /// <summary>
        /// POST mutation hook for the website detail page (use dedicated ops where possible) POST mutation hook for the website detail page. The implementation currently routes through the same &#x60;View::go()&#x60; handler as &#x60;getWebsiteInfo&#x60;; concrete update behavior depends on which &#x60;client_links&#x60; action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: &#x60;getWebsiteInfo&#x60;, all dedicated mutation endpoints below.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** Form-encoded fields appropriate to the &#x60;client_links&#x60; action being driven.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;...\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Prefer these dedicated endpoints:** - **Buy a paid IP or update reverse DNS:** &#x60;postWebsiteBuyIp&#x60; (the latter via &#x60;action&#x3D;reverse_dns&#x60;). - **PTR-only changes:** &#x60;postWebsitesReverseDns&#x60;. - **Migrate site from another host:** &#x60;postWebsiteMigration&#x60;. - **Resend control-panel credentials:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Auto-login to cPanel/DA/Plesk:** &#x60;getWebsitesLogin&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateWebsiteInfo (string id);
        /// <summary>
        /// Schedule termination of a webhosting service — wipes panel account at cycle end **DESTRUCTIVE.** Schedules the website for cancellation via the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#x27;webhosting&#x27;&#x60;. Marks the service &#x60;pending-cancel&#x60;, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via &#x60;getWebsitesBackups&#x60; first (with &#x60;download&#x3D;&lt;name&gt;&#x60;) if data must be preserved. Sibling ops: &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInfo&#x60; (verify status flipped), &#x60;getWebsiteInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;WebsiteCancelResponse&#x60; — cancel-service confirmation payload.  **Side effects:** - Sets &#x60;website_status&#x3D;&#x27;pending-cancel&#x27;&#x60;. - Marks the &#x60;repeat_invoices&#x60; row as non-renewing. - Logs the cancellation in &#x60;history_log&#x60;. - Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed). - Customer retains panel access until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — service in a state that cannot be cancelled (already &#x60;canceled&#x60;, etc.).  **Related calls:** - **Before cancelling:** &#x60;getWebsitesBackups&#x60; (download a cpmove archive — irretrievable after deprovisioning). - **After cancelling:** &#x60;getWebsiteInfo&#x60; (confirm &#x60;pending-cancel&#x60;), &#x60;getWebsiteInvoices&#x60; (final invoices). - **Sibling cancels on other modules:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;mailCancel&#x60;, etc. all use the same &#x60;CancelService&#x60; handler. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20025</returns>
        InlineResponse20025 WebhostingCancel (string id);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class WebhostingApi : IWebhostingApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="WebhostingApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public WebhostingApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="WebhostingApi"/> class.
        /// </summary>
        /// <returns></returns>
        public WebhostingApi(String basePath)
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
        /// Place a new webhosting order, create the invoice, and queue provisioning Step 3 of the webhosting order flow — actually places the order. Revalidates via &#x60;validate_buy_website()&#x60; (same checks as &#x60;putWebsites&#x60;), then calls &#x60;place_buy_website()&#x60; to allocate a backing webhosting server, create the &#x60;webhosting&#x60; service row in &#x60;pending&#x60; status, generate a &#x60;Repeat_Invoice&#x60; recurring billing row, produce an initial &#x60;invoices&#x60; row, and (when &#x60;registerDomain&#x3D;true&#x60;) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; &#x60;getWebsitesWelcomeEmail&#x60; then fires automatically with control-panel credentials. **Real money** — call &#x60;putWebsites&#x60; first to preview cost. Sibling ops: &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;, &#x60;getWebsiteInfo&#x60;, &#x60;webhostingCancel&#x60;.  **Body fields:** Identical to &#x60;putWebsites&#x60;. Required: &#x60;hostname&#x60;, &#x60;packageId&#x60;. Optional: &#x60;rootpass&#x60; (auto-generated if blank), &#x60;period&#x60;, &#x60;coupon&#x60;, &#x60;serviceOfferId&#x60;, &#x60;script&#x60;, &#x60;comment&#x60;, &#x60;registerDomain&#x60;.  **Returns** (schema &#x60;ServiceOrderPostResponse&#x60;): - &#x60;total_cost&#x60; (string/decimal) — total to pay across all generated invoices. - &#x60;iid&#x60; (string) — primary invoice id (numeric). - &#x60;iids&#x60; (array) — tagged invoice ids (e.g. &#x60;SERVICEwebhosting12345&#x60;). - &#x60;real_iids&#x60; (array) — numeric invoice ids to pass to &#x60;initiatePayment&#x60;. - &#x60;serviceId&#x60; (integer) — new &#x60;website_id&#x60;; use with &#x60;getWebsiteInfo&#x60; to poll status. - &#x60;invoice_description&#x60; (string) — human-readable summary. - &#x60;cj_params&#x60; (object) — Commission Junction tracking parameters.  **Side effects:** - Inserts &#x60;webhosting&#x60; service row (&#x60;website_status&#x3D;&#x27;pending&#x27;&#x60;). - Inserts &#x60;repeat_invoices&#x60; row for recurring charge. - Inserts &#x60;invoices&#x60; row for the first period. - When &#x60;registerDomain&#x3D;true&#x60;: also creates a domain service row and its own invoice (&#x60;domain_serviceid&#x60;, &#x60;diid&#x60; returned alongside). - Hashes/encrypts &#x60;rootpass&#x60; to &#x60;history_log&#x60;.  **Auth:** Session/API key.  **Errors:** - When validation fails: response is the same &#x60;errors&#x60; array from &#x60;putWebsites&#x60; (HTTP 200 with &#x60;continue&#x3D;false&#x60; shape). - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;. - **Next:** &#x60;getBillingInvoice&#x60; (confirm), &#x60;initiatePayment&#x60; (pay with &#x60;real_iids&#x60;), then poll &#x60;getWebsiteInfo&#x60; until &#x60;website_status&#x3D;&#x3D;&#x27;active&#x27;&#x60;. - **Resend credentials after activation:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel before paying:** &#x60;webhostingCancel&#x60; (or &#x60;deleteBillingInvoice&#x60; for the pending invoice).  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /websites/order                              -&gt; catalog (getNewWebsite) PUT /websites/order { ...config }                -&gt; price quote (putWebsites) POST /websites/order { ...config }               -&gt; { serviceId, real_iids } (addWebsite) GET /billing/invoices/{iid}                      -&gt; confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}               -&gt; pay (initiatePayment) GET /websites/{serviceId}                        -&gt; poll until website_status&#x3D;&#x3D;\&quot;active\&quot; GET /websites/{serviceId}/welcome_email          -&gt; resend credentials if needed &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        public ServiceOrderPostResponse AddWebsite (WebsiteOrderPostRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddWebsite");
    
            var path = "/websites/order";
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
                throw new ApiException ((int)response.StatusCode, "Error calling AddWebsite: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddWebsite: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ServiceOrderPostResponse) ApiClient.Deserialize(response.Content, typeof(ServiceOrderPostResponse), response.Headers);
        }
    
        /// <summary>
        /// Read the webhosting order catalog — plans, packages, promo offers, pricing Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available &#x60;serviceTypes&#x60; (plans), &#x60;serviceOffers&#x60; (promotional bundles), &#x60;packages&#x60;, billing &#x60;period&#x60; options, the customer&#x27;s currency symbol, default &#x60;serviceOfferId&#x60;, and &#x60;enableDomainRegistering&#x60; (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: &#x60;getNewVps&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewDomain&#x60;. Sibling order-flow ops: &#x60;putWebsites&#x60;, &#x60;addWebsite&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;WebsitesOrder&#x60;): - &#x60;currencySymbol&#x60; (string) — locale currency symbol for display. - &#x60;step&#x60; (integer) — current step in the multi-step order wizard. - &#x60;website&#x60; (integer) — pre-selected default plan id. - &#x60;period&#x60; (integer) — pre-selected default billing frequency. - &#x60;serviceOfferId&#x60; (integer) — pre-selected promo offer. - &#x60;serviceTypes&#x60; (array) — every plan; &#x60;services_ourcost&#x60; stripped server-side. Keys per row: &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_type&#x60; (&#x60;WEB_CPANEL&#x60; / &#x60;WEB_DIRECTADMIN&#x60; / &#x60;WEB_PLESK&#x60; / &#x60;WEB_VESTA&#x60; / &#x60;WEB_PPA&#x60; / &#x60;WEB_WORDPRESS&#x60; / &#x60;WEB_STORAGE&#x60;), etc. - &#x60;serviceOffers&#x60; (array) — current promotional bundles. - &#x60;packages&#x60;, &#x60;packges&#x60; (array — legacy field name preserved alongside &#x60;packages&#x60;). - &#x60;enableDomainRegistering&#x60; (bool) — when &#x60;true&#x60;, the order can also register/transfer a domain. - &#x60;jsonServices&#x60;, &#x60;jsonServiceOffers&#x60; (string) — JSON-encoded copies for inline use in HTML.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putWebsites&#x60; (validate + quote — no charge), &#x60;addWebsite&#x60; (place order).  **Example abridged response:** &#x60;&#x60;&#x60;json {   \&quot;currencySymbol\&quot;: \&quot;$\&quot;,   \&quot;step\&quot;: 1,   \&quot;website\&quot;: 23,   \&quot;period\&quot;: 1,   \&quot;enableDomainRegistering\&quot;: true,   \&quot;serviceTypes\&quot;: [     {\&quot;services_id\&quot;: 23, \&quot;services_name\&quot;: \&quot;Standard\&quot;, \&quot;services_cost\&quot;: 8.00, \&quot;services_type\&quot;: 1},     {\&quot;services_id\&quot;: 25, \&quot;services_name\&quot;: \&quot;Reseller\&quot;, \&quot;services_cost\&quot;: 24.95, \&quot;services_type\&quot;: 1}   ] } &#x60;&#x60;&#x60; 
        /// </summary>
        /// <returns>WebsitesOrder</returns>
        public WebsitesOrder GetNewWebsite ()
        {
    
            var path = "/websites/order";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewWebsite: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewWebsite: " + response.ErrorMessage, response.ErrorMessage);
    
            return (WebsitesOrder) ApiClient.Deserialize(response.Content, typeof(WebsitesOrder), response.Headers);
        }
    
        /// <summary>
        /// Read website IPs, current reverse DNS, and additional-IP pricing Combined IP/billing view for a website: returns the primary &#x60;website_ip&#x60; plus any addon extras, each mapped to its current PTR hostname (via &#x60;get_hostname()&#x60;), the list of existing additional-IP repeat invoices (with &#x60;cancel_link&#x60; URLs), the count of paid extras, and the per-IP cost (in the website&#x27;s billing currency, falling back to USD/&#x60;WEBSITE_IP_COST&#x60;). Read-only. Use to populate a \&quot;buy another IP\&quot; form or to audit current IP allocations. Sibling ops: &#x60;postWebsiteBuyIp&#x60; (buy or update PTR), &#x60;gettWebsiteReverseDns&#x60; (PTR-only view), &#x60;postWebsitesReverseDns&#x60; (PTR-only update).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** - &#x60;ips&#x60; (object) — &#x60;{\&quot;&lt;ipv4&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}&#x60; for every IP attached. - &#x60;ipsDetails&#x60; (array) — existing addon invoices with each row&#x27;s &#x60;ip&#x60;, &#x60;cancel_link&#x60; (&#x60;cancel_addon?module&#x3D;webhosting&amp;r&#x3D;&lt;rid&gt;&#x60;), invoice metadata. - &#x60;ipCount&#x60; (integer) — count of paid addon IPs. - &#x60;ipCost&#x60; (float) — per-IP recurring cost in &#x60;currency&#x60;. - &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Buy another IP:** &#x60;postWebsiteBuyIp&#x60;. - **Update PTRs only:** &#x60;postWebsitesReverseDns&#x60; (or &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;). - **Cancel an addon IP:** follow the &#x60;cancel_link&#x60; URL. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20026</returns>
        public InlineResponse20026 GetWebsiteBuyIp (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsiteBuyIp");
    
            var path = "/websites/{id}/buy_ip";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteBuyIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteBuyIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20026) ApiClient.Deserialize(response.Content, typeof(InlineResponse20026), response.Headers);
        }
    
        /// <summary>
        /// Read full configuration and status detail for one webhosting service Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action &#x60;client_links&#x60;, and supported addons. Read-only. Backed by &#x60;ViewWebsite::getDetails()&#x60;. Internal &#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;, and &#x60;serviceMaster.website_key&#x60; (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll &#x60;website_status&#x60; after &#x60;addWebsite&#x60;. Sibling ops: &#x60;getWebsiteList&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns** (schema &#x60;Website&#x60;): - &#x60;serviceInfo&#x60; — &#x60;website_id&#x60;, &#x60;website_hostname&#x60;, &#x60;website_username&#x60;, &#x60;website_ip&#x60;, &#x60;website_server&#x60;, &#x60;website_type&#x60; (plan id), &#x60;website_status&#x60;, &#x60;website_comment&#x60;. - &#x60;serviceMaster&#x60; — host-server row (cPanel/DA/Plesk hostname, panel URL). &#x60;website_key&#x60; is stripped. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — &#x60;{name, link, icon}&#x60; for restart, login, backup, etc. Internal &#x60;?link&#x3D;queue&amp;action&#x3D;...&#x60; URLs are pre-resolved to plain action names. - &#x60;serviceAddons&#x60; — extra IPs, additional resources.  **Auth:** Session/API key. Ownership enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text — webhosting reuses the helper) — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Login to panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Reverse DNS:** &#x60;gettWebsiteReverseDns&#x60;, &#x60;postWebsitesReverseDns&#x60;. - **Buy extra IP:** &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;. - **Migration:** &#x60;postWebsiteMigration&#x60;. - **Resend welcome email:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>Website</returns>
        public Website GetWebsiteInfo (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsiteInfo");
    
            var path = "/websites/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Website) ApiClient.Deserialize(response.Content, typeof(Website), response.Headers);
        }
    
        /// <summary>
        /// List all billing invoices and recurring charges scoped to one website Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via &#x60;postWebsiteBuyIp&#x60;. Backed by &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#x27;webhosting&#x27;&#x60; (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, sibling cross-module: &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;. For account-wide history use top-level &#x60;getBillingInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of invoice rows: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;currency&#x60;, &#x60;module&#x3D;webhosting&#x60;, &#x60;service&#x3D;{id}&#x60;.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Single invoice detail:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        public ChargeInvoiceRows GetWebsiteInvoices (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsiteInvoices");
    
            var path = "/websites/{id}/invoices";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteInvoices: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteInvoices: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ChargeInvoiceRows) ApiClient.Deserialize(response.Content, typeof(ChargeInvoiceRows), response.Headers);
        }
    
        /// <summary>
        /// List the caller&#x27;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services Enumerates every shared/reseller hosting account (\&quot;website\&quot;) owned by the authenticated customer. The canonical entry point for discovering a &#x60;website_id&#x60; to pass into other webhosting endpoints. Filtered server-side by &#x60;website_custid &#x3D; session account_id&#x60; — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;, &#x60;getNewWebsite&#x60; (order a new one).  **Path/Query/Body:** None.  **Returns:** Array of &#x60;WebsiteRow&#x60; — per-website summary: - &#x60;website_id&#x60; (integer) — canonical id used in &#x60;/websites/{id}/_*&#x60; paths. - &#x60;website_hostname&#x60; (string) — primary FQDN. - &#x60;website_status&#x60; (string enum) — &#x60;pending&#x60; / &#x60;active&#x60; / &#x60;pending-cancel&#x60; / &#x60;canceled&#x60;. - &#x60;services_name&#x60; (string) — plan/package label (e.g. &#x60;Standard&#x60;, &#x60;Reseller&#x60;). - &#x60;repeat_invoices_cost&#x60; (decimal) — current recurring cost in the website&#x27;s billing currency. - &#x60;website_comment&#x60; (string|null) — customer-provided note.  **Auth:** Session/API key. Ownership filter enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-website detail:** &#x60;getWebsiteInfo&#x60; (full). - **Control panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore points:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Order a new site:** &#x60;getNewWebsite&#x60; → &#x60;putWebsites&#x60; → &#x60;addWebsite&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <returns>List&lt;WebsiteRow&gt;</returns>
        public List<WebsiteRow> GetWebsiteList ()
        {
    
            var path = "/websites";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsiteList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<WebsiteRow>) ApiClient.Deserialize(response.Content, typeof(List<WebsiteRow>), response.Headers);
        }
    
        /// <summary>
        /// List off-site cpmove backups stored in Swift — list or inline-download archive Returns the list of off-site cpmove backups stored for the webhosting account, or — with the &#x60;download&#x3D;&lt;name&gt;&#x60; query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container &#x60;serviceMaster.website_name&#x60; (authenticated with &#x60;SWIFT_WEBHOSTING_USER&#x60;/&#x60;SWIFT_WEBHOSTING_PASS&#x60;) and filtered to objects matching &#x60;cpmove-{website_username}-*&#x60;. Use to find restore points before a risky change or before &#x60;webhostingCancel&#x60;. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: &#x60;webhostingCancel&#x60; (snapshot before terminating), &#x60;getWebsiteInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Query params:** - &#x60;download&#x60; (string, optional) — when set to a backup &#x60;name&#x60; from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no &#x60;download&#x60;): array of &#x60;{name: \&quot;&lt;cpmove-...&gt;\&quot;, size: \&quot;&lt;human-scaled&gt;\&quot;}&#x60; (size from &#x60;Content-Length&#x60; via &#x60;Scale($len, &#x27;bytes&#x27;, 1)&#x60;). - **Download mode** (&#x60;?download&#x3D;&lt;name&gt;&#x60;): single object &#x60;{name, size, file: \&quot;&lt;base64-encoded-archive&gt;\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Take a backup before cancelling:** &#x60;getWebsitesBackups&#x60; (with &#x60;download&#x3D;&#x60;) → &#x60;webhostingCancel&#x60;. - **Migrate to/from another host:** &#x60;postWebsiteMigration&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>WebsiteBackups</returns>
        public WebsiteBackups GetWebsitesBackups (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsitesBackups");
    
            var path = "/websites/{id}/backups";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesBackups: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesBackups: " + response.ErrorMessage, response.ErrorMessage);
    
            return (WebsiteBackups) ApiClient.Deserialize(response.Content, typeof(WebsiteBackups), response.Headers);
        }
    
        /// <summary>
        /// Get a one-time auto-login URL for the website&#x27;s control panel Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on &#x60;serviceMaster.website_type&#x60;: - **WEB_CPANEL** (default): calls WHM &#x60;create_user_session&#x60; for the &#x60;cpaneld&#x60; service, returns a session-bound cPanel URL. - **WEB_DIRECTADMIN**: calls DA &#x60;CMD_API_LOGIN_KEYS&#x60; (&#x60;max_uses&#x3D;2&#x60;, IP-locked to &#x60;127.0.0.1&#x60; plus the caller&#x27;s &#x60;client_ip&#x60;); returns one-time URL. - **WEB_PLESK**: calls Plesk SDK &#x60;createSession&#x60;, returns &#x60;https://&lt;host&gt;:8443/enterprise/rsession_init.php?PLESKSESSID&#x3D;...&#x60;. - **WEB_PPA**, **WEB_VESTA**: placeholders (return &#x60;Unhandled Server Type&#x60;).  Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesWelcomeEmail&#x60; (re-send credentials instead).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;{type: \&quot;location\&quot;, location: \&quot;&lt;one-time-url&gt;\&quot;}&#x60;.  **Side effects:** - WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: &#x60;max_uses&#x3D;2&#x60;, IP-locked).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;Website is &lt;status&gt;, only websites that are \&quot;active\&quot; can do this.&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;No Host server or username&#x60; — service has no &#x60;website_username&#x60; or &#x60;website_server&#x60; resolved. - &#x60;Sorry! something went wrong, couldn&#x27;t connect to &lt;panel&gt;!&#x60; — panel-side failure. - &#x60;Unhandled Server Type&#x60; — &#x60;website_type&#x60; is WEB_PPA / WEB_VESTA (or unrecognized).  **Related calls:** - **If you need the credentials themselves:** &#x60;getWebsitesWelcomeEmail&#x60; (re-sends the welcome email with username/password). - **List sites first:** &#x60;getWebsiteList&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>WebsiteLoginResponse</returns>
        public WebsiteLoginResponse GetWebsitesLogin (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsitesLogin");
    
            var path = "/websites/{id}/login";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesLogin: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesLogin: " + response.ErrorMessage, response.ErrorMessage);
    
            return (WebsiteLoginResponse) ApiClient.Deserialize(response.Content, typeof(WebsiteLoginResponse), response.Headers);
        }
    
        /// <summary>
        /// Resend the webhosting welcome email with control-panel credentials and URL Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved &#x60;website_welcome_email($id)&#x60; helper which composes and dispatches the message to the account&#x27;s &#x60;account_lid&#x60;. Idempotent — safe to call multiple times. Use after &#x60;addWebsite&#x60; finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;, &#x60;getMailWelcomeEmail&#x60;. For an auto-login URL (no password reveal), use &#x60;getWebsitesLogin&#x60; instead.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Side effects:** - Sends an email to the account&#x27;s billing email address with the control-panel credentials currently stored in &#x60;history_log&#x60; for this website.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Service is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Auto-login instead:** &#x60;getWebsitesLogin&#x60; (one-time URL, no password disclosure). - **List sites first:** &#x60;getWebsiteList&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse GetWebsitesWelcomeEmail (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetWebsitesWelcomeEmail");
    
            var path = "/websites/{id}/welcome_email";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesWelcomeEmail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetWebsitesWelcomeEmail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Read current reverse-DNS (PTR) records for the website&#x27;s IPs Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary &#x60;website_ip&#x60; plus any addons (from &#x60;get_service_addons().extra_ips&#x60;). PTRs are read live via &#x60;get_hostname()&#x60;, not cached. Use to render a PTR editor before calling &#x60;postWebsitesReverseDns&#x60;. **Note:** the operationId has a typo (&#x60;gettWebsiteReverseDns&#x60; with double-t) preserved for back-compat — do not rename. Sibling ops: &#x60;postWebsitesReverseDns&#x60; (update), &#x60;getWebsiteBuyIp&#x60; (broader IP+billing view), &#x60;postWebsiteBuyIp&#x60; (also supports &#x60;action&#x3D;reverse_dns&#x60;).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ReverseDnsEntries&#x60; — &#x60;{\&quot;ips\&quot;: {\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}}&#x60;. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Update PTRs:** &#x60;postWebsitesReverseDns&#x60;. - **Add IPs first:** &#x60;getWebsiteBuyIp&#x60; → &#x60;postWebsiteBuyIp&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>ReverseDnsEntries</returns>
        public ReverseDnsEntries GettWebsiteReverseDns (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GettWebsiteReverseDns");
    
            var path = "/websites/{id}/reverse_dns";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GettWebsiteReverseDns: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GettWebsiteReverseDns: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ReverseDnsEntries) ApiClient.Deserialize(response.Content, typeof(ReverseDnsEntries), response.Headers);
        }
    
        /// <summary>
        /// Buy an additional IP for the website OR update reverse DNS records Dual-purpose mutation that branches on the &#x60;action&#x60; body field. **&#x60;action&#x3D;buy_ip&#x60;** (default): allocates a new addon IP via &#x60;website_addon_get_free_ips&#x60;, creates an addon &#x60;repeat_invoices&#x60; row at &#x60;WEBSITE_IP_COST&#x60; (currency-converted to the parent invoice&#x27;s currency), and emits a one-period &#x60;invoices&#x60; row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **&#x60;action&#x3D;reverse_dns&#x60;**: skips billing entirely and updates PTR records via &#x60;reverse_dns()&#x60; for any IP in the &#x60;ips&#x60; map whose new hostname differs from the current &#x60;get_hostname()&#x60; value. Sibling ops: &#x60;getWebsiteBuyIp&#x60; (preview), &#x60;gettWebsiteReverseDns&#x60; / &#x60;postWebsitesReverseDns&#x60; (PTR-only).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields:** - &#x60;action&#x60; (string, optional, default &#x60;buy_ip&#x60;) — &#x60;buy_ip&#x60; or &#x60;reverse_dns&#x60;. - For &#x60;action&#x3D;reverse_dns&#x60;: &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For &#x60;buy_ip&#x60;: &#x60;{text: \&quot;Ordered Additional IP successfully.\&quot;, invoice: &lt;integer&gt;, repeatInvoice: &lt;integer&gt;}&#x60;. - For &#x60;reverse_dns&#x60;: &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - &#x60;buy_ip&#x60;: inserts &#x60;repeat_invoices&#x60; row (&#x60;Additional IP for Webhosting &lt;id&gt;&#x60;) and an &#x60;invoices&#x60; row for the first period. - &#x60;reverse_dns&#x60;: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60;. - &#x60;409 Website is not active&#x60;. - &#x60;No available free IPs on this server. Please contact support to order additional IPs.&#x60; — host has no free IPs.  **Related calls:** - **Preview first:** &#x60;getWebsiteBuyIp&#x60;. - **Pay the new addon invoice:** &#x60;initiatePayment&#x60; with the returned &#x60;invoice&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20027</returns>
        public InlineResponse20027 PostWebsiteBuyIp (IdBuyIpBody body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostWebsiteBuyIp");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsiteBuyIp");
    
            var path = "/websites/{id}/buy_ip";
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
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteBuyIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteBuyIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20027) ApiClient.Deserialize(response.Content, typeof(InlineResponse20027), response.Headers);
        }
    
        /// <summary>
        /// Buy an additional IP for the website OR update reverse DNS records Dual-purpose mutation that branches on the &#x60;action&#x60; body field. **&#x60;action&#x3D;buy_ip&#x60;** (default): allocates a new addon IP via &#x60;website_addon_get_free_ips&#x60;, creates an addon &#x60;repeat_invoices&#x60; row at &#x60;WEBSITE_IP_COST&#x60; (currency-converted to the parent invoice&#x27;s currency), and emits a one-period &#x60;invoices&#x60; row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **&#x60;action&#x3D;reverse_dns&#x60;**: skips billing entirely and updates PTR records via &#x60;reverse_dns()&#x60; for any IP in the &#x60;ips&#x60; map whose new hostname differs from the current &#x60;get_hostname()&#x60; value. Sibling ops: &#x60;getWebsiteBuyIp&#x60; (preview), &#x60;gettWebsiteReverseDns&#x60; / &#x60;postWebsitesReverseDns&#x60; (PTR-only).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields:** - &#x60;action&#x60; (string, optional, default &#x60;buy_ip&#x60;) — &#x60;buy_ip&#x60; or &#x60;reverse_dns&#x60;. - For &#x60;action&#x3D;reverse_dns&#x60;: &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For &#x60;buy_ip&#x60;: &#x60;{text: \&quot;Ordered Additional IP successfully.\&quot;, invoice: &lt;integer&gt;, repeatInvoice: &lt;integer&gt;}&#x60;. - For &#x60;reverse_dns&#x60;: &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - &#x60;buy_ip&#x60;: inserts &#x60;repeat_invoices&#x60; row (&#x60;Additional IP for Webhosting &lt;id&gt;&#x60;) and an &#x60;invoices&#x60; row for the first period. - &#x60;reverse_dns&#x60;: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60;. - &#x60;409 Website is not active&#x60;. - &#x60;No available free IPs on this server. Please contact support to order additional IPs.&#x60; — host has no free IPs.  **Related calls:** - **Preview first:** &#x60;getWebsiteBuyIp&#x60;. - **Pay the new addon invoice:** &#x60;initiatePayment&#x60; with the returned &#x60;invoice&#x60;. 
        /// </summary>
        /// <param name="ips"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20027</returns>
        public InlineResponse20027 PostWebsiteBuyIp (Dictionary<string, string> ips, int? id)
        {
            // verify the required parameter 'ips' is set
            if (ips == null) throw new ApiException(400, "Missing required parameter 'ips' when calling PostWebsiteBuyIp");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsiteBuyIp");
    
            var path = "/websites/{id}/buy_ip";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ips != null) formParams.Add("ips", ApiClient.ParameterToString(ips)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteBuyIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteBuyIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20027) ApiClient.Deserialize(response.Content, typeof(InlineResponse20027), response.Headers);
        }
    
        /// <summary>
        /// Submit a request for InterServer staff to migrate a website from another host Submits a migration request: opens a support ticket containing the customer&#x27;s credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket&#x27;s id is returned; track progress with the helpdesk/tickets API. Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesBackups&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (JSON or multipart): - &#x60;custPortal&#x60; (string) — URL of the current hosting provider&#x27;s customer portal (e.g. &#x60;sso.godaddy.com&#x60;). - &#x60;regEmail&#x60; (string) — email/username at the current host. - &#x60;password&#x60; (string) — password at the current host. - &#x60;ctrlPanel&#x60; (string) — current control-panel URL (e.g. &#x60;yourdomain.com/cpanel/&#x60;). - &#x60;ftpUsername&#x60; (string), &#x60;ftpPassword&#x60; (string) — FTP credentials. - &#x60;siteBusyMig&#x60; (string) — info on site traffic / whether a holding page can be shown during migration. - &#x60;splReqMig&#x60; (string) — special requirements (PHP version, modules, etc.). - &#x60;domainReg&#x60; (string) — whether domain-registration transfer is also needed (&#x60;yes&#x60;/&#x60;no&#x60; or freeform). - &#x60;dataMig&#x60; (string) — nameserver switch timing preference. - &#x60;domainRegPortal&#x60;, &#x60;domainRegEmail&#x60;, &#x60;domainRegPassword&#x60; (strings) — domain-registrar credentials.  **Returns:** &#x60;{text: \&quot;Your migration request has been sucessfully submitted...\&quot;, ticket: &lt;integer&gt;}&#x60; — pass &#x60;ticket&#x60; to the tickets API to monitor.  **Side effects:** - Creates a support ticket via &#x60;create_ticket()&#x60; with the credentials in the ticket body. - Inserts a &#x60;history_log&#x60; row of type &#x60;Webhost Migration&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned &#x60;ticket&#x60; id). - **Verify after migration:** &#x60;getWebsitesLogin&#x60;, &#x60;getWebsiteInfo&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20028</returns>
        public InlineResponse20028 PostWebsiteMigration (IdMigrationBody body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostWebsiteMigration");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsiteMigration");
    
            var path = "/websites/{id}/migration";
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
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteMigration: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteMigration: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20028) ApiClient.Deserialize(response.Content, typeof(InlineResponse20028), response.Headers);
        }
    
        /// <summary>
        /// Submit a request for InterServer staff to migrate a website from another host Submits a migration request: opens a support ticket containing the customer&#x27;s credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket&#x27;s id is returned; track progress with the helpdesk/tickets API. Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesBackups&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (JSON or multipart): - &#x60;custPortal&#x60; (string) — URL of the current hosting provider&#x27;s customer portal (e.g. &#x60;sso.godaddy.com&#x60;). - &#x60;regEmail&#x60; (string) — email/username at the current host. - &#x60;password&#x60; (string) — password at the current host. - &#x60;ctrlPanel&#x60; (string) — current control-panel URL (e.g. &#x60;yourdomain.com/cpanel/&#x60;). - &#x60;ftpUsername&#x60; (string), &#x60;ftpPassword&#x60; (string) — FTP credentials. - &#x60;siteBusyMig&#x60; (string) — info on site traffic / whether a holding page can be shown during migration. - &#x60;splReqMig&#x60; (string) — special requirements (PHP version, modules, etc.). - &#x60;domainReg&#x60; (string) — whether domain-registration transfer is also needed (&#x60;yes&#x60;/&#x60;no&#x60; or freeform). - &#x60;dataMig&#x60; (string) — nameserver switch timing preference. - &#x60;domainRegPortal&#x60;, &#x60;domainRegEmail&#x60;, &#x60;domainRegPassword&#x60; (strings) — domain-registrar credentials.  **Returns:** &#x60;{text: \&quot;Your migration request has been sucessfully submitted...\&quot;, ticket: &lt;integer&gt;}&#x60; — pass &#x60;ticket&#x60; to the tickets API to monitor.  **Side effects:** - Creates a support ticket via &#x60;create_ticket()&#x60; with the credentials in the ticket body. - Inserts a &#x60;history_log&#x60; row of type &#x60;Webhost Migration&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned &#x60;ticket&#x60; id). - **Verify after migration:** &#x60;getWebsitesLogin&#x60;, &#x60;getWebsiteInfo&#x60;. 
        /// </summary>
        /// <param name="custPortal"></param>
        /// <param name="regEmail"></param>
        /// <param name="password"></param>
        /// <param name="ctrlPanel"></param>
        /// <param name="ftpUsername"></param>
        /// <param name="ftpPassword"></param>
        /// <param name="siteBusyMig"></param>
        /// <param name="splReqMig"></param>
        /// <param name="domainReg"></param>
        /// <param name="dataMig"></param>
        /// <param name="domainRegPortal"></param>
        /// <param name="domainRegEmail"></param>
        /// <param name="domainRegPassword"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20028</returns>
        public InlineResponse20028 PostWebsiteMigration (string custPortal, string regEmail, string password, string ctrlPanel, string ftpUsername, string ftpPassword, string siteBusyMig, string splReqMig, string domainReg, string dataMig, string domainRegPortal, string domainRegEmail, string domainRegPassword, int? id)
        {
            // verify the required parameter 'custPortal' is set
            if (custPortal == null) throw new ApiException(400, "Missing required parameter 'custPortal' when calling PostWebsiteMigration");
            // verify the required parameter 'regEmail' is set
            if (regEmail == null) throw new ApiException(400, "Missing required parameter 'regEmail' when calling PostWebsiteMigration");
            // verify the required parameter 'password' is set
            if (password == null) throw new ApiException(400, "Missing required parameter 'password' when calling PostWebsiteMigration");
            // verify the required parameter 'ctrlPanel' is set
            if (ctrlPanel == null) throw new ApiException(400, "Missing required parameter 'ctrlPanel' when calling PostWebsiteMigration");
            // verify the required parameter 'ftpUsername' is set
            if (ftpUsername == null) throw new ApiException(400, "Missing required parameter 'ftpUsername' when calling PostWebsiteMigration");
            // verify the required parameter 'ftpPassword' is set
            if (ftpPassword == null) throw new ApiException(400, "Missing required parameter 'ftpPassword' when calling PostWebsiteMigration");
            // verify the required parameter 'siteBusyMig' is set
            if (siteBusyMig == null) throw new ApiException(400, "Missing required parameter 'siteBusyMig' when calling PostWebsiteMigration");
            // verify the required parameter 'splReqMig' is set
            if (splReqMig == null) throw new ApiException(400, "Missing required parameter 'splReqMig' when calling PostWebsiteMigration");
            // verify the required parameter 'domainReg' is set
            if (domainReg == null) throw new ApiException(400, "Missing required parameter 'domainReg' when calling PostWebsiteMigration");
            // verify the required parameter 'dataMig' is set
            if (dataMig == null) throw new ApiException(400, "Missing required parameter 'dataMig' when calling PostWebsiteMigration");
            // verify the required parameter 'domainRegPortal' is set
            if (domainRegPortal == null) throw new ApiException(400, "Missing required parameter 'domainRegPortal' when calling PostWebsiteMigration");
            // verify the required parameter 'domainRegEmail' is set
            if (domainRegEmail == null) throw new ApiException(400, "Missing required parameter 'domainRegEmail' when calling PostWebsiteMigration");
            // verify the required parameter 'domainRegPassword' is set
            if (domainRegPassword == null) throw new ApiException(400, "Missing required parameter 'domainRegPassword' when calling PostWebsiteMigration");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsiteMigration");
    
            var path = "/websites/{id}/migration";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (custPortal != null) formParams.Add("custPortal", ApiClient.ParameterToString(custPortal)); // form parameter
if (regEmail != null) formParams.Add("regEmail", ApiClient.ParameterToString(regEmail)); // form parameter
if (password != null) formParams.Add("password", ApiClient.ParameterToString(password)); // form parameter
if (ctrlPanel != null) formParams.Add("ctrlPanel", ApiClient.ParameterToString(ctrlPanel)); // form parameter
if (ftpUsername != null) formParams.Add("ftpUsername", ApiClient.ParameterToString(ftpUsername)); // form parameter
if (ftpPassword != null) formParams.Add("ftpPassword", ApiClient.ParameterToString(ftpPassword)); // form parameter
if (siteBusyMig != null) formParams.Add("siteBusyMig", ApiClient.ParameterToString(siteBusyMig)); // form parameter
if (splReqMig != null) formParams.Add("splReqMig", ApiClient.ParameterToString(splReqMig)); // form parameter
if (domainReg != null) formParams.Add("domainReg", ApiClient.ParameterToString(domainReg)); // form parameter
if (dataMig != null) formParams.Add("dataMig", ApiClient.ParameterToString(dataMig)); // form parameter
if (domainRegPortal != null) formParams.Add("domainRegPortal", ApiClient.ParameterToString(domainRegPortal)); // form parameter
if (domainRegEmail != null) formParams.Add("domainRegEmail", ApiClient.ParameterToString(domainRegEmail)); // form parameter
if (domainRegPassword != null) formParams.Add("domainRegPassword", ApiClient.ParameterToString(domainRegPassword)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteMigration: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsiteMigration: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20028) ApiClient.Deserialize(response.Content, typeof(InlineResponse20028), response.Headers);
        }
    
        /// <summary>
        /// Bulk-update reverse-DNS (PTR) records for one or more website IPs Sets the PTR hostname for each IP in the website&#x27;s IP set. Calls &#x60;reverse_dns($ip, $newHostname)&#x60; for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60; even if no entries actually changed. PTR propagation is asynchronous — re-call &#x60;gettWebsiteReverseDns&#x60; after a few minutes to confirm. Equivalent to calling &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;. Sibling ops: &#x60;gettWebsiteReverseDns&#x60;, &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (schema &#x60;ReverseDnsEntries&#x60;): - &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - One &#x60;reverse_dns()&#x60; call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read current PTRs first:** &#x60;gettWebsiteReverseDns&#x60;. - **Equivalent endpoint:** &#x60;postWebsiteBuyIp&#x60; (&#x60;action&#x3D;reverse_dns&#x60;). 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>TextResponse</returns>
        public TextResponse PostWebsitesReverseDns (ReverseDnsEntries body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostWebsitesReverseDns");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsitesReverseDns");
    
            var path = "/websites/{id}/reverse_dns";
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
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsitesReverseDns: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsitesReverseDns: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Bulk-update reverse-DNS (PTR) records for one or more website IPs Sets the PTR hostname for each IP in the website&#x27;s IP set. Calls &#x60;reverse_dns($ip, $newHostname)&#x60; for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60; even if no entries actually changed. PTR propagation is asynchronous — re-call &#x60;gettWebsiteReverseDns&#x60; after a few minutes to confirm. Equivalent to calling &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;. Sibling ops: &#x60;gettWebsiteReverseDns&#x60;, &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (schema &#x60;ReverseDnsEntries&#x60;): - &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - One &#x60;reverse_dns()&#x60; call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read current PTRs first:** &#x60;gettWebsiteReverseDns&#x60;. - **Equivalent endpoint:** &#x60;postWebsiteBuyIp&#x60; (&#x60;action&#x3D;reverse_dns&#x60;). 
        /// </summary>
        /// <param name="ips"></param>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>TextResponse</returns>
        public TextResponse PostWebsitesReverseDns (Dictionary<string, Object> ips, int? id)
        {
            // verify the required parameter 'ips' is set
            if (ips == null) throw new ApiException(400, "Missing required parameter 'ips' when calling PostWebsitesReverseDns");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostWebsitesReverseDns");
    
            var path = "/websites/{id}/reverse_dns";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ips != null) formParams.Add("ips", ApiClient.ParameterToString(ips)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsitesReverseDns: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostWebsitesReverseDns: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Validate a webhosting order and preview cost — dry run, no charge Step 2 of the webhosting order flow. Dry-runs the order through &#x60;validate_buy_website()&#x60;: checks &#x60;hostname&#x60; against &#x60;valid_hostname()&#x60; and the keyword blocklist, validates &#x60;packageId&#x60; against the customer&#x27;s plan eligibility, confirms the chosen plan&#x27;s hypervisor pool is in stock (&#x60;OUTOFSTOCK_WEBHOSTING_*&#x60; constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before &#x60;addWebsite&#x60;** to surface coupon/pricing/hostname problems cheaply. Sibling ops: &#x60;getNewWebsite&#x60; (catalog), &#x60;addWebsite&#x60; (place order).  **Body fields (form or JSON):** - &#x60;hostname&#x60; (string, required) — primary FQDN for the website. Must pass &#x60;valid_hostname()&#x60;, must not contain &#x60;interserver.net&#x60; (non-admin), must not be on the blocked-keyword list, must match the plan&#x27;s TOS rules. - &#x60;rootpass&#x60; (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via &#x60;generateRandomString(8,1,1,1,1)&#x60;. - &#x60;packageId&#x60; (integer, required) — plan id from &#x60;getNewWebsite.serviceTypes[].services_id&#x60;. Must have &#x60;services_module&#x3D;&#x27;webhosting&#x27;&#x60; and &#x60;services_buyable&#x3D;1&#x60; (non-admin). - &#x60;period&#x60; (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply. - &#x60;coupon&#x60; (string, optional) — coupon code. - &#x60;serviceOfferId&#x60; (integer, optional) — promo bundle from &#x60;getNewWebsite.serviceOffers&#x60;. - &#x60;script&#x60; (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 &#x3D; none). - &#x60;comment&#x60; (string, optional) — free-form note saved on the service row. - &#x60;registerDomain&#x60; (bool, optional) — when &#x60;true&#x60; and &#x60;enableDomainRegistering&#x3D;true&#x60; from the catalog, also registers/transfers the domain through the order. - Implicit: TOS acceptance (validated via &#x60;tos&#x3D;&#x27;yes&#x27;&#x60; in source — required for non-admin).  **Returns** (validation envelope): - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if the order can safely be POSTed. - &#x60;errors&#x60; (array of strings) — human-readable validation messages. - &#x60;frequency&#x60; (integer) — resolved billing frequency. - &#x60;coupon&#x60; (string) — the applied coupon name (echoed). - &#x60;couponCode&#x60; (integer) — the matched coupon row id, or &#x60;0&#x60; if none. - &#x60;serviceType&#x60; (integer) — resolved plan id. - &#x60;serviceCost&#x60; (float) — first-period total cost (includes coupon + period discount). - &#x60;originalCost&#x60; (float) — undiscounted reference. - &#x60;repeatServiceCost&#x60; (float) — recurring cost after discounts. - &#x60;hostname&#x60;, &#x60;password&#x60; (string) — final sanitized values (may differ from input — e.g. random password generated). - &#x60;introFrequency&#x60; (integer) — first-period bonus length (intro pricing).  **Side effects:** None — pure read.  **Auth:** Session/API key.  **Errors (within &#x60;errors&#x60; array, &#x60;continue&#x3D;false&#x60;):** - &#x60;Invalid Billing Interval&#x60; — &#x60;period&#x60; not numeric. - &#x60;All webhosting servers are currently full.&#x60; — &#x60;OUTOFSTOCK_WEBHOSTING&#x60;. - &#x60;Invalid Package Specified.&#x60; — plan id not in the webhosting module or not buyable. - &#x60;Our &lt;Plan&gt; Webhosting Servers are currently full.&#x60; — plan-specific stock check. - &#x60;The hostname cannot contain interserver.net&#x60;. - &#x60;Hostname \&quot;&lt;x&gt;\&quot; Contains Invalid Characters Or Is Blank&#x60;. - &#x60;Hostname contains a blocked keyword.&#x60;. - &#x60;You must agree to the terms of service and click the checkbox saying so.&#x60;. - &#x60;Invalid Coupon Specified&#x60; — coupon not usable for this plan/customer.  Top-level HTTP errors: &#x60;401&#x60; unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60; (catalog). - **Next:** &#x60;addWebsite&#x60; (same body — actually places the order).  **Example request body:** &#x60;&#x60;&#x60;json {   \&quot;hostname\&quot;: \&quot;mystore.example.com\&quot;,   \&quot;rootpass\&quot;: \&quot;Sup3rS3cret!\&quot;,   \&quot;packageId\&quot;: 23,   \&quot;period\&quot;: 12,   \&quot;coupon\&quot;: \&quot;\&quot;,   \&quot;registerDomain\&quot;: false,   \&quot;script\&quot;: 0 } &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        public void PutWebsites (WebsiteOrderPutRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutWebsites");
    
            var path = "/websites/order";
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
                throw new ApiException ((int)response.StatusCode, "Error calling PutWebsites: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutWebsites: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// POST mutation hook for the website detail page (use dedicated ops where possible) POST mutation hook for the website detail page. The implementation currently routes through the same &#x60;View::go()&#x60; handler as &#x60;getWebsiteInfo&#x60;; concrete update behavior depends on which &#x60;client_links&#x60; action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: &#x60;getWebsiteInfo&#x60;, all dedicated mutation endpoints below.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** Form-encoded fields appropriate to the &#x60;client_links&#x60; action being driven.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;...\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Prefer these dedicated endpoints:** - **Buy a paid IP or update reverse DNS:** &#x60;postWebsiteBuyIp&#x60; (the latter via &#x60;action&#x3D;reverse_dns&#x60;). - **PTR-only changes:** &#x60;postWebsitesReverseDns&#x60;. - **Migrate site from another host:** &#x60;postWebsiteMigration&#x60;. - **Resend control-panel credentials:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Auto-login to cPanel/DA/Plesk:** &#x60;getWebsitesLogin&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateWebsiteInfo (string id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateWebsiteInfo");
    
            var path = "/websites/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateWebsiteInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateWebsiteInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Schedule termination of a webhosting service — wipes panel account at cycle end **DESTRUCTIVE.** Schedules the website for cancellation via the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#x27;webhosting&#x27;&#x60;. Marks the service &#x60;pending-cancel&#x60;, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via &#x60;getWebsitesBackups&#x60; first (with &#x60;download&#x3D;&lt;name&gt;&#x60;) if data must be preserved. Sibling ops: &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInfo&#x60; (verify status flipped), &#x60;getWebsiteInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;WebsiteCancelResponse&#x60; — cancel-service confirmation payload.  **Side effects:** - Sets &#x60;website_status&#x3D;&#x27;pending-cancel&#x27;&#x60;. - Marks the &#x60;repeat_invoices&#x60; row as non-renewing. - Logs the cancellation in &#x60;history_log&#x60;. - Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed). - Customer retains panel access until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — service in a state that cannot be cancelled (already &#x60;canceled&#x60;, etc.).  **Related calls:** - **Before cancelling:** &#x60;getWebsitesBackups&#x60; (download a cpmove archive — irretrievable after deprovisioning). - **After cancelling:** &#x60;getWebsiteInfo&#x60; (confirm &#x60;pending-cancel&#x60;), &#x60;getWebsiteInvoices&#x60; (final invoices). - **Sibling cancels on other modules:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;mailCancel&#x60;, etc. all use the same &#x60;CancelService&#x60; handler. 
        /// </summary>
        /// <param name="id">The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;.</param>
        /// <returns>InlineResponse20025</returns>
        public InlineResponse20025 WebhostingCancel (string id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling WebhostingCancel");
    
            var path = "/websites/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling WebhostingCancel: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling WebhostingCancel: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20025) ApiClient.Deserialize(response.Content, typeof(InlineResponse20025), response.Headers);
        }
    
    }
}
