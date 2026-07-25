package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.BillingApiService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import java.math.BigDecimal;
import io.swagger.model.BillingAddCcRequest;
import io.swagger.model.BillingInvoiceDetail;
import io.swagger.model.BillingInvoiceList;
import io.swagger.model.BillingPaymentMethodRequest;
import io.swagger.model.BillingPrepayRequest;
import io.swagger.model.BillingVerifyCcRequest;
import io.swagger.model.IdVerifyBody;
import io.swagger.model.InlineResponse20010;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;

@Path("/billing")



public class BillingApi  {

   private BillingApiService delegate;

   protected BillingApi() {
   }

   @javax.inject.Inject
   public BillingApi(BillingApiService delegate) {
      this.delegate = delegate;
   }

    @POST
    @Path("/creditcards")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Store a credit card on the account — may return a verification flow", description = "Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Body fields (JSON or multipart, schema `BillingAddCcRequest`):** - `cc` (string, required) — card number; dashes stripped, non-digits filtered. - `name` (string, required) — cardholder name. - `cc_exp` (string, required) — `MM/YYYY`. - `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`. - **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.  **Side effects:** - Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - `Card number, Full Name, Expiry date are required!` — required field missing/empty. - `401` — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts). - **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. - **Pay an invoice with it:** `initiatePayment` (`method=cc`). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addBillingCreditCard(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) BillingAddCcRequest body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addBillingCreditCard(body,securityContext);
    }
    @POST
    @Path("/creditcards")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Store a credit card on the account — may return a verification flow", description = "Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Body fields (JSON or multipart, schema `BillingAddCcRequest`):** - `cc` (string, required) — card number; dashes stripped, non-digits filtered. - `name` (string, required) — cardholder name. - `cc_exp` (string, required) — `MM/YYYY`. - `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`. - **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.  **Side effects:** - Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - `Card number, Full Name, Expiry date are required!` — required field missing/empty. - `401` — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts). - **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. - **Pay an invoice with it:** `initiatePayment` (`method=cc`). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addBillingCreditCard(@Parameter(description = "", required=true)  @FormParam("name")  String name,@Parameter(description = "", required=true)  @FormParam("address")  String address,@Parameter(description = "", required=true)  @FormParam("city")  String city,@Parameter(description = "", required=true)  @FormParam("state")  String state,@Parameter(description = "", required=true)  @FormParam("country")  String country,@Parameter(description = "", required=true)  @FormParam("zip")  String zip,@Parameter(description = "", required=true)  @FormParam("cc")  String cc,@Parameter(description = "", required=true)  @FormParam("cc_exp")  String ccExp,@Parameter(description = "", required=true)  @FormParam("cc_ccv2")  String ccCcv2,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addBillingCreditCard(name,address,city,state,country,zip,cc,ccExp,ccCcv2,securityContext);
    }
    @POST
    @Path("/prepays")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Create a prepay deposit and return an invoice id to fund it", description = "Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPrepayRequest`):** - `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`). - `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.  **Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).  **Side effects:** - Inserts `prepays` row. - Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).  **Auth:** Session/API key.  **Errors:** - `Sorry! Minimum prepay amount is $10.00` — amount below floor. - `Something went wrong! Try again or contact our support team!` — invoice insert failed. - `401` — unauthenticated.  **Related calls:** - **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id. - **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`). - **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`). - **Cancel before paying:** `deleteBillingPrepay`.  **Example happy path:** ```text POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true } -> { \"text\": \"...\", \"invoice\": 25296701 } GET /apiv2/billing/pay/cc/25296701 -> { \"type\": \"single\", \"text\": \"Payment processed.\" } GET /apiv2/billing/prepays -> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }] ``` ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addBillingPrepay(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) BillingPrepayRequest body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addBillingPrepay(body,securityContext);
    }
    @POST
    @Path("/prepays")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Create a prepay deposit and return an invoice id to fund it", description = "Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPrepayRequest`):** - `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`). - `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.  **Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).  **Side effects:** - Inserts `prepays` row. - Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).  **Auth:** Session/API key.  **Errors:** - `Sorry! Minimum prepay amount is $10.00` — amount below floor. - `Something went wrong! Try again or contact our support team!` — invoice insert failed. - `401` — unauthenticated.  **Related calls:** - **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id. - **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`). - **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`). - **Cancel before paying:** `deleteBillingPrepay`.  **Example happy path:** ```text POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true } -> { \"text\": \"...\", \"invoice\": 25296701 } GET /apiv2/billing/pay/cc/25296701 -> { \"type\": \"single\", \"text\": \"Payment processed.\" } GET /apiv2/billing/prepays -> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }] ``` ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response addBillingPrepay(@Parameter(description = "", required=true)  @FormParam("module")  String module,@Parameter(description = "", required=true)  @FormParam("amount")  BigDecimal amount,@Parameter(description = "", required=true)  @FormParam("automatic_use")  String automaticUse,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.addBillingPrepay(module,amount,automaticUse,securityContext);
    }
    @DELETE
    @Path("/creditcards/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Remove a stored credit card from the account", description = "Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Card removed successfully.`.  **Side effects:** - Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`. - When the deleted card was primary: clears account-level `cc`.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `401` — unauthenticated.  **Related calls:** - **Set a new default:** `updateBillingPaymentMethod`. - **Add a replacement:** `addBillingCreditCard`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response deleteBillingCreditCard(@Parameter(in = ParameterIn.PATH, description = "The credit card ID to remove. Use IDs from `GET /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deleteBillingCreditCard(id,securityContext);
    }
    @DELETE
    @Path("/invoices/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Cancel a pending unpaid invoice — and its pending service or repeat invoice", description = "Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.  **Path param:** - `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).  **Body:** None.  **Returns:** `Invoice Deleted` text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`. - **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:   - the `repeat_invoices` row,   - every `invoices` row for that service,   - the service row in `{settings['TABLE']}`. - **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `Invalid invoice` — `id` not found or wrong owner. - `Invalid service` — invoice references a service that no longer exists. - `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`. - `401` — unauthenticated.  **Related calls:** - **List candidates:** `getBillingInvoices`. - **Detail first:** `getBillingInvoice`. - **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`. - **For prepay invoices:** `deleteBillingPrepay` (delegated automatically). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response deleteBillingInvoice(@Parameter(in = ParameterIn.PATH, description = "The invoice ID to delete. Only unpaid invoices can be deleted.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deleteBillingInvoice(id,securityContext);
    }
    @DELETE
    @Path("/prepays/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Delete an unfunded prepay or strip its unpaid funding invoices", description = "Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.  **Path param:** - `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`. - When the prepay row was deleted: `\"PrePay {id} deleted.\"`.  **Side effects:** - Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`. - Deletes the `prepays` row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - `Invalid Prepay` — `id` not found. - `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up. - `There was an error deleting the prepay, please contact support` — delete affected 0 rows. - `401` — unauthenticated.  **Related calls:** - **List first:** `getBillingPrePays`. - **Re-add later:** `addBillingPrepay`. - **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response deleteBillingPrepay(@Parameter(in = ParameterIn.PATH, description = "The prepay balance ID to delete.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.deleteBillingPrepay(id,securityContext);
    }
    @GET
    @Path("/cart")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read the current shopping cart contents, totals, and available payment methods", description = "Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid `invoices` rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** `getBillingInvoices`. - **Drill into one invoice:** `getBillingInvoice`. - **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms). - **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Current shopping cart contents and available payment methods.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Object.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getBillingCart(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getBillingCart(securityContext);
    }
    @GET
    @Path("/creditcards/{id}/verify")
    
    @Produces({ "application/json" })
    @Operation(summary = "Probe whether a stored card still needs micro-charge verification", description = "Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** `patchBillingCreditCardVerify`. - **Step 2 of verify flow:** `postBillingCreditCardVerify`. - **Add a new card:** `addBillingCreditCard`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getBillingCreditCardVerify(@Parameter(in = ParameterIn.PATH, description = "The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getBillingCreditCardVerify(id,securityContext);
    }
    @GET
    @Path("/invoices/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Read full invoice detail — line items, totals, paid status, customer info", description = "Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.  **Path param:** - `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.  **Body:** None.  **Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.  **Errors:** - `Invalid Invoice` — `id` not found or owned by another account. - `401` — unauthenticated.  **Related calls:** - **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`). - **Delete if pending/unpaid:** `deleteBillingInvoice`. - **List all:** `getBillingInvoices`. - **Cart-style summary across all unpaid:** `getBillingCart`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Detailed invoice payload for the requested invoice.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = BillingInvoiceDetail.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getBillingInvoice(@Parameter(in = ParameterIn.PATH, description = "The invoice ID. Use IDs from `GET /billing/invoices` or from order responses.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getBillingInvoice(id,securityContext);
    }
    @GET
    @Path("/invoices")
    
    @Produces({ "application/json" })
    @Operation(summary = "List every invoice on the account with summary totals and paid/unpaid status", description = "Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.  **Path/Query/Body:** None.  **Returns:** `BillingInvoiceList` — object containing: - `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`. - Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Drill into one invoice:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays). - **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Invoice listing and summary for the account.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = BillingInvoiceList.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getBillingInvoices(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getBillingInvoices(securityContext);
    }
    @GET
    @Path("/prepays")
    
    @Produces({ "application/json" })
    @Operation(summary = "List prepay deposits on the account — remaining balance and auto-use flags", description = "Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - `prepay_id` (integer). - `prepay_module` (string) — service module the prepay is scoped to (or `default` for any). - `prepay_amount` (decimal) — original deposit amount. - `prepay_remaining` (decimal) — funds left. - `prepay_automatic_use` (bool) — auto-apply to invoices. - `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`). - **Pay with prepay:** `initiatePayment` with `method=prepay`. - **Remove an unfunded prepay:** `deleteBillingPrepay`. - **Cart view:** `getBillingCart` (includes prepay summary). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Prepay balances and metadata.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Object.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getBillingPrePays(@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.getBillingPrePays(securityContext);
    }
    @GET
    @Path("/pay/{method}/{invoices}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Pay invoices through the chosen gateway — returns the next-step action", description = "Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.  **Path params:** - `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise. - `invoices` (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. `25296600`);   - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;   - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;   - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;   - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.  **Query params:** - `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.  **Returns** (one of three shapes — branch on `type`): - **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`. - **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`. - **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.  **Side effects:** - Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`). - On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation. - On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/_*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).  **Errors:** - `400 Invalid payment method` — unrecognized `method`. - `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`. - `422 Invalid Invoice Tag` — identifier format not recognized. - `401` — unauthenticated. - Method-specific:   - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).   - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).  **Related calls:** - **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`. - **Confirm invoice detail first:** `getBillingInvoice`. - **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`. - **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.  **Example happy-path (VPS):** ```text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\"type\": \"single\", \"text\": \"Payment processed.\"} # 4) Poll service: GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...} ``` **Example PayPal flow:** ```text GET /apiv2/billing/pay/paypal/25296600 {\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"} # Client redirects user; PayPal IPN later marks invoice paid and activates service. ``` ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Payment initiation response with redirect or form data.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse20010.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response initiatePayment(@Parameter(in = ParameterIn.PATH, description = "The payment method to use. Valid values: `cc` (credit card), `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`.",required=true, schema=@Schema(allowableValues={ "cc", "paypal", "prepay", "payssion", "payu", "ccavenue", "cashfree", "coinbase", "btcpay" })
) @PathParam("method") String method,@Parameter(in = ParameterIn.PATH, description = "A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. `/backups/order`, `/vps/order`) and by `/billing/invoices`. Invoice tags accepted are SERVICE<module><id>, RINV<module><repeat invoice id>, INV<module><invoice id>, PREPAY<prepay id><invoice id>, and <invoice id>.",required=true) @PathParam("invoices") String invoices,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.initiatePayment(method,invoices,securityContext);
    }
    @PATCH
    @Path("/creditcards/{id}/verify")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Place two micro-charges on the card to start CVV verification (step 1 of 2)", description = "Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields:** - `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via `verify_cc_charge()` (gateway-side). - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing or blank CVV` — `cc_ccv2` absent or empty. - Gateway error text — charge attempt failed. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`). - **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`). - **After verification:** `updateBillingPaymentMethod` to make it the default. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response patchBillingCreditCardVerify(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) IdVerifyBody body
,@Parameter(in = ParameterIn.PATH, description = "The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.patchBillingCreditCardVerify(body,id,securityContext);
    }
    @PATCH
    @Path("/creditcards/{id}/verify")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Place two micro-charges on the card to start CVV verification (step 1 of 2)", description = "Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields:** - `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via `verify_cc_charge()` (gateway-side). - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing or blank CVV` — `cc_ccv2` absent or empty. - Gateway error text — charge attempt failed. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`). - **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`). - **After verification:** `updateBillingPaymentMethod` to make it the default. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response patchBillingCreditCardVerify(@Parameter(description = "", required=true)  @FormParam("cc_ccv2")  String ccCcv2,@Parameter(in = ParameterIn.PATH, description = "The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.patchBillingCreditCardVerify(ccCcv2,id,securityContext);
    }
    @POST
    @Path("/creditcards/{id}/verify")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Submit two micro-charge amounts to finalize card verification (step 2 of 2)", description = "Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields (schema `BillingVerifyCcRequest`):** - `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal). - `cc_amount2` (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent. - Verification failure text (status `failed` / `error` / `warning`) — amounts don't match. - `401` — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** `patchBillingCreditCardVerify`. - **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postBillingCreditCardVerify(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) BillingVerifyCcRequest body
,@Parameter(in = ParameterIn.PATH, description = "The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postBillingCreditCardVerify(body,id,securityContext);
    }
    @POST
    @Path("/creditcards/{id}/verify")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Submit two micro-charge amounts to finalize card verification (step 2 of 2)", description = "Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields (schema `BillingVerifyCcRequest`):** - `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal). - `cc_amount2` (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent. - Verification failure text (status `failed` / `error` / `warning`) — amounts don't match. - `401` — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** `patchBillingCreditCardVerify`. - **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postBillingCreditCardVerify(@Parameter(description = "", required=true)  @FormParam("idx")  Integer idx,@Parameter(description = "", required=true)  @FormParam("cc_ccv2")  String ccCcv2,@Parameter(description = "", required=true)  @FormParam("cc_amount1")  String ccAmount1,@Parameter(description = "", required=true)  @FormParam("cc_amount2")  String ccAmount2,@Parameter(description = "", required=true)  @FormParam("terms")  Boolean terms,@Parameter(in = ParameterIn.PATH, description = "The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.postBillingCreditCardVerify(idx,ccCcv2,ccAmount1,ccAmount2,terms,id,securityContext);
    }
    @POST
    @Path("/creditcards/{id}")
    
    @Produces({ "application/json" })
    @Operation(summary = "Refresh stored card expiration and re-trigger MaxMind fraud scoring", description = "Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).  **Body fields:** - `cc_exp` (string, required) — new expiration in `MM/YYYY` format.  **Returns:** `Card updated successfully.`.  **Side effects:** - Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account. - When the card == primary `cc`, the account-level `cc_exp` is also written. - Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via `parse_ccs`.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Please enter valid card expiry date` — `cc_exp` body field missing. - `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format. - `401` — unauthenticated.  **Related calls:** - **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Remove the card:** `deleteBillingCreditCard`. - **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateBillingCreditCard(@Parameter(in = ParameterIn.PATH, description = "The credit card ID. Use IDs from `GET /billing/creditcards` or the response from `POST /billing/creditcards`.",required=true) @PathParam("id") Integer id,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateBillingCreditCard(id,securityContext);
    }
    @POST
    @Path("/payment_method")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Set the account's default payment method for recurring/auto charges", description = "Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):** - `payment_method` (string, required) — one of:   - `cc` — use the existing primary credit card.   - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.   - `paypal` — switch to PayPal. - `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.  **Returns:** `{text: \"Payment Method Updated\"}`.  **Side effects:** - When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`. - `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`. - `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched). - **Audit current methods:** `getAccountInfo` (account profile shows cards as masked). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateBillingPaymentMethod(@Parameter(in = ParameterIn.DEFAULT, description = "" ,required=true) BillingPaymentMethodRequest body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateBillingPaymentMethod(body,securityContext);
    }
    @POST
    @Path("/payment_method")
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Set the account's default payment method for recurring/auto charges", description = "Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):** - `payment_method` (string, required) — one of:   - `cc` — use the existing primary credit card.   - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.   - `paypal` — switch to PayPal. - `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.  **Returns:** `{text: \"Payment Method Updated\"}`.  **Side effects:** - When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`. - `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`. - `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched). - **Audit current methods:** `getAccountInfo` (account profile shows cards as masked). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")    }, tags={ "Billing" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "A response indicating the operation completed successfully with a text message.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = SuccessTextResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response updateBillingPaymentMethod(@Parameter(description = "", required=true)  @FormParam("payment_method")  String paymentMethod,@Parameter(description = "", required=true)  @FormParam("cc_auto")  String ccAuto,@Context SecurityContext securityContext)
    throws NotFoundException {
        return delegate.updateBillingPaymentMethod(paymentMethod,ccAuto,securityContext);
    }
}
