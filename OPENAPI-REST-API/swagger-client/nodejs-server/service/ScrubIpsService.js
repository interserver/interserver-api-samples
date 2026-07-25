'use strict';


/**
 * Cancel a Scrub IP service and stop its recurring DDoS billing
 * Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.
 *
 * id Integer ScrubIp ID number
 * returns inline_response_200_14
 **/
exports.cancelScrubIp = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Scrub Ips is canceled."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
 * Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.
 *
 * body CreateFilter 
 * id Integer ScrubIp ID number
 * returns inline_response_201_1
 **/
exports.createFilter = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "New filter has been created."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Add a geographic firewall rule (block/allow by country code or ASN)
 * Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.
 *
 * body CreateGeoFirewallRule 
 * id Integer ScrubIp ID number
 * returns inline_response_201
 **/
exports.createGeoRule = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "New firewall Rule has been created."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
 * Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.
 *
 * body CreateFirewallRule 
 * id Integer ScrubIp ID number
 * returns inline_response_201
 **/
exports.createRule = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "New firewall Rule has been created."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Remove a scrubbing filter by matching filter_type and port
 * Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. 
 *
 * body CreateFilter 
 * id Integer ScrubIp ID number
 * returns inline_response_200_18
 **/
exports.deleteFilter = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Filter is deleted."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Disable DDoS scrubbing and remove the BGP announcement on the IP
 * Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.
 *
 * id Integer ScrubIp ID number
 * returns inline_response_200_16
 **/
exports.disableScrub = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Scrub is disabled on your IP."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Enable DDoS scrubbing (BGP announcement) on the service's protected IP
 * Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.
 *
 * id Integer ScrubIp ID number
 * returns inline_response_200_15
 **/
exports.enableScrub = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Scrub is enabled on your IP."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get plans, pricing, and eligible IPs for a new Scrub IP order
 * Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.
 *
 * returns inline_response_200_19
 **/
exports.getOrderDetail = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "packageCosts" : {
    "package_cost" : 5,
    "currencySymbol" : "$",
    "currency" : "USD",
    "package_id" : 11552
  },
  "serviceTypes" : [ {
    "services_id" : 11552,
    "services_field1" : "",
    "services_field2" : "",
    "services_name" : "Current IP + Scrub",
    "services_cost" : 5,
    "services_module" : "scrub_ips"
  }, {
    "services_id" : 11552,
    "services_field1" : "",
    "services_field2" : "",
    "services_name" : "Current IP + Scrub",
    "services_cost" : 5,
    "services_module" : "scrub_ips"
  } ],
  "ips" : [ {
    "service_hostname" : "server.gtest.com",
    "service_id" : 12345,
    "service_module" : "vps"
  }, {
    "service_hostname" : "server.gtest.com",
    "service_id" : 12345,
    "service_module" : "vps"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get full Scrub IP service detail (rules + geo + filters)
 * Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. 
 *
 * id Integer ScrubIp ID number
 * returns inline_response_200_13
 **/
exports.getScrubIpDetails = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "serviceInfo" : {
    "scrub_ip_id" : "123",
    "scrub_ip_type" : "11552",
    "scrub_ip_custid" : "456",
    "scrub_ip_order_date" : "2025-12-26 08:24:02",
    "scrub_ip_ip" : "11.24.11.23",
    "scrub_ip_service_id" : "11111",
    "scrub_ip_service_module" : "servers",
    "scrub_ip_status" : "active",
    "scrub_ip_invoice" : "654321",
    "scrub_ip_currency" : "USD",
    "scrub_ip_coupon" : "0",
    "scrub_ip_comment" : ""
  },
  "client_links" : [ {
    "label" : "Invoices",
    "link" : "invoices",
    "icon" : "fas fa-file-invoice-dollar fa-w-12",
    "icon_text" : "",
    "help_text" : "Invoice History"
  }, {
    "label" : "Cancel Scrub IPs",
    "link" : "cancel",
    "icon" : "fas fa-times",
    "icon_text" : "",
    "help_text" : "Cancel Scrub IPs"
  }, {
    "label" : "Disable Scrub",
    "link" : "scrub_action",
    "icon" : "fa fa-shield text-lg",
    "icon_text" : "",
    "help_text" : "Enable/Disable Scrub",
    "other_attr" : ""
  }, {
    "label" : "Scrub Documentation",
    "link" : "https://www.interserver.net/tips/kb/scrub/",
    "icon" : "fa fa-file text-lg",
    "icon_text" : "",
    "help_text" : "Scrub Documentation",
    "other_attr" : "target= \"_blank\""
  } ],
  "billingDetails" : {
    "service_last_invoice_date" : "December 26, 2025",
    "service_payment_status" : "Paid",
    "service_frequency" : "Monthly",
    "next_date" : "2026-01-26 08:24:02",
    "service_next_invoice_date" : "January 26, 2026",
    "service_currency" : "USD",
    "service_currency_symbol" : "$",
    "service_cost_info" : "5.00"
  },
  "custCurrency" : "USD",
  "custCurrencySymbol" : "$",
  "package" : "Current IP + Scrub",
  "extraInfoTables" : {
    "scrub_ips" : {
      "title" : "Connection Information",
      "rows" : [ {
        "desc" : "IP",
        "value" : "11.12.12.12"
      }, {
        "desc" : "Scrub",
        "value" : "Enabled"
      } ]
    }
  },
  "filter_firewall" : {
    "rules" : [ ],
    "filters" : [ {
      "daddr" : "2331742347",
      "dest" : "80",
      "filter_name" : "dns",
      "destination_ip" : "11.12.12.12",
      "filter" : "Dns"
    }, {
      "daddr" : "2331742347",
      "dest" : "443",
      "filter_name" : "dns",
      "destination_ip" : "11.12.12.12",
      "filter" : "Dns"
    } ],
    "scrub_enabled" : 21104
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
 * List enabled traffic filter profiles available for createFilter
 * Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.
 *
 * returns ScrubIpFilterTypes
 **/
exports.getScrubIpFilterTypes = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "filters" : {
    "key" : {
      "name" : "name",
      "desc" : "desc"
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
 * List recurring and one-time invoices billed for this Scrub IP service
 * Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.
 *
 * id Integer ScrubIp ID number
 * returns ChargeInvoiceRows
 **/
exports.getScrubIpInvoices = function(id) {
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
 * Get last 50000 packet/event log entries for the protected IP
 * Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.
 *
 * id String Scrub Order ID
 * returns List
 **/
exports.getScrubIpLogs = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "date" : "date",
  "filter" : "filter",
  "target_port" : 0.8008281904610115,
  "protocol" : "protocol",
  "blocked_ip" : "blocked_ip",
  "target_ip" : "target_ip",
  "xdp_action" : "xdp_action",
  "byte_count" : 6.027456183070403
}, {
  "date" : "date",
  "filter" : "filter",
  "target_port" : 0.8008281904610115,
  "protocol" : "protocol",
  "blocked_ip" : "blocked_ip",
  "target_ip" : "target_ip",
  "xdp_action" : "xdp_action",
  "byte_count" : 6.027456183070403
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List all Scrub IP DDoS protection services on the authenticated account
 * Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.
 *
 * returns List
 **/
exports.getScrubIpsList = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "scrub_ip_id" : 0,
  "repeat_invoices_cost" : 6.027456183070403,
  "scrub_ip_status" : "scrub_ip_status",
  "services_name" : "services_name",
  "scrub_ip_ip" : "scrub_ip_ip"
}, {
  "scrub_ip_id" : 0,
  "repeat_invoices_cost" : 6.027456183070403,
  "scrub_ip_status" : "scrub_ip_status",
  "services_name" : "services_name",
  "scrub_ip_ip" : "scrub_ip_ip"
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Place a new Scrub IP DDoS protection order and generate an invoice
 * Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.
 *
 * body ScrubIpPlaceOrder 
 * returns inline_response_201_2
 **/
exports.placeScrubOrder = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "ScrubIp order is placed.",
  "order_details" : {
    "cj_params" : {
      "CURRENCY" : "USD",
      "ITEM1" : "scrub_ips904",
      "AMT1" : 5,
      "containerTagId" : 1684,
      "OID" : "scrub_ips12424",
      "TYPE" : 2242343242,
      "QTY1" : 1,
      "CID" : 2314
    },
    "total_cost" : 5,
    "service_id" : 12346,
    "invoice_id" : 2746273,
    "invoice_description" : "Scrub + Current Ip"
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
 * Validate a Scrub IP order and return effective pricing without billing
 * Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.
 *
 * body ScrubIpPlaceOrder 
 * returns inline_response_200_20
 **/
exports.putScrubIps = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "serviceType" : 0,
  "repeatServiceCost" : 5.962133916683182,
  "serviceCost" : 6.027456183070403,
  "continue" : true,
  "originalCost" : 1.4658129805029452,
  "errors" : [ "errors", "errors" ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Delete a geo firewall rule by rule_id from getScrubIpDetails
 * Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.
 *
 * body Delete Geo Firewall Rule 
 * id Integer ScrubIp ID number
 * returns inline_response_200_17
 **/
exports.scrubIpsDeleteGeoRule = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Firewall Rule has been deleted."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
 * Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.
 *
 * body Delete Firewall Rule 
 * id Integer ScrubIp ID number
 * returns inline_response_200_17
 **/
exports.scrubIpsDeleteRule = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Firewall Rule has been deleted."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

