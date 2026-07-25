package org.openapitools.api;

import org.openapitools.model.ChargeInvoiceRows;
import org.openapitools.model.GetAccountInfo401Response;
import org.openapitools.model.IpObject;
import org.openapitools.model.License;
import org.openapitools.model.LicenseOrderRequest;
import org.openapitools.model.LicenseRow;
import org.openapitools.model.LicensesCancel200Response;
import org.openapitools.model.LicensesOrder;
import org.openapitools.model.ServiceOrderPostResponse;
import org.openapitools.model.SuccessTextResponse;

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
@Path("/licenses")
@Api(value = "/", description = "")
public interface LicensesApi  {

    /**
     * Order a new software license and create the recurring invoice
     *
     * Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue&#x3D;false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.  Sibling ops: &#x60;getNewLicense&#x60; (catalog), &#x60;putLicenses&#x60; (validate), &#x60;getLicenseInfo&#x60; (poll status), &#x60;getLicenseInvoices&#x60;, &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;licensesCancel&#x60;.
     *
     */
    @POST
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Order a new software license and create the recurring invoice", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Order placed successfully. Use the invoice ID to proceed to payment via `/billing/pay/{method}/{invoices}` or view the invoice at `/billing/invoices/{id}`.", response = ServiceOrderPostResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ServiceOrderPostResponse addLicense(LicenseOrderRequest licenseOrderRequest);

    /**
     * Get full details for one license including status, IP, and links
     *
     * Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.
     *
     */
    @GET
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get full details for one license including status, IP, and links", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "License information.", response = License.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public License getLicenseInfo(@PathParam("id") Integer id);

    /**
     * List all billing invoices tied to one software license service
     *
     * Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success&#x3D;false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.
     *
     */
    @GET
    @Path("/{id}/invoices")
    @Produces({ "application/json" })
    @ApiOperation(value = "List all billing invoices tied to one software license service", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Get Invoices response", response = ChargeInvoiceRows.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public ChargeInvoiceRows getLicenseInvoices(@PathParam("id") Integer id);

    /**
     * List all software licenses owned by the authenticated customer
     *
     * Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer&#39;s account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.
     *
     */
    @GET
    
    @Produces({ "application/json" })
    @ApiOperation(value = "List all software licenses owned by the authenticated customer", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The listing of `Licenses` services on your account.", response = LicenseRow.class, responseContainer = "List"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public List<LicenseRow> getLicenseList();

    /**
     * Resend the license welcome email with the key and activation steps
     *
     * Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.
     *
     */
    @GET
    @Path("/{id}/welcome_email")
    @Produces({ "application/json" })
    @ApiOperation(value = "Resend the license welcome email with the key and activation steps", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse getLicensesWelcomeEmail(@PathParam("id") Integer id);

    /**
     * Get available license types, packages, and pricing for ordering
     *
     * Returns the catalog needed to build the license-order form: service categories (category_id-&gt;name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer&#39;s currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden&#x3D;0, services_buyable&#x3D;1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.
     *
     */
    @GET
    @Path("/order")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get available license types, packages, and pricing for ordering", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "License ordering information.", response = LicensesOrder.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public LicensesOrder getNewLicense();

    /**
     * Cancel a license service and stop future billing (irreversible)
     *
     * Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success&#x3D;false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.
     *
     */
    @DELETE
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Cancel a license service and stop future billing (irreversible)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "License Cancel", response = LicensesCancel200Response.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public LicensesCancel200Response licensesCancel(@PathParam("id") Integer id);

    /**
     * Rebind a license to a new IP address (may incur a vendor fee)
     *
     * Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status !&#x3D; active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.
     *
     */
    @POST
    @Path("/{id}/change_ip")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Rebind a license to a new IP address (may incur a vendor fee)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse postLicenseChangeIp(@PathParam("id") Integer id, IpObject ipObject);

    /**
     * Validate a software license order before placing it (dry run preview)
     *
     * Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue&#x3D;true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue&#x3D;false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.
     *
     */
    @PUT
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Validate a software license order before placing it (dry run preview)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Validate Licenses order response"),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public void putLicenses(LicenseOrderRequest licenseOrderRequest);

    /**
     * Update mutable fields on a license service (e.g. assigned IP)
     *
     * Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).
     *
     */
    @POST
    @Path("/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Update mutable fields on a license service (e.g. assigned IP)", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A response indicating the operation completed successfully with a text message.", response = SuccessTextResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = GetAccountInfo401Response.class) })
    public SuccessTextResponse updateLicenseInfo(@PathParam("id") String id);
}
