'use strict';


/**
 * Order a new software license and create the recurring invoice
 * Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue=false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.  Sibling ops: `getNewLicense` (catalog), `putLicenses` (validate), `getLicenseInfo` (poll status), `getLicenseInvoices`, `getBillingInvoice` + `initiatePayment` (settle invoice), `licensesCancel`.
 *
 * body LicenseOrderRequest 
 * returns ServiceOrderPostResponse
 **/
exports.addLicense = function(body) {
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
 * Get full details for one license including status, IP, and links
 * Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.
 *
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns License
 **/
exports.getLicenseInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "serviceType" : {
    "services_id" : "5034",
    "services_category" : "508",
    "services_field1" : "16",
    "services_field2" : "",
    "services_name" : "KernelCare License",
    "services_type" : "508",
    "services_buyable" : "1",
    "services_cost" : "2.95",
    "services_module" : "licenses"
  },
  "serviceExtra" : [ "serviceExtra", "serviceExtra" ],
  "package" : "KernelCare License",
  "client_links" : [ {
    "link" : "invoices",
    "icon" : "fas fa-file-invoice-dollar fa-w-12",
    "other_attr" : "",
    "label" : "Invoices",
    "icon_text" : "",
    "help_text" : "Invoice History"
  }, {
    "link" : "invoices",
    "icon" : "fas fa-file-invoice-dollar fa-w-12",
    "other_attr" : "",
    "label" : "Invoices",
    "icon_text" : "",
    "help_text" : "Invoice History"
  } ],
  "billingDetails" : {
    "service_currency" : "USD",
    "service_extra" : [ "service_extra", "service_extra" ],
    "service_payment_status" : "Paid",
    "service_next_invoice_date" : "September 14, 2023",
    "service_frequency" : "Monthly",
    "service_coupon" : "ACOUPONFORLICENSES",
    "service_last_invoice_date" : "August 14, 2023",
    "service_currency_symbol" : "$",
    "service_extra_json" : "[\"\"]",
    "service_cost_info" : "0.00",
    "next_date" : "2023-09-14T09:39:46Z"
  },
  "serviceInfo" : {
    "license_order_date" : "2020-01-14T10:48:14Z",
    "license_hostname" : "",
    "license_extra" : "",
    "license_currency" : "USD",
    "license_id" : "386522",
    "license_type" : "5034",
    "license_coupon" : "1836",
    "license_custid" : "771282",
    "license_ip" : "1.2.3.4",
    "license_status" : "active",
    "license_invoice" : "18704419",
    "license_key" : ""
  },
  "extraInfoTables" : {
    "ip_info" : {
      "title" : "IP Information",
      "rows" : [ {
        "value" : "255.255.255.248",
        "desc" : "Netmask"
      }, {
        "value" : "255.255.255.248",
        "desc" : "Netmask"
      } ]
    }
  },
  "custCurrencySymbol" : "$",
  "service_overview_extra" : "service_overview_extra",
  "custCurrency" : "USD",
  "license_key" : ""
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List all billing invoices tied to one software license service
 * Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success=false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.
 *
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns ChargeInvoiceRows
 **/
exports.getLicenseInvoices = function(id) {
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
 * List all software licenses owned by the authenticated customer
 * Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer's account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.
 *
 * returns List
 **/
exports.getLicenseList = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "license_id" : "386111",
  "license_hostname" : "",
  "license_ip" : "66.45.228.100",
  "services_name" : "Imunify360 up to 30 users",
  "cost" : "25.00",
  "license_status" : "canceled",
  "invoices_paid" : "1",
  "invoices_date" : "2019-08-28T14:27:22.000Z"
}, {
  "license_id" : "386111",
  "license_hostname" : "",
  "license_ip" : "66.45.228.100",
  "services_name" : "Imunify360 up to 30 users",
  "cost" : "25.00",
  "license_status" : "canceled",
  "invoices_paid" : "1",
  "invoices_date" : "2019-08-28T14:27:22.000Z"
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Resend the license welcome email with the key and activation steps
 * Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.
 *
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns SuccessTextResponse
 **/
exports.getLicensesWelcomeEmail = function(id) {
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
 * Get available license types, packages, and pricing for ordering
 * Returns the catalog needed to build the license-order form: service categories (category_id->name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer's currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden=0, services_buyable=1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.
 *
 * returns LicensesOrder
 **/
exports.getNewLicense = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "packageCosts" : {
    "LicensesOrderPackageCosts11468" : 3.75
  },
  "serviceTypes" : {
    "LicensesOrderServiceTypes11482" : {
      "services_id" : "11482",
      "services_category" : "506",
      "services_field1" : "2704,Standard",
      "services_field2" : "Unlimited Accounts & Domains<br><br>The DirectAdmin standard license is best for medium to large shared-hosting and/or reseller-hosting companies. No limit on accounts or domains.",
      "services_name" : "DirectAdmin Standard",
      "services_type" : "506",
      "services_buyable" : "1",
      "services_cost" : "21.75",
      "services_module" : "licenses"
    }
  },
  "serviceCategories" : {
    "LicensesOrderServiceCategories509" : {
      "category_name" : "Webuzo",
      "category_id" : "509",
      "category_tag" : "webuzo",
      "category_module" : "licenses"
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
 * Cancel a license service and stop future billing (irreversible)
 * Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success=false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.
 *
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns inline_response_200_5
 **/
exports.licensesCancel = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "License is canceled."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Rebind a license to a new IP address (may incur a vendor fee)
 * Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status != active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.
 *
 * body IpObject 
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns SuccessTextResponse
 **/
exports.postLicenseChangeIp = function(body,id) {
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
 * Rebind a license to a new IP address (may incur a vendor fee)
 * Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status != active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.
 *
 * body IpObject 
 * id Integer The license service ID. Use `license_id` from `GET /licenses`.
 * returns SuccessTextResponse
 **/
exports.postLicenseChangeIp = function(body,id) {
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
 * Validate a software license order before placing it (dry run preview)
 * Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue=true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue=false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.
 *
 * body LicenseOrderRequest 
 * no response value expected for this operation
 **/
exports.putLicenses = function(body) {
  return new Promise(function(resolve, reject) {
    resolve();
  });
}


/**
 * Update mutable fields on a license service (e.g. assigned IP)
 * Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).
 *
 * id String The license service ID. Use `license_id` from `GET /licenses`.
 * returns SuccessTextResponse
 **/
exports.updateLicenseInfo = function(id) {
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

