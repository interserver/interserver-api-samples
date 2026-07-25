package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.DomainsApiService;
import io.swagger.api.factories.DomainsApiServiceFactory;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.Domain;
import io.swagger.model.DomainContactDetails;
import io.swagger.model.DomainDnssecRecords;
import io.swagger.model.DomainDnssecRequest;
import io.swagger.model.DomainLookupResponse;
import io.swagger.model.DomainNameserverGetResponse;
import io.swagger.model.DomainNameserverPostRequest;
import io.swagger.model.DomainNameserverPutRequest;
import io.swagger.model.DomainOrder;
import io.swagger.model.DomainRow;
import io.swagger.model.DomainSearchResponse;
import io.swagger.model.DomainWhoisPrivacyRequest;
import io.swagger.model.InlineResponse2003;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import javax.servlet.ServletConfig;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;


@Path("/domains")



public class DomainsApi  {
   private final DomainsApiService delegate;

   public DomainsApi(@Context ServletConfig servletContext) {
      DomainsApiService delegate = null;

      if (servletContext != null) {
         String implClass = servletContext.getInitParameter("DomainsApi.implementation");
         if (implClass != null && !"".equals(implClass.trim())) {
            try {
               delegate = (DomainsApiService) Class.forName(implClass).newInstance();
            } catch (Exception e) {
               throw new RuntimeException(e);
            }
         } 
      }

      if (delegate == null) {
         delegate = DomainsApiServiceFactory.getDomainsApi();
      }

      this.delegate = delegate;
   }

    @POST
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Place a new domain registration or transfer order, generate billing invoice", description = "Places a new domain registration or transfer order. Resolves the TLD to a `services_id`, runs `validate_buy_domain()` (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls `place_buy_domain()` to create the `Repeat_Invoice` recurring billing row, generate the initial `invoices` row, and (when `whois_privacy=enable`) an additional add-on `Repeat_Invoice` for privacy. **Real money** — call `putDomains` then `patchDomains` first to preview and validate. Sibling ops: `getDomainLookup`, `getNewDomain`, `putDomains`, `patchDomains`, `initiatePayment`.  **Body fields (JSON or form):** - `hostname` (string, required) — FQDN to register or transfer. - `type` (string, optional, default `register`) — `register` or `transfer`. - `whois_privacy` (string, optional) — `enable` to add the privacy add-on (separate recurring invoice). - `coupon` (string, optional) — coupon code. - All per-TLD contact/registration fields from `putDomains.domainFields` (registrant contact details, TLD-specific fields like nexus codes, EPP `auth_info` for transfers, etc.).  **Returns** (schema `ServiceOrderPostResponse`): `{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}` — pass `real_iids` to `initiatePayment` to fund the order.  **Side effects:** - Inserts `domains` service row in `pending` status. - Inserts `repeat_invoices` row for recurring renewal. - Inserts `invoices` row for the first-period charge. - When `whois_privacy=enable`: inserts a separate add-on `repeat_invoices` row + its initial invoice. - For transfers: stores `auth_info` and marks `service_extra` as `transfer`.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - `422` — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined `errors` array from `validate_buy_domain()`.  **Related calls:** - **Prerequisites:** `getDomainLookup` → `getNewDomain` → `putDomains` → `patchDomains`. - **Pay:** `initiatePayment` with `real_iids`. - **Verify activation:** `getDomainInfo` (poll for `domain_status='active'`). - **Track in-progress transfer:** `getDomainTransfer`. - **For pending transfers needing EPP/auth_info:** `updateDomainContact` (set `auth_info`).  **Example happy path (register):** ```text GET /apiv2/domains/lookup/example.com           -> available, pricing, fields PUT /apiv2/domains/order { hostname, type }     -> domainFields PATCH /apiv2/domains/order { hostname, ...fields } -> \"success\" POST /apiv2/domains/order { hostname, type, ...fields } -> { serviceid, real_iids } GET /apiv2/billing/pay/cc/{real_iids[0]}        -> pay GET /apiv2/domains/{serviceid}                  -> poll until domain_status==\"active\" ``` ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Order placed successfully. Use the invoice ID to proceed to payment via `/billing/pay/{method}/{invoices}` or view the invoice at `/billing/invoices/{id}`.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = ServiceOrderPostResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addDomain(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) Map<String, Object> body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addDomain(body,securityContext);
    }
    @POST
    @Path("/{id}/dnssec")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Register DNSSEC DS records on the domain at OpenSRS", description = "Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call `getDomainDnssec` to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use `deleteDomainDnssec`. Sibling ops: `getDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, parallel arrays — `algorithm[0]` pairs with `key_tag[0]`, etc., schema `DomainDnssecRequest`):** - `algorithm[]` (integer) — DNSKEY algorithm (e.g. 8 = RSASHA256, 13 = ECDSAP256SHA256). - `key_tag[]` (integer) — must be < 65536. - `digest_type[]` (integer) — `1` (SHA-1, 40 hex chars), `2` (SHA-256, 64), `3` (GOST, 64), `4` (SHA-384, 96). - `digest[]` (string) — hex digest; length must match `digest_type[i]`.  **Returns:** `SuccessTextResponse` on registrar confirmation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or registrar refused. - `422` — `key_tag >= 65536` or digest length mismatch.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addDomainDnssec(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) DomainDnssecRequest body
,@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addDomainDnssec(body,id,securityContext);
    }
    @POST
    @Path("/{id}/nameservers")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Register a new nameserver host with glue IP at the registry (registered nameserver)", description = "Adds a registered nameserver (host + glue IP) for the domain at the registrar via `opensrs_create_nameserver`. Use when running your own authoritative nameservers under the domain itself (e.g. `ns1.example.com`, `ns2.example.com`). **Glue records, not delegation:** this registers the host's IP at the registry; the domain's delegation must separately point at these names via `updateDomainNameservers`. Sibling ops: `getDomainNameservers`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (schema `DomainNameserverPostRequest`):** - `name` (string, required) — FQDN of the nameserver (e.g. `ns1.example.com`). Validated by `valid_hostname()`. - `ipAddress` (string, required) — IPv4 address. Validated by `validIp()`.  **Returns:** `SuccessTextResponse` on success.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — invalid hostname or IP, or registrar refused.  **Related calls:** - **Verify glue record:** `getDomainNameservers`. - **Use this nameserver in delegation:** `updateDomainNameservers`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Response with a text message field.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = TextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addDomainNameserver(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) DomainNameserverPostRequest body
,@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addDomainNameserver(body,id,securityContext);
    }
    @DELETE
    @Path("/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Cancel a domain order in the billing system to stop auto-renewals", description = "Stops billing and auto-renewal for a domain in the customer account by setting the service to `canceled` via the shared `Billing\\CancelService::go($id)` flow with `module='domains'`. **Important:** this only stops billing on InterServer's side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: `getDomainInfo` (verify status), `getDomainsList`, `postDomainRenewal` (re-activate before expiry).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `DomainsCancelResponse` — confirmation envelope.  **Side effects:** - Sets `domain_status='canceled'`. - Marks the `repeat_invoices` row non-renewing — no future renewal invoices generated. - Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — already canceled.  **Related calls:** - **Re-activate before expiry:** `postDomainRenewal`. - **Verify status:** `getDomainInfo`. - **Sibling cancels on other modules:** `VPSCancel`, `mailCancel`, `webhostingCancel`, etc. (same `CancelService` handler). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Domains Cancel", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2003.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response cancelDomain(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.cancelDomain(id,securityContext);
    }
    @DELETE
    @Path("/{id}/dnssec")
    
    @Produces({ "application/json" })
    @Operation(summary = "Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)", description = "Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with `getDomainDnssec` to confirm. To remove records selectively, replace the set via `addDomainDnssec` instead. Sibling ops: `getDomainDnssec`, `addDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None — removes the full DS record set.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar error surfaced as 4xx.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Replace records selectively:** `addDomainDnssec`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response deleteDomainDnssec(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deleteDomainDnssec(id,securityContext);
    }
    @DELETE
    @Path("/{id}/nameservers")
    
    @Produces({ "application/json" })
    @Operation(summary = "Remove one registered nameserver glue record from the domain", description = "Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS `nsGet` to resolve the entry by index, then `nsDelete`. Per-entry — to replace the full delegation set use `updateDomainNameservers` instead. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `updateDomainNameservers`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Query params:** - `index` (integer, required) — zero-based index from `getDomainNameservers` array — or alternatively pass `name` + `ip` to target by value.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — `index` out of range or `name`/`ip` not provided. - Registrar errors surfaced as 4xx.  **Related calls:** - **List candidates:** `getDomainNameservers`. - **Replace delegation entirely:** `updateDomainNameservers`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Response with a text message field.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = TextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response deleteDomainNameserver(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Parameter(in = ParameterIn.QUERY, description = "The index of the registered nameserver from the registered nameservers list to delete.  ",required=true) @QueryParam("index") Integer index,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deleteDomainNameserver(id,index,securityContext);
    }
    @GET
    @Path("/{id}/contact")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read the current registrant/admin/tech/billing contact field set for a domain", description = "Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a `transfer` selector and the EPP `auth_info` code so the client can resubmit. Read-only. Sibling ops: `updateDomainContact` (push changes to OpenSRS), `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainContactDetails`): - `firstname`, `lastname`, `email`. - `address`, `address2`, `address3`, `city`, `state`, `zip`, `country`. - `phone`, `fax` (E.164 format expected). - `company` (optional). - `auth_info` (string) — EPP/transfer code (present on transfer services). - `transfer` (string `yes`/`no`) — selector for pending transfer services.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Update:** `updateDomainContact`. - **Transfer status:** `getDomainTransfer`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "The registrant/admin contact details for the domain.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainContactDetails.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainContact(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainContact(id,securityContext);
    }
    @GET
    @Path("/{id}/dnssec")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read the DNSSEC DS record set currently registered with the registrar", description = "Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before `addDomainDnssec` (which replaces the set). Sibling ops: `addDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainDnssecRecords`): - `records` (array) — DS entries:   - `algorithm` (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).   - `key_tag` (integer, < 65536).   - `digest_type` (integer) — `1` (SHA-1), `2` (SHA-256), `3` (GOST), `4` (SHA-384).   - `digest` (string, hex) — length depends on `digest_type`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Replace records:** `addDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "DNSSEC records currently applied to the domain.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainDnssecRecords.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainDnssec(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainDnssec(id,securityContext);
    }
    @GET
    @Path("/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read full billing, registrar, and service detail for one domain", description = "Returns the full `ViewDomain` payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and `client_links` for related dashboard actions. Read-only. Internal `admin_links`, `settings`, `csrf` are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll `domain_status` after `addDomain`. Sibling ops: `getDomainContact`, `getDomainNameservers`, `getDomainDnssec`, `getDomainWhoisPrivacy`, `getDomainInvoices`, `updateDomainInfo`, `CancelDomain`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `Domain`): - `serviceInfo` — `domain_id`, `domain_hostname`, `domain_status`, `domain_expire_date`, lock state, registrar metadata. - `serviceType` — TLD service row. - `client_links` (array) — `{name, link, icon}` for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.  **Auth:** Session/API key. Ownership enforced via `domain_custid`.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Contact:** `getDomainContact` / `updateDomainContact`. - **Nameservers:** `getDomainNameservers` / `updateDomainNameservers`. - **DNSSEC:** `getDomainDnssec` / `addDomainDnssec` / `deleteDomainDnssec`. - **Whois privacy:** `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`, `getDomainRenewal` / `postDomainRenewal`. - **Transfer status:** `getDomainTransfer`. - **Cancel:** `CancelDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Domain Information.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Domain.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainInfo(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainInfo(id,securityContext);
    }
    @GET
    @Path("/{id}/invoices")
    
    @Produces({ "application/json" })
    @Operation(summary = "List all billing invoices scoped to one domain order", description = "Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends `Billing\\InvoicesList::go()` with `module='domains'`. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to `initiatePayment`. Sibling ops: `getDomainInfo`, `postDomainRenewal`, `updateDomainWhoisPrivacy`, `initiatePayment`, `getBillingInvoice`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, paid, description, date, due_date, currency, module: \"domains\", service: <id>}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service` — `id` not owned by caller.  **Related calls:** - **Pay an unpaid invoice:** `initiatePayment`. - **Renew:** `postDomainRenewal`. - **Account-wide history:** `getBillingInvoices`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get Invoices response", content = @Content(mediaType = "application/json", schema = @Schema(implementation = ChargeInvoiceRows.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainInvoices(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainInvoices(id,securityContext);
    }
    @GET
    @Path("/lookup/{name}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Check availability, premium status, and pricing for a specific domain", description = "Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via `domainlookup` cache). Repeated lookups within a short window may return cached results from the `domainlookup` table. Use as step 1 of an order: discover availability and pricing, then call `addDomain` to commit. Sibling ops: `getDomainSearch` (suggestions), `getNewDomain` (catalog), `addDomain`, `postDomainSearch`.  **Path param:** - `name` (string, required) — full FQDN (e.g. `example.com`).  **Returns** (schema `DomainLookupResponse`): - `available` (bool) — registerable now. - `premium` (bool) — premium-name pricing (often > $100). - `website` (bool) — same hostname is already a webhosting service on this account. - `domain_service` (bool) — same hostname is already a domain on this account. - `service` (object) — `services_id`, `services_name`, `services_cost`, `services_field1` (TLD), `services_module`. - `whois_privacy` (bool) — privacy add-on available for this TLD. - `new`, `renewal`, `transfer` (float) — base USD prices (with profit markup). - `fields` (object) — per-TLD order form schema (labels, options, current account values). - `currencies` (object) — `{<code>: {services_cost, new, renewal, transfer}}` converted to each enabled currency.  **Auth:** Public (no auth required).  **Errors:** - `422 Invalid Domain` — `valid_domain()` rejected input.  **Related calls:** - **Brainstorm alternatives:** `getDomainSearch`. - **Place order:** `addDomain` with the resolved `service.services_id` and `fields`. - **TLD catalog:** `getNewDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Availability, pricing, and field metadata for the requested domain.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainLookupResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        
        @ApiResponse(responseCode = "422", description = "The domain input was invalid.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = TextResponse.class))) })
    public Response getDomainLookup(@Parameter(in = ParameterIn.PATH, description = "The full domain name to look up (for example `example.com`).",required=true) @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainLookup(name,securityContext);
    }
    @GET
    @Path("/{id}/nameservers")
    
    @Produces({ "application/json" })
    @Operation(summary = "List registered nameserver hosts and glue IP addresses for a domain", description = "Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (`host.example.com` + glue IP records the registrant has created at the registry), NOT the domain's delegation NS records. To replace the delegation set, use `updateDomainNameservers`. Empty array means no glue records are registered. Sibling ops: `addDomainNameserver`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainNameserverGetResponse`): - Array of `{name, ipaddress, sortorder}` — use the zero-based array index when calling `deleteDomainNameserver` with `index`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `5xx` — registrar communication failure.  **Related calls:** - **Add glue record:** `addDomainNameserver`. - **Replace delegation set:** `updateDomainNameservers`. - **Remove glue record:** `deleteDomainNameserver`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Domain registered nameservers list response", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainNameserverGetResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainNameservers(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainNameservers(id,securityContext);
    }
    @GET
    @Path("/{id}/renew")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read renewal pricing, expiry, and whether a renewal invoice already exists", description = "Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering `postDomainRenewal` to render a renewal form and prevent duplicate invoices. Costs are converted to the customer's preferred currency. Sibling ops: `postDomainRenewal`, `getDomainInvoices`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `renewCost` (float) — renewal cost in `currency`. - `whoisCost` (float) — Whois privacy renewal cost. - `whoisAvailable` (bool) — privacy supported on this TLD. - `currency` (string), `currencySymbol` (string). - `expiryDate` (string). - `alreadyInvoiced` (bool) — a renewal `Repeat_Invoice` already produced an invoice. - `invoicePaid` (bool) — whether that invoice is paid. - `tld` (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `4xx` — renewal not available for this TLD.  **Related calls:** - **Submit renewal:** `postDomainRenewal`. - **Pay existing renewal invoice:** `getDomainInvoices` → `initiatePayment`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainRenewal(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainRenewal(id,securityContext);
    }
    @GET
    @Path("/search/{name}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Get registrar-suggested domain alternatives and bulk availability for a search term", description = "Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with `getDomainLookup` to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: `postDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — search term (e.g. `example` or `example.com`).  **Returns** (schema `DomainSearchResponse`): - `success` (bool) — registrar call succeeded. - `response_text` (string) — registrar response message. - `response_time` (float) — registrar latency (seconds). - `lookup` (array) — exact-match availability across the searched TLD set. - `suggest` (array) — registrar's recommended alternative names with availability. - `tlds` (array) — TLDs queried.  **Auth:** Public.  **Errors:** - `422 Invalid Search Response!` — registrar returned no usable results.  **Related calls:** - **Single-domain detail:** `getDomainLookup`. - **One-shot order preview from a search term:** `postDomainSearch`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Suggested and lookup results for the supplied search term.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainSearchResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        
        @ApiResponse(responseCode = "404", description = "No search suggestions or registrar response available.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = TextResponse.class))) })
    public Response getDomainSearch(@Parameter(in = ParameterIn.PATH, description = "The base domain name to search (for example `example` or `example.com`).",required=true) @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainSearch(name,securityContext);
    }
    @GET
    @Path("/{id}/transfer")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read OpenSRS transfer status for an in-progress domain transfer order", description = "Returns the OpenSRS transfer state for a domain order flagged as a transfer in `service_extra`. Use to poll an in-progress transfer; `pending_owner` means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: `postDomainTransfer` (re-poll), `getDomainContact` (set `auth_info`), `addDomain` (initiate new transfer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - When not a transfer: `{transfer: false, message: \"...\"}`. - When a transfer: `{transfer: true, info: {status, statusText, type, transferrable, reason}}` where `status` is one of:   - `pending` — submitted to OpenSRS, awaiting state change.   - `pending_owner` — **customer action required** (approve the OpenSRS email).   - `pending_admin` — InterServer staff review.   - `pending_registry` — registry processing.   - `declined` — transfer rejected (see `reason`).   - `completed` — transfer landed.   - `undef` — unknown.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar communication failures returned as errors.  **Related calls:** - **Re-poll:** `postDomainTransfer`. - **Update auth_info:** `updateDomainContact`. - **Initiate new transfer:** `addDomain` with `type=transfer`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainTransfer(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainTransfer(id,securityContext);
    }
    @GET
    @Path("/{id}/whois")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read Whois privacy availability, current state, and add-on pricing for a domain", description = "Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it's currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. `.us`, `.uk`, country-code variants) do not allow privacy regardless of pricing. Sibling op: `updateDomainWhoisPrivacy` (order/enable/disable).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `available` (bool) — privacy supported for this TLD (via `get_domain_tld_whois_privacy()`). - `cost` (float) — annual privacy cost in `currency`. - `currency` (string), `currencySymbol` (string). - `whoisPrivacy` (string enum) — `enabled` / `disabled` (live OpenSRS state). - `repeatInvoice` (object|null) — current privacy add-on `Repeat_Invoice` row, if one exists.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Order/enable/disable:** `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainWhoisPrivacy(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainWhoisPrivacy(id,securityContext);
    }
    @GET
    
    
    @Produces({ "application/json" })
    @Operation(summary = "List every domain registration on the account with billing and registration metadata", description = "Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a `domain_id` to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: `getDomainInfo`, `getNewDomain`, `getDomainLookup`, `addDomain`, `CancelDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DomainRow`: - `domain_id` (string) — canonical id; pass to every `/domains/{id}/_*` endpoint. - `domain_hostname` (string) — registered FQDN. - `domain_expire_date` (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown. - `cost` (decimal string) — recurring renewal cost in the domain's billing currency. - `domain_status` (string enum) — `pending` / `active` / `expired` / `canceled` / `pending-transfer`.  **Auth:** Session/API key. Filtered by `domain_custid`.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain detail:** `getDomainInfo`. - **Manage:** `getDomainContact` / `updateDomainContact`, `getDomainNameservers` / `updateDomainNameservers`, `getDomainDnssec` / `addDomainDnssec`, `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Renew / transfer:** `getDomainRenewal` / `postDomainRenewal`, `getDomainTransfer`. - **Order a new domain:** `getDomainLookup` → `getNewDomain` → `addDomain`. - **Cancel:** `CancelDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "The listing of `Domains` services on your account.", content = @Content(mediaType = "application/json", array = @ArraySchema(schema = @Schema(implementation = DomainRow.class)))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainsList(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainsList(securityContext);
    }
    @GET
    @Path("/{id}/welcome_email")
    
    @Produces({ "application/json" })
    @Operation(summary = "Resend the domain welcome email with registration details and management instructions", description = "Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer's address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Side effects:** - Sends an email to the account's billing email address.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `domain_status != \"active\"`.  **Related calls:** - **Domain detail:** `getDomainInfo`. - **Contact info:** `getDomainContact`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getDomainsWelcomeEmail(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getDomainsWelcomeEmail(id,securityContext);
    }
    @GET
    @Path("/order")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read the buyable domain TLD service catalog and Whois privacy pricing", description = "Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname's TLD to a `service_id` for ordering, or to render a TLD picker. Pair with `getDomainLookup` for per-domain pricing and `addDomain` to commit. Sibling ops: `getDomainLookup`, `putDomains`, `patchDomains`, `addDomain`.  **Path/Query/Body:** None.  **Returns** (schema `DomainOrder`): - `whoisPrivacyCost` (float) — base per-year privacy cost (`OPENSRS_PRIVACY_COST` constant). - `whoisPrivacyCostTotal` (object) — privacy cost per TLD multiplied by that TLD's term length: `{<tld>: <total-cost>}`. - `services` (object) — `{<services_id>: {services_name, services_cost, services_field1 (tld), ...}}`. `services_ourcost` is stripped. - `tldServices` (object) — TLD → `services_id` lookup map (e.g. `{\"com\": 100, \"net\": 101, \"io\": 234}`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain pricing:** `getDomainLookup`. - **Preview order fields:** `putDomains`. - **Validate fields:** `patchDomains`. - **Place order:** `addDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Domain registration order information.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = DomainOrder.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getNewDomain(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getNewDomain(securityContext);
    }
    @PATCH
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Validate posted domain-order field values before committing — dry run", description = "Validates posted contact/registration field values via `validate_domain_fields()`. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP `auth_info` syntax for transfers, etc.). Use as the last step before `addDomain` to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: `putDomains`, `addDomain`, `getDomainLookup`, `getNewDomain`.  **Body fields:** - `hostname` (string, required). - `type` (string, optional, default `register`) — `register` or `transfer`. - All per-TLD fields from `putDomains.domainFields`.  **Returns:** `\"success\"` (string) when all fields validate; otherwise an `errors` object describing the failing fields and per-field validation messages.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - Validation error object — fields-level failures.  **Related calls:** - **Schema:** `putDomains` (returns the field set to validate). - **Commit:** `addDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Validate Domain order response"),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response patchDomains(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) Map<String, Object> body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.patchDomains(body,securityContext);
    }
    @POST
    @Path("/{id}/renew")
    
    @Produces({ "application/json" })
    @Operation(summary = "Submit a domain renewal request and generate the renewal invoice", description = "Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain's `Repeat_Invoice` cost/frequency/currency to the current price, then calls `Repeat_Invoice::invoice()` to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: `getDomainRenewal`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields:** - `whois_privacy` (string, optional) — `enable` to add or keep the privacy add-on; otherwise the existing privacy `Repeat_Invoice` is marked `deleted=1` on renewal.  **Returns:** `{text, invoices, invoiceIds, payUrl}` — pass `invoiceIds` to `initiatePayment` to settle.  **Side effects:** - Updates `repeat_invoices` cost/frequency/currency. - Inserts a new `invoices` row for the renewal period. - When `whois_privacy=enable`: extends the privacy add-on `repeat_invoices` and creates its renewal invoice. - When `whois_privacy` not enabled: marks the existing privacy `repeat_invoices` row `deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`, or unpaid renewal invoice already exists, or already-paid renewal exists. - Registrar errors surfaced as 4xx.  **Related calls:** - **Preview:** `getDomainRenewal`. - **Pay:** `initiatePayment` with the returned `invoiceIds`. - **Cancel auto-renew:** `CancelDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postDomainRenewal(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postDomainRenewal(id,securityContext);
    }
    @POST
    @Path("/search/{name}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Get the full order form data for a hostname in one round-trip (search → order preview)", description = "Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling `getDomainLookup` + `getNewDomain` + `putDomains` and merging the results, but with one round-trip. The path `name` is moved server-side into `$_POST['hostname']` and passed to `getOrderDomainData(true)`. Sibling ops: `getDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — hostname (e.g. `example.com`).  **Body:** None.  **Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for `addDomain`.  **Auth:** Session/API key (path is `client_api`, but called publicly).  **Errors:** - `4xx` — hostname cannot be resolved to a TLD service.  **Related calls:** - **Place order:** `addDomain` with the returned fields. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Domain availability and pricing check results."),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postDomainSearch(@Parameter(in = ParameterIn.PATH, description = "The base domain name to search (for example `example` or `example.com`).",required=true) @PathParam("name") String name,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postDomainSearch(name,securityContext);
    }
    @POST
    @Path("/{id}/transfer")
    
    @Produces({ "application/json" })
    @Operation(summary = "Re-poll OpenSRS transfer status for a domain order via POST", description = "Re-polls OpenSRS transfer state. Behaves identically to `getDomainTransfer` (same `go()` handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use `addDomain` with `type=transfer`. Sibling ops: `getDomainTransfer`, `addDomain` (initiate), `getDomainContact` (set `auth_info`).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** Same payload as `getDomainTransfer`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Read:** `getDomainTransfer`. - **Initiate new transfer:** `addDomain` with `type=transfer`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postDomainTransfer(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postDomainTransfer(id,securityContext);
    }
    @PUT
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Preview per-TLD field requirements for a domain order — no commit", description = "Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: `.us` requires nexus codes, `.ca` requires CIRA legal type, `.eu` has residency rules, `.fr` requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use `patchDomains` to validate filled values, then `addDomain` to place the order. Sibling ops: `getNewDomain`, `getDomainLookup`, `patchDomains`, `addDomain`.  **Body fields:** - `hostname` (string, required) — FQDN. - `type` (string, optional, default `register`) — `register` or `transfer`. - `coupon` (string, optional) — coupon code.  **Returns:** `{domainFields: {<field_name>: {label, type, options, value, required, ...}}}` — schema for the dynamic order form.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.` — unknown TLD. - `401` — unauthenticated.  **Related calls:** - **Catalog first:** `getNewDomain`. - **Validate filled values:** `patchDomains`. - **Place order:** `addDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Validate Domain Order response"),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response putDomains(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) Map<String, Object> body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.putDomains(body,securityContext);
    }
    @POST
    @Path("/{id}/contact")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Update registrant/admin contact details and push them to OpenSRS", description = "Pushes updated contact data to the registrar via OpenSRS `provModify`, applied to admin/tech/billing/owner contact roles via `also_apply_to`. Active services apply changes immediately at the registrar; pending services may trigger `queue_process_payment` when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. `.com`, `.net`) require a 60-day transfer lock per ICANN rules. Sibling ops: `getDomainContact`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainContactDetails`):** Same fields returned by `getDomainContact`: `firstname`, `lastname`, `email`, `address`/`2`/`3`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `company`, optional `auth_info`, optional `transfer`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Calls OpenSRS `provModify` with `also_apply_to=admin,tech,billing,owner`. - May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — domain is locked (unlock first). - Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.  **Related calls:** - **Read first:** `getDomainContact`. - **Transfer status:** `getDomainTransfer`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateDomainContact(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) DomainContactDetails body
,@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateDomainContact(body,id,securityContext);
    }
    @POST
    @Path("/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "POST mutation hook for the domain detail page (use dedicated ops where possible)", description = "Account-level write-back hook for the domain service record. Runs the same `View::go()` handler as `getDomainInfo` — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: `getDomainInfo`, `updateDomainContact`, `updateDomainNameservers`, `addDomainDnssec`, `updateDomainWhoisPrivacy`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** Form fields matching the domain service record.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Prefer these dedicated endpoints:** - **Registrant/admin contact:** `updateDomainContact` (pushes to OpenSRS). - **Nameservers:** `updateDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`. - **DNSSEC:** `addDomainDnssec`, `deleteDomainDnssec`. - **Whois privacy:** `updateDomainWhoisPrivacy`. - **Renew:** `postDomainRenewal`. - **Cancel:** `CancelDomain`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateDomainInfo(@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateDomainInfo(id,securityContext);
    }
    @PUT
    @Path("/{id}/nameservers")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Replace the full authoritative-nameserver delegation list at the registrar", description = "Atomically replaces the domain's authoritative-nameserver delegation list via OpenSRS `nsAdvancedUpdt` with `op_type=assign`. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer `cdns1`/`cdns2`, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use `addDomainNameserver`. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`, `addDnsDomain` (host a zone at InterServer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainNameserverPutRequest`):** - `nameserver[]` (array of strings, required) — FQDN strings (e.g. `[\"ns1.example.com\", \"ns2.example.com\"]`). Trimmed; empty entries dropped server-side.  **Returns:** `SuccessTextResponse` on registrar `is_success=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or domain locked. - Registrar errors surfaced as 4xx.  **Related calls:** - **Read current set:** `getDomainNameservers`. - **Register a glue record:** `addDomainNameserver`. - **Host the DNS zone at InterServer:** `addDnsDomain` (DNS tag). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Response with a text message field.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = TextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateDomainNameservers(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) DomainNameserverPutRequest body
,@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateDomainNameservers(body,id,securityContext);
    }
    @POST
    @Path("/{id}/whois")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Order, enable, or cancel the Whois privacy add-on for a domain", description = "Manages the Whois privacy add-on. Behavior branches on `action`: - **`order`**: creates an add-on `Repeat_Invoice` and emits the first invoice; pass the returned `payUrl` to the customer or use `initiatePayment` with `invoiceId`. **Real money.** - **`enable`**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls `post_payment_processing_new`). - **`disableCancel`**: disables Whois privacy at OpenSRS and marks the add-on `Repeat_Invoice` `deleted=1`. - **(no action)**: returns current state — same shape as `getDomainWhoisPrivacy`.  Sibling ops: `getDomainWhoisPrivacy`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainWhoisPrivacyRequest`):** - `action` (string, optional) — one of `order` / `enable` / `disableCancel`. Omit for status.  **Returns:** (varies by action) - `order`: `{text, invoiceId, repeatInvoiceId, payUrl}`. - `enable` / `disableCancel`: `{text}`. - No action: `{whoisPrivacy, cost, currency, currencySymbol}`.  **Side effects:** - `order`: inserts add-on `repeat_invoices` + `invoices` rows. - `enable`: OpenSRS `provModify` with privacy=on; calls `post_payment_processing_new`. - `disableCancel`: OpenSRS `provModify` with privacy=off; marks add-on `repeat_invoices.deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or TLD doesn't support privacy. - `4xx` — no add-on found for `enable` / `disableCancel`.  **Related calls:** - **Read state:** `getDomainWhoisPrivacy`. - **Pay the order invoice:** `initiatePayment` (`method=cc|paypal|...`). - **Renew with privacy:** `postDomainRenewal` with `whois_privacy=enable`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Domains" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateDomainWhoisPrivacy(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) DomainWhoisPrivacyRequest body
,@Parameter(in = ParameterIn.PATH, description = "The domain service ID. Use `domain_id` from `GET /domains`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateDomainWhoisPrivacy(body,id,securityContext);
    }
}
