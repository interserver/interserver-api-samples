package io.swagger.api;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.CreateFilter;
import io.swagger.model.CreateFirewallRule;
import io.swagger.model.CreateGeoFirewallRule;
import io.swagger.model.DeleteFirewallRule;
import io.swagger.model.DeleteGeoFirewallRule;
import io.swagger.model.InlineResponse20013;
import io.swagger.model.InlineResponse20014;
import io.swagger.model.InlineResponse20015;
import io.swagger.model.InlineResponse20016;
import io.swagger.model.InlineResponse20017;
import io.swagger.model.InlineResponse20018;
import io.swagger.model.InlineResponse20019;
import io.swagger.model.InlineResponse20020;
import io.swagger.model.InlineResponse201;
import io.swagger.model.InlineResponse2011;
import io.swagger.model.InlineResponse2012;
import io.swagger.model.InlineResponse400;
import io.swagger.model.InlineResponse4001;
import io.swagger.model.InlineResponse4002;
import io.swagger.model.InlineResponse4003;
import io.swagger.model.InlineResponse4004;
import io.swagger.model.InlineResponse4005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.InlineResponse500;
import io.swagger.model.InlineResponse5001;
import io.swagger.model.InlineResponse5002;
import io.swagger.model.InlineResponse5003;
import io.swagger.model.InlineResponse5004;
import io.swagger.model.InlineResponse5005;
import io.swagger.model.ScrubIpFilterTypes;
import io.swagger.model.ScrubIpPlaceOrder;
import io.swagger.model.ScrubIpsLogRowSchema;
import io.swagger.model.ScrubIpsRowSchema;
import io.swagger.api.ScrubIpsApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
@Path("/scrub_ips")
@RequestScoped






public class ScrubIpsApi  {

  @Context SecurityContext securityContext;

  @Inject ScrubIpsApiService delegate;


    @DELETE
    @Path("/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Cancel a Scrub IP service and stop its recurring DDoS billing", description = "Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Request OK", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20014.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response cancelScrubIp(
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.cancelScrubIp(id, securityContext);
    }

    @POST
    @Path("/{id}/create_filter")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port", description = "Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Request OK", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2011.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4004.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5004.class))) })
    public Response createFilter(
@Parameter(description = "" ,required=true) CreateFilter body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.createFilter(body, id, securityContext);
    }

    @POST
    @Path("/{id}/create_geo_rule")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Add a geographic firewall rule (block/allow by country code or ASN)", description = "Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Create firewall rule for scrub ip", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse201.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4003.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5002.class))) })
    public Response createGeoRule(
@Parameter(description = "" ,required=true) CreateGeoFirewallRule body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.createGeoRule(body, id, securityContext);
    }

    @POST
    @Path("/{id}/create_rule")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)", description = "Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Create firewall rule for scrub ip", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse201.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4001.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5002.class))) })
    public Response createRule(
@Parameter(description = "" ,required=true) CreateFirewallRule body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.createRule(body, id, securityContext);
    }

    @POST
    @Path("/{id}/delete_filter")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Remove a scrubbing filter by matching filter_type and port", description = "Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Delete filter for scrub ip", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20018.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4005.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5005.class))) })
    public Response deleteFilter(
@Parameter(description = "" ,required=true) CreateFilter body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.deleteFilter(body, id, securityContext);
    }

    @GET
    @Path("/{id}/disable")
    
    @Produces({ "application/json" })
    @Operation(summary = "Disable DDoS scrubbing and remove the BGP announcement on the IP", description = "Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Request OK", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20016.class))),
        @ApiResponse(responseCode = "400", description = "Bad request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse400.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5001.class))) })
    public Response disableScrub(
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.disableScrub(id, securityContext);
    }

    @GET
    @Path("/{id}/enable")
    
    @Produces({ "application/json" })
    @Operation(summary = "Enable DDoS scrubbing (BGP announcement) on the service's protected IP", description = "Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Request OK", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20015.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse500.class))) })
    public Response enableScrub(
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.enableScrub(id, securityContext);
    }

    @GET
    @Path("/order")
    
    @Produces({ "application/json" })
    @Operation(summary = "Get plans, pricing, and eligible IPs for a new Scrub IP order", description = "Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Order details", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20019.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getOrderDetail() {
        return delegate.getOrderDetail(securityContext);
    }

    @GET
    @Path("/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Get full Scrub IP service detail (rules + geo + filters)", description = "Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Scrub IP service details including firewall rules and filters.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20013.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getScrubIpDetails(
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.getScrubIpDetails(id, securityContext);
    }

    @GET
    @Path("/filter_types")
    
    @Produces({ "application/json" })
    @Operation(summary = "List enabled traffic filter profiles available for createFilter", description = "Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Supported scrub filter types for building firewall rules.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = ScrubIpFilterTypes.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getScrubIpFilterTypes() {
        return delegate.getScrubIpFilterTypes(securityContext);
    }

    @GET
    @Path("/{id}/invoices")
    
    @Produces({ "application/json" })
    @Operation(summary = "List recurring and one-time invoices billed for this Scrub IP service", description = "Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Get Invoices response", content = @Content(mediaType = "application/json", schema = @Schema(implementation = ChargeInvoiceRows.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getScrubIpInvoices(
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.getScrubIpInvoices(id, securityContext);
    }

    @GET
    @Path("/{id}/logs")
    
    @Produces({ "application/json" })
    @Operation(summary = "Get last 50000 packet/event log entries for the protected IP", description = "Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Scrub Ips logs", content = @Content(mediaType = "application/json", array = @ArraySchema(schema = @Schema(implementation = ScrubIpsLogRowSchema.class)))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getScrubIpLogs(
@Parameter(description = "Scrub Order ID",required=true) @PathParam("id") String id
) {
        return delegate.getScrubIpLogs(id, securityContext);
    }

    @GET
    
    
    @Produces({ "application/json" })
    @Operation(summary = "List all Scrub IP DDoS protection services on the authenticated account", description = "Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Scrub Ips list", content = @Content(mediaType = "application/json", array = @ArraySchema(schema = @Schema(implementation = ScrubIpsRowSchema.class)))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "200", description = "Default response") })
    public Response getScrubIpsList() {
        return delegate.getScrubIpsList(securityContext);
    }

    @POST
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Place a new Scrub IP DDoS protection order and generate an invoice", description = "Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Request OK", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2012.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response placeScrubOrder(
@Parameter(description = "" ,required=true) ScrubIpPlaceOrder body
) {
        return delegate.placeScrubOrder(body, securityContext);
    }

    @PUT
    @Path("/order")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Validate a Scrub IP order and return effective pricing without billing", description = "Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Scrub IP order validation result.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20020.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response putScrubIps(
@Parameter(description = "" ,required=true) ScrubIpPlaceOrder body
) {
        return delegate.putScrubIps(body, securityContext);
    }

    @POST
    @Path("/{id}/delete_geo_rule")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Delete a geo firewall rule by rule_id from getScrubIpDetails", description = "Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Delete firewall rule for scrub ip", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20017.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4002.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5003.class))) })
    public Response scrubIpsDeleteGeoRule(
@Parameter(description = "" ,required=true) DeleteGeoFirewallRule body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.scrubIpsDeleteGeoRule(body, id, securityContext);
    }

    @POST
    @Path("/{id}/delete_rule")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @Operation(summary = "Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails", description = "Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Scrub Ips" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Delete firewall rule for scrub ip", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20017.class))),
        @ApiResponse(responseCode = "400", description = "Bad Request", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse4002.class))),
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))),
        @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse5003.class))) })
    public Response scrubIpsDeleteRule(
@Parameter(description = "" ,required=true) DeleteFirewallRule body
, 
@Parameter(description = "ScrubIp ID number",required=true) @PathParam("id") Integer id
) {
        return delegate.scrubIpsDeleteRule(body, id, securityContext);
    }
}
