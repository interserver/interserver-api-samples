'use strict';


/**
 * Place a real Floating IP order, create billing records, and provision the service
 * Charges the customer and creates a new Floating IP service via `place_buy_floating_ip`. Validate first with `putFloating_ips` to avoid surprise failures. Body (form-encoded): `serviceType` (required, `services_id`), `coupon` (optional), `comment` (optional internal note). On success returns `{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — `iid` is the master invoice ID, `serviceId` is the new `floating_ip_id`. On validation failure returns `{ continue:false, errors:[...] }` with no charge. Errors: 401 if unauthenticated; soft errors in `errors[]`. The newly-issued IP starts unassigned — point it at a target with `postFloatingIpsChangeIp` once the service is `active`.  Sibling ops: `getNewFloatingIp` (catalog), `putFloating_ips` (validate), `getFloatingIpInfo` (poll), `postFloatingIpsChangeIp` (route), `getBillingInvoice` + `initiatePayment` (settle invoice), `floating_ipsCancel`.
 *
 * body FloatingIpOrderRequest 
 * returns ServiceOrderPostResponse
 **/
exports.addFloatingIp = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "continue" : true,
  "errors" : [ ],
  "total_cost" : "5.00",
  "iid" : "25296600",
  "iids" : [ "SERVICE12345" ],
  "real_iids" : [ "25296600" ],
  "serviceId" : 12345,
  "invoice_description" : "New Service Order"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Cancel a Floating IP service and release the IP — destructive, billing stops
 * Cancels the Floating IP via the shared `Api\\Billing\\CancelService` flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `FloatingIpsCancelResponse` shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when `id` is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use `postFloatingIpsChangeIp` instead of cancel-and-reorder.  Sibling ops: `getFloatingIpInfo` (status), `getFloatingIpInvoices` (outstanding charges), `postFloatingIpsChangeIp` (re-route instead of cancel), `addFloatingIp` (re-order).
 *
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns inline_response_200_4
 **/
exports.floating_ipsCancel = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Floating IPs is canceled."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Fetch full details for one Floating IP service, including current target IP
 * Use for a Floating IP detail screen, or to read `floating_ip_ip` / `floating_ip_target_ip` before calling `postFloatingIpsChangeIp`. Read-only. Path param `id` (integer, `floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ViewFloatingIp.getDetails()` payload — service info, billing/cost summary, status, target IP, and `client_links` (action URLs the UI can render). Internal-only fields (`admin_links`, `settings`, `csrf`) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller (`get_service` filters by custid). Siblings: `postFloatingIpsChangeIp`, `updateFloatingIpInfo`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, `floating_ipsCancel`.
 *
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns Object
 **/
exports.getFloatingIpInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = { };
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List all billing invoices charged against a specific Floating IP service
 * Use for a per-service billing history view — pulls the standard `Api\\Billing\\InvoicesList` rows scoped to this Floating IP. Read-only. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ChargeInvoiceRows` schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (`getBillingInvoice`, `initiatePayment`) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller. Siblings: `getFloatingIpInfo` (service details), `getFloatingIpsWelcomeEmail`.
 *
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns ChargeInvoiceRows
 **/
exports.getFloatingIpInvoices = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "invoices" : {
    "1234565" : {
      "invoices_id" : 1234565,
      "invoices_description" : "Current IP + Scrub",
      "invoices_amount" : 5,
      "invoices_date" : "2025-12-05T19:38:24.000Z",
      "invoices_paid" : 1,
      "invoices_due_date" : "2025-12-19T19:38:24.000Z",
      "invoices_currency" : "USD",
      "currency_symbol" : "$",
      "invoices_date_formatted" : "5th Dec 2025",
      "paid_invoices" : {
        "654321" : {
          "invoices_id" : "654321,",
          "invoices_description" : "Credit Card Payment 2189347824",
          "invoices_amount" : 5,
          "invoices_date" : "2025-12-05T19:38:38.000Z",
          "invoices_currency" : "USD",
          "currency_symbol" : "$",
          "invoices_date_formatted" : "5th Dec 2025",
          "payment_type" : "Credit Card Payment",
          "refund_invoices" : {
            "98765" : {
              "invoices_id" : 98765,
              "invoices_description" : "REFUND: Credit Card Payment 2189347824",
              "invoices_amount" : 5,
              "invoices_date" : "2025-12-16T13:32:22.000Z",
              "invoices_currency" : "USD",
              "currency_symbol" : "$",
              "invoices_date_formatted" : "16th Dec 2025"
            }
          }
        }
      }
    }
  }
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List all Floating IP services on the authenticated customer's account
 * Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: `floating_ip_id`, `repeat_invoices_cost` (recurring price), `floating_ip_ip` (the portable IP), `floating_ip_target_ip` (the IP it currently routes to), `floating_ip_status` (active/pending/canceled/etc.), `services_name` (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with `getFloatingIpInfo`, `postFloatingIpsChangeIp`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, or `floating_ipsCancel`. To order a new one see `getNewFloatingIp` / `addFloatingIp`.  Sibling ops: `getFloatingIpInfo`, `getNewFloatingIp` (catalog), `addFloatingIp` (order).
 *
 * returns List
 **/
exports.getFloatingIpsList = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ { }, { } ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Resend the Floating IP welcome / setup email to the account contact
 * Triggers `floating_ip_welcome_email($id)` to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer's on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path `id` (`floating_ip_id`). Returns `{ text: 'Welcome Email has been resent.' }`. Errors: 401 if unauthenticated; 404 (`Invalid Service Passed`) if `id` is not owned by the caller; 409 (`Service is not active`) if status is not `active`. Side effect: sends an outbound email — avoid in tight loops. Read state first via `getFloatingIpInfo` if unsure of status.  Sibling ops: `getFloatingIpInfo` (status), `addFloatingIp` (new order), `floating_ipsCancel`.
 *
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns SuccessTextResponse
 **/
exports.getFloatingIpsWelcomeEmail = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get pricing and service-type options for ordering a new Floating IP
 * Use before showing a Floating IP order form, or before calling `addFloatingIp`, to discover which service types (`serviceTypes`) and prices (`packageCosts`, keyed by `services_id` in the customer's currency) are currently buyable. Read-only; no side effects. No params, no body. Returns `{ packageCosts: { <services_id>: <cost> }, serviceTypes: [ ... ] } `. Costs are `services.services_cost` filtered to `services_buyable=1` for module `floating_ips`. Errors: 401 if unauthenticated. Next steps: validate the chosen `serviceType` with `putFloating_ips`, then place the order with `addFloatingIp`. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer's active services.  Sibling ops: `putFloating_ips` (validate), `addFloatingIp` (commit), `getFloatingIpsList` (existing IPs).
 *
 * returns Object
 **/
exports.getNewFloatingIp = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = { };
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Re-point a Floating IP to a different target IP on one of the customer's services
 * Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.
 *
 * body IpObject 
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns SuccessTextResponse
 **/
exports.postFloatingIpsChangeIp = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Re-point a Floating IP to a different target IP on one of the customer's services
 * Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.
 *
 * body IpObject 
 * id Integer The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns SuccessTextResponse
 **/
exports.postFloatingIpsChangeIp = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Validate a Floating IP order and price it without charging the customer
 * Dry-run for `addFloatingIp` — runs `validate_buy_floating_ip` to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): `serviceType` (required, `services_id` from `getNewFloatingIp.packageCosts`), `coupon` (optional code). Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }`. `continue=true` means the order would succeed; `continue=false` plus populated `errors[]` means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the `errors` array. Use the returned `serviceType` and `couponCode` when calling `addFloatingIp`. Sibling ops: `getNewFloatingIp` (catalog), `addFloatingIp` (commit).
 *
 * body FloatingIpOrderRequest 
 * no response value expected for this operation
 **/
exports.putFloating_ips = function(body) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Update a Floating IP service's editable settings (label / metadata)
 * Stub edit endpoint that delegates to the same handler as `getFloatingIpInfo` — currently used for label/metadata edits surfaced by `ViewFloatingIp`. To re-route the IP to a different target use the dedicated `postFloatingIpsChangeIp` instead; this op does not change routing. Path param `id` (`floating_ip_id`). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if `id` not owned by the caller. Read state first with `getFloatingIpInfo`.  Sibling ops: `getFloatingIpInfo` (read), `postFloatingIpsChangeIp` (re-route), `floating_ipsCancel`.
 *
 * id String The Floating IP service ID. Use the ID from `GET /floating_ips`.
 * returns SuccessTextResponse
 **/
exports.updateFloatingIpInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Ok"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

