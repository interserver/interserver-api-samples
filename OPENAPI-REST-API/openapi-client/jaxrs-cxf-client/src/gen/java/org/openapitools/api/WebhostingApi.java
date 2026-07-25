package org.openapitools.api;

import org.openapitools.model.ChargeInvoiceRows;
import org.openapitools.model.GetAccountInfo401Response;
import org.openapitools.model.GetWebsiteBuyIp200Response;
import org.openapitools.model.PostWebsiteBuyIp200Response;
import org.openapitools.model.PostWebsiteBuyIpRequest;
import org.openapitools.model.PostWebsiteMigration200Response;
import org.openapitools.model.PostWebsiteMigrationRequest;
import org.openapitools.model.PostWebsiteMigrationRequest1;
import org.openapitools.model.ReverseDnsEntries;
import org.openapitools.model.ServiceOrderPostResponse;
import org.openapitools.model.SuccessTextResponse;
import org.openapitools.model.TextResponse;
import org.openapitools.model.WebhostingCancel200Response;
import org.openapitools.model.Website;
import org.openapitools.model.WebsiteBackups;
import org.openapitools.model.WebsiteLoginResponse;
import org.openapitools.model.WebsiteOrderPostRequest;
import org.openapitools.model.WebsiteOrderPutRequest;
import org.openapitools.model.WebsiteRow;
import org.openapitools.model.WebsitesOrder;

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
@Path("/websites")
@Api(value = "/", description = "")
public interface WebhostingApi  {

    /**
     * Place a new webhosting order, create the invoice, and queue provisioning
     *
     * Step 3 of the webhosting order flow — actually places the order. Revalidates via &#x60;validate_buy_website()&#x60; (same checks as &#x60;putWebsites&#x60;), then calls &#x60;place_buy_website()&#x60; to allocate a backing webhosting server, create the &#x60;webhosting&#x60; service row in &#x60;pending&#x60; status, generate a &#x60;Repeat_Invoice&#x60; recurring billing row, produce an initial &#x60;invoices&#x60; row, and (when &#x60;registerDomain&#x3D;true&#x60;) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; &#x60;getWebsitesWelcomeEmail&#x60; then fires automatically with control-panel credentials. **Real money** — call &#x60;putWebsites&#x60; first to preview cost. Sibling ops: &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;, &#x60;getWebsiteInfo&#x60;, &#x60;webhostingCancel&#x60;.  **Body fields:** Identical to &#x60;putWebsites&#x60;. Required: &#x60;hostname&#x60;, &#x60;packageId&#x60;. Optional: &#x60;rootpass&#x60; (auto-generated if blank), &#x60;period&#x60;, &#x60;coupon&#x60;, &#x60;serviceOfferId&#x60;, &#x60;script&#x60;, &#x60;comment&#x60;, &#x60;registerDomain&#x60;.  **Returns** (schema &#x60;ServiceOrderPostResponse&#x60;): - &#x60;total_cost&#x60; (string/decimal) — total to pay across all generated invoices. - &#x60;iid&#x60; (string) — primary invoice id (numeric). - &#x60;iids&#x60; (array) — tagged invoice ids (e.g. &#x60;SERVICEwebhosting12345&#x60;). - &#x60;real_iids&#x60; (array) — numeric invoice ids to pass to &#x60;initiatePayment&#x60;. - &#x60;serviceId&#x60; (integer) — new &#x60;website_id&#x60;; use with &#x60;getWebsiteInfo&#x60; to poll status. - &#x60;invoice_description&#x60; (string) — human-readable summary. - &#x60;cj_params&#x60; (object) — Commission Junction tracking parameters.  **Side effects:** - Inserts &#x60;webhosting&#x60; service row (&#x60;website_status&#x3D;&#39;pending&#39;&#x60;). - Inserts &#x60;repeat_invoices&#x60; row for recurring charge. - Inserts &#x60;invoices&#x60; row for the first period. - When &#x60;registerDomain&#x3D;true&#x60;: also creates a domain service row and its own invoice (&#x60;domain_serviceid&#x60;, &#x60;diid&#x60; returned alongside). - Hashes/encrypts &#x60;rootpass&#x60; to &#x60;history_log&#x60;.  **Auth:** Session/API key.  **Errors:** - When validation fails: response is the same &#x60;errors&#x60; array from &#x60;putWebsites&#x60; (HTTP 200 with &#x60;continue&#x3D;false&#x60; shape). - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60;, &#x60;putWebsites&#x60;. - **Next:** &#x60;getBillingInvoice&#x60; (confirm), &#x60;initiatePayment&#x60; (pay with &#x60;real_iids&#x60;), then poll &#x60;getWebsiteInfo&#x60; until &#x60;website_status&#x3D;&#x3D;&#39;active&#39;&#x60;. - **Resend credentials after activation:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel before paying:** &#x60;webhostingCancel&#x60; (or &#x60;deleteBillingInvoice&#x60; for the pending invoice).  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /websites/order                              -&gt; catalog (getNewWebsite) PUT /websites/order { ...config }                -&gt; price quote (putWebsites) POST /websites/order { ...config }               -&gt; { serviceId, real_iids } (addWebsite) GET /billing/invoices/{iid}                      -&gt; confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}               -&gt; pay (initiatePayment) GET /websites/{serviceId}                        -&gt; poll until website_status&#x3D;&#x3D;\&quot;active\&quot; GET /websites/{serviceId}/welcome_email          -&gt; resend credentials if needed &#x60;&#x60;&#x60; 
     *
     */
    @POST
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Place a new webhosting order, create the invoice, and queue provisioning", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Order placed successfully. Use the invoice ID to proceed to payment via `/billing/pay/{method}/{invoices}` or view the invoice at `/billing/invoices/{id}`.", response = ServiceOrderPostResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ServiceOrderPostResponse addWebsite(WebsiteOrderPostRequest websiteOrderPostRequest);

    /**
     * Read the webhosting order catalog — plans, packages, promo offers, pricing
     *
     * Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available &#x60;serviceTypes&#x60; (plans), &#x60;serviceOffers&#x60; (promotional bundles), &#x60;packages&#x60;, billing &#x60;period&#x60; options, the customer&#39;s currency symbol, default &#x60;serviceOfferId&#x60;, and &#x60;enableDomainRegistering&#x60; (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: &#x60;getNewVps&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewDomain&#x60;. Sibling order-flow ops: &#x60;putWebsites&#x60;, &#x60;addWebsite&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;WebsitesOrder&#x60;): - &#x60;currencySymbol&#x60; (string) — locale currency symbol for display. - &#x60;step&#x60; (integer) — current step in the multi-step order wizard. - &#x60;website&#x60; (integer) — pre-selected default plan id. - &#x60;period&#x60; (integer) — pre-selected default billing frequency. - &#x60;serviceOfferId&#x60; (integer) — pre-selected promo offer. - &#x60;serviceTypes&#x60; (array) — every plan; &#x60;services_ourcost&#x60; stripped server-side. Keys per row: &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_type&#x60; (&#x60;WEB_CPANEL&#x60; / &#x60;WEB_DIRECTADMIN&#x60; / &#x60;WEB_PLESK&#x60; / &#x60;WEB_VESTA&#x60; / &#x60;WEB_PPA&#x60; / &#x60;WEB_WORDPRESS&#x60; / &#x60;WEB_STORAGE&#x60;), etc. - &#x60;serviceOffers&#x60; (array) — current promotional bundles. - &#x60;packages&#x60;, &#x60;packges&#x60; (array — legacy field name preserved alongside &#x60;packages&#x60;). - &#x60;enableDomainRegistering&#x60; (bool) — when &#x60;true&#x60;, the order can also register/transfer a domain. - &#x60;jsonServices&#x60;, &#x60;jsonServiceOffers&#x60; (string) — JSON-encoded copies for inline use in HTML.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putWebsites&#x60; (validate + quote — no charge), &#x60;addWebsite&#x60; (place order).  **Example abridged response:** &#x60;&#x60;&#x60;json {   \&quot;currencySymbol\&quot;: \&quot;$\&quot;,   \&quot;step\&quot;: 1,   \&quot;website\&quot;: 23,   \&quot;period\&quot;: 1,   \&quot;enableDomainRegistering\&quot;: true,   \&quot;serviceTypes\&quot;: [     {\&quot;services_id\&quot;: 23, \&quot;services_name\&quot;: \&quot;Standard\&quot;, \&quot;services_cost\&quot;: 8.00, \&quot;services_type\&quot;: 1},     {\&quot;services_id\&quot;: 25, \&quot;services_name\&quot;: \&quot;Reseller\&quot;, \&quot;services_cost\&quot;: 24.95, \&quot;services_type\&quot;: 1}   ] } &#x60;&#x60;&#x60; 
     *
     */
    @GET
    @Path("/order")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read the webhosting order catalog — plans, packages, promo offers, pricing", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Website ordering details including available plans and pricing.", response = WebsitesOrder.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public WebsitesOrder getNewWebsite();

    /**
     * Read website IPs, current reverse DNS, and additional-IP pricing
     *
     * Combined IP/billing view for a website: returns the primary &#x60;website_ip&#x60; plus any addon extras, each mapped to its current PTR hostname (via &#x60;get_hostname()&#x60;), the list of existing additional-IP repeat invoices (with &#x60;cancel_link&#x60; URLs), the count of paid extras, and the per-IP cost (in the website&#39;s billing currency, falling back to USD/&#x60;WEBSITE_IP_COST&#x60;). Read-only. Use to populate a \&quot;buy another IP\&quot; form or to audit current IP allocations. Sibling ops: &#x60;postWebsiteBuyIp&#x60; (buy or update PTR), &#x60;gettWebsiteReverseDns&#x60; (PTR-only view), &#x60;postWebsitesReverseDns&#x60; (PTR-only update).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** - &#x60;ips&#x60; (object) — &#x60;{\&quot;&lt;ipv4&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}&#x60; for every IP attached. - &#x60;ipsDetails&#x60; (array) — existing addon invoices with each row&#39;s &#x60;ip&#x60;, &#x60;cancel_link&#x60; (&#x60;cancel_addon?module&#x3D;webhosting&amp;r&#x3D;&lt;rid&gt;&#x60;), invoice metadata. - &#x60;ipCount&#x60; (integer) — count of paid addon IPs. - &#x60;ipCost&#x60; (float) — per-IP recurring cost in &#x60;currency&#x60;. - &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Buy another IP:** &#x60;postWebsiteBuyIp&#x60;. - **Update PTRs only:** &#x60;postWebsitesReverseDns&#x60; (or &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;). - **Cancel an addon IP:** follow the &#x60;cancel_link&#x60; URL. 
     *
     */
    @GET
    @Path("/{id}/buy_ip")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read website IPs, current reverse DNS, and additional-IP pricing", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Current IP addresses and their reverse DNS hostnames for the website.", response = GetWebsiteBuyIp200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public GetWebsiteBuyIp200Response getWebsiteBuyIp(@PathParam("id") Integer id);

    /**
     * Read full configuration and status detail for one webhosting service
     *
     * Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action &#x60;client_links&#x60;, and supported addons. Read-only. Backed by &#x60;ViewWebsite::getDetails()&#x60;. Internal &#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;, and &#x60;serviceMaster.website_key&#x60; (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll &#x60;website_status&#x60; after &#x60;addWebsite&#x60;. Sibling ops: &#x60;getWebsiteList&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns** (schema &#x60;Website&#x60;): - &#x60;serviceInfo&#x60; — &#x60;website_id&#x60;, &#x60;website_hostname&#x60;, &#x60;website_username&#x60;, &#x60;website_ip&#x60;, &#x60;website_server&#x60;, &#x60;website_type&#x60; (plan id), &#x60;website_status&#x60;, &#x60;website_comment&#x60;. - &#x60;serviceMaster&#x60; — host-server row (cPanel/DA/Plesk hostname, panel URL). &#x60;website_key&#x60; is stripped. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — &#x60;{name, link, icon}&#x60; for restart, login, backup, etc. Internal &#x60;?link&#x3D;queue&amp;action&#x3D;...&#x60; URLs are pre-resolved to plain action names. - &#x60;serviceAddons&#x60; — extra IPs, additional resources.  **Auth:** Session/API key. Ownership enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text — webhosting reuses the helper) — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Login to panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Reverse DNS:** &#x60;gettWebsiteReverseDns&#x60;, &#x60;postWebsitesReverseDns&#x60;. - **Buy extra IP:** &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;. - **Migration:** &#x60;postWebsiteMigration&#x60;. - **Resend welcome email:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
     *
     */
    @GET
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read full configuration and status detail for one webhosting service", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Website details", response = Website.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public Website getWebsiteInfo(@PathParam("id") Integer id);

    /**
     * List all billing invoices and recurring charges scoped to one website
     *
     * Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via &#x60;postWebsiteBuyIp&#x60;. Backed by &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#39;webhosting&#39;&#x60; (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, sibling cross-module: &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;. For account-wide history use top-level &#x60;getBillingInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of invoice rows: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;currency&#x60;, &#x60;module&#x3D;webhosting&#x60;, &#x60;service&#x3D;{id}&#x60;.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Single invoice detail:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 
     *
     */
    @GET
    @Path("/{id}/invoices")
    @Produces({ "application/json" })
    @ApiOperation(value = "List all billing invoices and recurring charges scoped to one website", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Get Invoices response", response = ChargeInvoiceRows.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ChargeInvoiceRows getWebsiteInvoices(@PathParam("id") Integer id);

    /**
     * List the caller&#39;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
     *
     * Enumerates every shared/reseller hosting account (\&quot;website\&quot;) owned by the authenticated customer. The canonical entry point for discovering a &#x60;website_id&#x60; to pass into other webhosting endpoints. Filtered server-side by &#x60;website_custid &#x3D; session account_id&#x60; — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesLogin&#x60;, &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInvoices&#x60;, &#x60;webhostingCancel&#x60;, &#x60;getNewWebsite&#x60; (order a new one).  **Path/Query/Body:** None.  **Returns:** Array of &#x60;WebsiteRow&#x60; — per-website summary: - &#x60;website_id&#x60; (integer) — canonical id used in &#x60;/websites/{id}/_*&#x60; paths. - &#x60;website_hostname&#x60; (string) — primary FQDN. - &#x60;website_status&#x60; (string enum) — &#x60;pending&#x60; / &#x60;active&#x60; / &#x60;pending-cancel&#x60; / &#x60;canceled&#x60;. - &#x60;services_name&#x60; (string) — plan/package label (e.g. &#x60;Standard&#x60;, &#x60;Reseller&#x60;). - &#x60;repeat_invoices_cost&#x60; (decimal) — current recurring cost in the website&#39;s billing currency. - &#x60;website_comment&#x60; (string|null) — customer-provided note.  **Auth:** Session/API key. Ownership filter enforced via &#x60;website_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-website detail:** &#x60;getWebsiteInfo&#x60; (full). - **Control panel:** &#x60;getWebsitesLogin&#x60; (auto-login URL). - **Backups + restore points:** &#x60;getWebsitesBackups&#x60;. - **Billing:** &#x60;getWebsiteInvoices&#x60;. - **Order a new site:** &#x60;getNewWebsite&#x60; → &#x60;putWebsites&#x60; → &#x60;addWebsite&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
     *
     */
    @GET
    
    @Produces({ "application/json", "multipart/form-data" })
    @ApiOperation(value = "List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The listing of `Websites` services on your account.", response = WebsiteRow.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public List<WebsiteRow> getWebsiteList();

    /**
     * List off-site cpmove backups stored in Swift — list or inline-download archive
     *
     * Returns the list of off-site cpmove backups stored for the webhosting account, or — with the &#x60;download&#x3D;&lt;name&gt;&#x60; query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container &#x60;serviceMaster.website_name&#x60; (authenticated with &#x60;SWIFT_WEBHOSTING_USER&#x60;/&#x60;SWIFT_WEBHOSTING_PASS&#x60;) and filtered to objects matching &#x60;cpmove-{website_username}-*&#x60;. Use to find restore points before a risky change or before &#x60;webhostingCancel&#x60;. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: &#x60;webhostingCancel&#x60; (snapshot before terminating), &#x60;getWebsiteInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Query params:** - &#x60;download&#x60; (string, optional) — when set to a backup &#x60;name&#x60; from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no &#x60;download&#x60;): array of &#x60;{name: \&quot;&lt;cpmove-...&gt;\&quot;, size: \&quot;&lt;human-scaled&gt;\&quot;}&#x60; (size from &#x60;Content-Length&#x60; via &#x60;Scale($len, &#39;bytes&#39;, 1)&#x60;). - **Download mode** (&#x60;?download&#x3D;&lt;name&gt;&#x60;): single object &#x60;{name, size, file: \&quot;&lt;base64-encoded-archive&gt;\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Take a backup before cancelling:** &#x60;getWebsitesBackups&#x60; (with &#x60;download&#x3D;&#x60;) → &#x60;webhostingCancel&#x60;. - **Migrate to/from another host:** &#x60;postWebsiteMigration&#x60;. 
     *
     */
    @GET
    @Path("/{id}/backups")
    @Produces({ "application/json" })
    @ApiOperation(value = "List off-site cpmove backups stored in Swift — list or inline-download archive", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Get Website Backups response", response = WebsiteBackups.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public WebsiteBackups getWebsitesBackups(@PathParam("id") Integer id);

    /**
     * Get a one-time auto-login URL for the website&#39;s control panel
     *
     * Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on &#x60;serviceMaster.website_type&#x60;: - **WEB_CPANEL** (default): calls WHM &#x60;create_user_session&#x60; for the &#x60;cpaneld&#x60; service, returns a session-bound cPanel URL. - **WEB_DIRECTADMIN**: calls DA &#x60;CMD_API_LOGIN_KEYS&#x60; (&#x60;max_uses&#x3D;2&#x60;, IP-locked to &#x60;127.0.0.1&#x60; plus the caller&#39;s &#x60;client_ip&#x60;); returns one-time URL. - **WEB_PLESK**: calls Plesk SDK &#x60;createSession&#x60;, returns &#x60;https://&lt;host&gt;:8443/enterprise/rsession_init.php?PLESKSESSID&#x3D;...&#x60;. - **WEB_PPA**, **WEB_VESTA**: placeholders (return &#x60;Unhandled Server Type&#x60;).  Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesWelcomeEmail&#x60; (re-send credentials instead).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;{type: \&quot;location\&quot;, location: \&quot;&lt;one-time-url&gt;\&quot;}&#x60;.  **Side effects:** - WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: &#x60;max_uses&#x3D;2&#x60;, IP-locked).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Invalid Website Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;Website is &lt;status&gt;, only websites that are \&quot;active\&quot; can do this.&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;No Host server or username&#x60; — service has no &#x60;website_username&#x60; or &#x60;website_server&#x60; resolved. - &#x60;Sorry! something went wrong, couldn&#39;t connect to &lt;panel&gt;!&#x60; — panel-side failure. - &#x60;Unhandled Server Type&#x60; — &#x60;website_type&#x60; is WEB_PPA / WEB_VESTA (or unrecognized).  **Related calls:** - **If you need the credentials themselves:** &#x60;getWebsitesWelcomeEmail&#x60; (re-sends the welcome email with username/password). - **List sites first:** &#x60;getWebsiteList&#x60;. 
     *
     */
    @GET
    @Path("/{id}/login")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get a one-time auto-login URL for the website's control panel", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Get Website Login response", response = WebsiteLoginResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public WebsiteLoginResponse getWebsitesLogin(@PathParam("id") Integer id);

    /**
     * Resend the webhosting welcome email with control-panel credentials and URL
     *
     * Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved &#x60;website_welcome_email($id)&#x60; helper which composes and dispatches the message to the account&#39;s &#x60;account_lid&#x60;. Idempotent — safe to call multiple times. Use after &#x60;addWebsite&#x60; finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;, &#x60;getMailWelcomeEmail&#x60;. For an auto-login URL (no password reveal), use &#x60;getWebsitesLogin&#x60; instead.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Side effects:** - Sends an email to the account&#39;s billing email address with the control-panel credentials currently stored in &#x60;history_log&#x60; for this website.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Service is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Auto-login instead:** &#x60;getWebsitesLogin&#x60; (one-time URL, no password disclosure). - **List sites first:** &#x60;getWebsiteList&#x60;. 
     *
     */
    @GET
    @Path("/{id}/welcome_email")
    @Produces({ "application/json" })
    @ApiOperation(value = "Resend the webhosting welcome email with control-panel credentials and URL", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse getWebsitesWelcomeEmail(@PathParam("id") Integer id);

    /**
     * Read current reverse-DNS (PTR) records for the website&#39;s IPs
     *
     * Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary &#x60;website_ip&#x60; plus any addons (from &#x60;get_service_addons().extra_ips&#x60;). PTRs are read live via &#x60;get_hostname()&#x60;, not cached. Use to render a PTR editor before calling &#x60;postWebsitesReverseDns&#x60;. **Note:** the operationId has a typo (&#x60;gettWebsiteReverseDns&#x60; with double-t) preserved for back-compat — do not rename. Sibling ops: &#x60;postWebsitesReverseDns&#x60; (update), &#x60;getWebsiteBuyIp&#x60; (broader IP+billing view), &#x60;postWebsiteBuyIp&#x60; (also supports &#x60;action&#x3D;reverse_dns&#x60;).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ReverseDnsEntries&#x60; — &#x60;{\&quot;ips\&quot;: {\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;ptr-hostname&gt;\&quot;, ...}}&#x60;. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Update PTRs:** &#x60;postWebsitesReverseDns&#x60;. - **Add IPs first:** &#x60;getWebsiteBuyIp&#x60; → &#x60;postWebsiteBuyIp&#x60;. 
     *
     */
    @GET
    @Path("/{id}/reverse_dns")
    @Produces({ "application/json" })
    @ApiOperation(value = "Read current reverse-DNS (PTR) records for the website's IPs", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "List of reverse dns entries", response = ReverseDnsEntries.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ReverseDnsEntries gettWebsiteReverseDns(@PathParam("id") Integer id);

    /**
     * Buy an additional IP for the website OR update reverse DNS records
     *
     * Dual-purpose mutation that branches on the &#x60;action&#x60; body field. **&#x60;action&#x3D;buy_ip&#x60;** (default): allocates a new addon IP via &#x60;website_addon_get_free_ips&#x60;, creates an addon &#x60;repeat_invoices&#x60; row at &#x60;WEBSITE_IP_COST&#x60; (currency-converted to the parent invoice&#39;s currency), and emits a one-period &#x60;invoices&#x60; row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **&#x60;action&#x3D;reverse_dns&#x60;**: skips billing entirely and updates PTR records via &#x60;reverse_dns()&#x60; for any IP in the &#x60;ips&#x60; map whose new hostname differs from the current &#x60;get_hostname()&#x60; value. Sibling ops: &#x60;getWebsiteBuyIp&#x60; (preview), &#x60;gettWebsiteReverseDns&#x60; / &#x60;postWebsitesReverseDns&#x60; (PTR-only).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields:** - &#x60;action&#x60; (string, optional, default &#x60;buy_ip&#x60;) — &#x60;buy_ip&#x60; or &#x60;reverse_dns&#x60;. - For &#x60;action&#x3D;reverse_dns&#x60;: &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For &#x60;buy_ip&#x60;: &#x60;{text: \&quot;Ordered Additional IP successfully.\&quot;, invoice: &lt;integer&gt;, repeatInvoice: &lt;integer&gt;}&#x60;. - For &#x60;reverse_dns&#x60;: &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - &#x60;buy_ip&#x60;: inserts &#x60;repeat_invoices&#x60; row (&#x60;Additional IP for Webhosting &lt;id&gt;&#x60;) and an &#x60;invoices&#x60; row for the first period. - &#x60;reverse_dns&#x60;: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Website Passed&#x60;. - &#x60;409 Website is not active&#x60;. - &#x60;No available free IPs on this server. Please contact support to order additional IPs.&#x60; — host has no free IPs.  **Related calls:** - **Preview first:** &#x60;getWebsiteBuyIp&#x60;. - **Pay the new addon invoice:** &#x60;initiatePayment&#x60; with the returned &#x60;invoice&#x60;. 
     *
     */
    @POST
    @Path("/{id}/buy_ip")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Buy an additional IP for the website OR update reverse DNS records", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "DNS update result.", response = PostWebsiteBuyIp200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public PostWebsiteBuyIp200Response postWebsiteBuyIp(@PathParam("id") Integer id, PostWebsiteBuyIpRequest postWebsiteBuyIpRequest);

    /**
     * Submit a request for InterServer staff to migrate a website from another host
     *
     * Submits a migration request: opens a support ticket containing the customer&#39;s credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket&#39;s id is returned; track progress with the helpdesk/tickets API. Sibling ops: &#x60;getWebsiteInfo&#x60;, &#x60;getWebsitesBackups&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (JSON or multipart): - &#x60;custPortal&#x60; (string) — URL of the current hosting provider&#39;s customer portal (e.g. &#x60;sso.godaddy.com&#x60;). - &#x60;regEmail&#x60; (string) — email/username at the current host. - &#x60;password&#x60; (string) — password at the current host. - &#x60;ctrlPanel&#x60; (string) — current control-panel URL (e.g. &#x60;yourdomain.com/cpanel/&#x60;). - &#x60;ftpUsername&#x60; (string), &#x60;ftpPassword&#x60; (string) — FTP credentials. - &#x60;siteBusyMig&#x60; (string) — info on site traffic / whether a holding page can be shown during migration. - &#x60;splReqMig&#x60; (string) — special requirements (PHP version, modules, etc.). - &#x60;domainReg&#x60; (string) — whether domain-registration transfer is also needed (&#x60;yes&#x60;/&#x60;no&#x60; or freeform). - &#x60;dataMig&#x60; (string) — nameserver switch timing preference. - &#x60;domainRegPortal&#x60;, &#x60;domainRegEmail&#x60;, &#x60;domainRegPassword&#x60; (strings) — domain-registrar credentials.  **Returns:** &#x60;{text: \&quot;Your migration request has been sucessfully submitted...\&quot;, ticket: &lt;integer&gt;}&#x60; — pass &#x60;ticket&#x60; to the tickets API to monitor.  **Side effects:** - Creates a support ticket via &#x60;create_ticket()&#x60; with the credentials in the ticket body. - Inserts a &#x60;history_log&#x60; row of type &#x60;Webhost Migration&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned &#x60;ticket&#x60; id). - **Verify after migration:** &#x60;getWebsitesLogin&#x60;, &#x60;getWebsiteInfo&#x60;. 
     *
     */
    @POST
    @Path("/{id}/migration")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Submit a request for InterServer staff to migrate a website from another host", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Migration request submitted.", response = PostWebsiteMigration200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public PostWebsiteMigration200Response postWebsiteMigration(@PathParam("id") Integer id, PostWebsiteMigrationRequest postWebsiteMigrationRequest);

    /**
     * Bulk-update reverse-DNS (PTR) records for one or more website IPs
     *
     * Sets the PTR hostname for each IP in the website&#39;s IP set. Calls &#x60;reverse_dns($ip, $newHostname)&#x60; for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60; even if no entries actually changed. PTR propagation is asynchronous — re-call &#x60;gettWebsiteReverseDns&#x60; after a few minutes to confirm. Equivalent to calling &#x60;postWebsiteBuyIp&#x60; with &#x60;action&#x3D;reverse_dns&#x60;. Sibling ops: &#x60;gettWebsiteReverseDns&#x60;, &#x60;getWebsiteBuyIp&#x60;, &#x60;postWebsiteBuyIp&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body fields** (schema &#x60;ReverseDnsEntries&#x60;): - &#x60;ips&#x60; (object, required) — &#x60;{\&quot;&lt;ip&gt;\&quot;: \&quot;&lt;new-hostname&gt;\&quot;, ...}&#x60;. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** &#x60;{message: \&quot;DNS Updated\&quot;, success: true}&#x60;.  **Side effects:** - One &#x60;reverse_dns()&#x60; call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read current PTRs first:** &#x60;gettWebsiteReverseDns&#x60;. - **Equivalent endpoint:** &#x60;postWebsiteBuyIp&#x60; (&#x60;action&#x3D;reverse_dns&#x60;). 
     *
     */
    @POST
    @Path("/{id}/reverse_dns")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Bulk-update reverse-DNS (PTR) records for one or more website IPs", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Response from the update reverse DNS call.", response = TextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public TextResponse postWebsitesReverseDns(@PathParam("id") Integer id, ReverseDnsEntries reverseDnsEntries);

    /**
     * Validate a webhosting order and preview cost — dry run, no charge
     *
     * Step 2 of the webhosting order flow. Dry-runs the order through &#x60;validate_buy_website()&#x60;: checks &#x60;hostname&#x60; against &#x60;valid_hostname()&#x60; and the keyword blocklist, validates &#x60;packageId&#x60; against the customer&#39;s plan eligibility, confirms the chosen plan&#39;s hypervisor pool is in stock (&#x60;OUTOFSTOCK_WEBHOSTING_*&#x60; constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before &#x60;addWebsite&#x60;** to surface coupon/pricing/hostname problems cheaply. Sibling ops: &#x60;getNewWebsite&#x60; (catalog), &#x60;addWebsite&#x60; (place order).  **Body fields (form or JSON):** - &#x60;hostname&#x60; (string, required) — primary FQDN for the website. Must pass &#x60;valid_hostname()&#x60;, must not contain &#x60;interserver.net&#x60; (non-admin), must not be on the blocked-keyword list, must match the plan&#39;s TOS rules. - &#x60;rootpass&#x60; (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via &#x60;generateRandomString(8,1,1,1,1)&#x60;. - &#x60;packageId&#x60; (integer, required) — plan id from &#x60;getNewWebsite.serviceTypes[].services_id&#x60;. Must have &#x60;services_module&#x3D;&#39;webhosting&#39;&#x60; and &#x60;services_buyable&#x3D;1&#x60; (non-admin). - &#x60;period&#x60; (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply. - &#x60;coupon&#x60; (string, optional) — coupon code. - &#x60;serviceOfferId&#x60; (integer, optional) — promo bundle from &#x60;getNewWebsite.serviceOffers&#x60;. - &#x60;script&#x60; (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 &#x3D; none). - &#x60;comment&#x60; (string, optional) — free-form note saved on the service row. - &#x60;registerDomain&#x60; (bool, optional) — when &#x60;true&#x60; and &#x60;enableDomainRegistering&#x3D;true&#x60; from the catalog, also registers/transfers the domain through the order. - Implicit: TOS acceptance (validated via &#x60;tos&#x3D;&#39;yes&#39;&#x60; in source — required for non-admin).  **Returns** (validation envelope): - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if the order can safely be POSTed. - &#x60;errors&#x60; (array of strings) — human-readable validation messages. - &#x60;frequency&#x60; (integer) — resolved billing frequency. - &#x60;coupon&#x60; (string) — the applied coupon name (echoed). - &#x60;couponCode&#x60; (integer) — the matched coupon row id, or &#x60;0&#x60; if none. - &#x60;serviceType&#x60; (integer) — resolved plan id. - &#x60;serviceCost&#x60; (float) — first-period total cost (includes coupon + period discount). - &#x60;originalCost&#x60; (float) — undiscounted reference. - &#x60;repeatServiceCost&#x60; (float) — recurring cost after discounts. - &#x60;hostname&#x60;, &#x60;password&#x60; (string) — final sanitized values (may differ from input — e.g. random password generated). - &#x60;introFrequency&#x60; (integer) — first-period bonus length (intro pricing).  **Side effects:** None — pure read.  **Auth:** Session/API key.  **Errors (within &#x60;errors&#x60; array, &#x60;continue&#x3D;false&#x60;):** - &#x60;Invalid Billing Interval&#x60; — &#x60;period&#x60; not numeric. - &#x60;All webhosting servers are currently full.&#x60; — &#x60;OUTOFSTOCK_WEBHOSTING&#x60;. - &#x60;Invalid Package Specified.&#x60; — plan id not in the webhosting module or not buyable. - &#x60;Our &lt;Plan&gt; Webhosting Servers are currently full.&#x60; — plan-specific stock check. - &#x60;The hostname cannot contain interserver.net&#x60;. - &#x60;Hostname \&quot;&lt;x&gt;\&quot; Contains Invalid Characters Or Is Blank&#x60;. - &#x60;Hostname contains a blocked keyword.&#x60;. - &#x60;You must agree to the terms of service and click the checkbox saying so.&#x60;. - &#x60;Invalid Coupon Specified&#x60; — coupon not usable for this plan/customer.  Top-level HTTP errors: &#x60;401&#x60; unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewWebsite&#x60; (catalog). - **Next:** &#x60;addWebsite&#x60; (same body — actually places the order).  **Example request body:** &#x60;&#x60;&#x60;json {   \&quot;hostname\&quot;: \&quot;mystore.example.com\&quot;,   \&quot;rootpass\&quot;: \&quot;Sup3rS3cret!\&quot;,   \&quot;packageId\&quot;: 23,   \&quot;period\&quot;: 12,   \&quot;coupon\&quot;: \&quot;\&quot;,   \&quot;registerDomain\&quot;: false,   \&quot;script\&quot;: 0 } &#x60;&#x60;&#x60; 
     *
     */
    @PUT
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Validate a webhosting order and preview cost — dry run, no charge", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Validate Website order response"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public void putWebsites(WebsiteOrderPutRequest websiteOrderPutRequest);

    /**
     * POST mutation hook for the website detail page (use dedicated ops where possible)
     *
     * POST mutation hook for the website detail page. The implementation currently routes through the same &#x60;View::go()&#x60; handler as &#x60;getWebsiteInfo&#x60;; concrete update behavior depends on which &#x60;client_links&#x60; action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: &#x60;getWebsiteInfo&#x60;, all dedicated mutation endpoints below.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** Form-encoded fields appropriate to the &#x60;client_links&#x60; action being driven.  **Returns:** &#x60;SuccessTextResponse&#x60; — &#x60;{text: \&quot;...\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Prefer these dedicated endpoints:** - **Buy a paid IP or update reverse DNS:** &#x60;postWebsiteBuyIp&#x60; (the latter via &#x60;action&#x3D;reverse_dns&#x60;). - **PTR-only changes:** &#x60;postWebsitesReverseDns&#x60;. - **Migrate site from another host:** &#x60;postWebsiteMigration&#x60;. - **Resend control-panel credentials:** &#x60;getWebsitesWelcomeEmail&#x60;. - **Auto-login to cPanel/DA/Plesk:** &#x60;getWebsitesLogin&#x60;. - **Cancel:** &#x60;webhostingCancel&#x60;. 
     *
     */
    @POST
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "POST mutation hook for the website detail page (use dedicated ops where possible)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse updateWebsiteInfo(@PathParam("id") String id);

    /**
     * Schedule termination of a webhosting service — wipes panel account at cycle end
     *
     * **DESTRUCTIVE.** Schedules the website for cancellation via the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#39;webhosting&#39;&#x60;. Marks the service &#x60;pending-cancel&#x60;, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via &#x60;getWebsitesBackups&#x60; first (with &#x60;download&#x3D;&lt;name&gt;&#x60;) if data must be preserved. Sibling ops: &#x60;getWebsitesBackups&#x60;, &#x60;getWebsiteInfo&#x60; (verify status flipped), &#x60;getWebsiteInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;WebsiteCancelResponse&#x60; — cancel-service confirmation payload.  **Side effects:** - Sets &#x60;website_status&#x3D;&#39;pending-cancel&#39;&#x60;. - Marks the &#x60;repeat_invoices&#x60; row as non-renewing. - Logs the cancellation in &#x60;history_log&#x60;. - Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed). - Customer retains panel access until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — service in a state that cannot be cancelled (already &#x60;canceled&#x60;, etc.).  **Related calls:** - **Before cancelling:** &#x60;getWebsitesBackups&#x60; (download a cpmove archive — irretrievable after deprovisioning). - **After cancelling:** &#x60;getWebsiteInfo&#x60; (confirm &#x60;pending-cancel&#x60;), &#x60;getWebsiteInvoices&#x60; (final invoices). - **Sibling cancels on other modules:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;mailCancel&#x60;, etc. all use the same &#x60;CancelService&#x60; handler. 
     *
     */
    @DELETE
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Schedule termination of a webhosting service — wipes panel account at cycle end", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Website cancel", response = WebhostingCancel200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public WebhostingCancel200Response webhostingCancel(@PathParam("id") String id);
}
