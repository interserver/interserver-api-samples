'use strict';


/**
 * Place a custom dedicated server order, creating a real billable invoice
 * Submits a fully custom dedicated server order. Creates a `pending` `servers` row, a `Repeat_Invoice`, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): `cpu` (id from `cpu_li`), `hd[]` (array of drive ids), `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid` (ids from `getNewServer`), `region` (region_id), `servername` (valid hostname), `rootpass`, `tos` (must be true), optional `comment`. `account.server_order_discount` (if set) applies. Returns: `{ text:'Order Completed', invoice, order }`. Errors: 422 'Missing/Invalid <field>'; 401 unauth. Sibling ops: `getNewServer` (options), `placeBuyNowServer` (pre-built path), `getServerInfo` (view new order), `getServerInvoices`.
 *
 * body ServerOrderPostRequest 
 * returns inline_response_200_21
 **/
exports.addServer = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Order Completed",
  "invoice" : 0,
  "order" : 6
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get configurable options for a Rapid Deploy / coupon dedicated server
 * Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (`a=<asset_id>`) or a coupon (`c=<coupon_name>`) so the order form can be rendered before `placeBuyNowServer`. Read-only; no charge. Sibling ops: `placeBuyNowServer` (commit), `getMPServers` (browse marketplace), `addServer` (custom build flow).  **Query (one required):** - `a` (integer) — asset_id from `getMPServers`. - `c` (string) — `server_coupons.name`.  **Returns:** `{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }`. Each option row is `{ id, short_desc, long_desc, monthly_price }` — feed those ids into `placeBuyNowServer`.  **Auth:** Session/API key.  **Errors:** - `400` — `'No Server Coupon or Market-Place Asset Specified'` when neither `a` nor `c` is passed. - `400` — `'Invalid Asset ID'` / `'No Server Coupon with that name'`. - `409` — `'Server already sold!'` (asset already in-cart) or `'Server Out of stock'` (coupon). - `401` — unauthenticated.  **Related calls:** - **Next:** `placeBuyNowServer` (commit the order). - **Browse:** `getMPServers`. - **Custom build alternative:** `addServer`. 
 *
 * returns inline_response_200_29
 **/
exports.buyItNowServerOrder = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "os" : [ {
    "monthly_price" : "0",
    "id" : "5",
    "short_desc" : "FreeBSD",
    "long_desc" : "Latest FreeBSD 6.x OS<br><pre>CP(s): cPanel/DirectAdmin</pre>"
  }, {
    "monthly_price" : "0",
    "id" : "5",
    "short_desc" : "FreeBSD",
    "long_desc" : "Latest FreeBSD 6.x OS<br><pre>CP(s): cPanel/DirectAdmin</pre>"
  } ],
  "bandwidth" : [ {
    "monthly_price" : "0",
    "id" : "10",
    "short_desc" : "1GBPS Unmetered",
    "long_desc" : ""
  }, {
    "monthly_price" : "0",
    "id" : "10",
    "short_desc" : "1GBPS Unmetered",
    "long_desc" : ""
  } ],
  "ips" : [ {
    "monthly_price" : "0",
    "id" : "9",
    "short_desc" : "1 Vlan Ip (/30)",
    "long_desc" : "1 IP In personal Vlan"
  }, {
    "monthly_price" : "0",
    "id" : "9",
    "short_desc" : "1 Vlan Ip (/30)",
    "long_desc" : "1 IP In personal Vlan"
  } ],
  "cp" : [ {
    "monthly_price" : "0",
    "os_type" : "",
    "id" : "1",
    "short_desc" : "None",
    "long_desc" : ""
  }, {
    "monthly_price" : "0",
    "os_type" : "",
    "id" : "1",
    "short_desc" : "None",
    "long_desc" : ""
  } ],
  "raid" : [ {
    "monthly_price" : "0",
    "id" : "0",
    "short_desc" : "No Raid",
    "long_desc" : "No Raid"
  }, {
    "monthly_price" : "0",
    "id" : "0",
    "short_desc" : "No Raid",
    "long_desc" : "No Raid"
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
 * List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
 * Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).
 *
 * returns BuyItNowList
 **/
exports.getMPServers = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "disk" : {
    "key" : "disk"
  },
  "memory" : "64GB",
  "bandwidth" : "1Gbps Unmetered",
  "price" : 64,
  "cpu" : [ "", "" ],
  "location" : "NYC Region",
  "server_id" : "11432",
  "ips" : "1 Vlan Ip (/30)"
}, {
  "disk" : {
    "key" : "disk"
  },
  "memory" : "64GB",
  "bandwidth" : "1Gbps Unmetered",
  "price" : 64,
  "cpu" : [ "", "" ],
  "location" : "NYC Region",
  "server_id" : "11432",
  "ips" : "1 Vlan Ip (/30)"
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Get custom dedicated server ordering options, regions, and pricing
 * Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with `config_li` keyed by category (`cpu_li`, `hd_li`, `memory_li`, `bandwidth_li`, `ips_li`, `os_li`, `cp_li`, `raid_li`) plus `regions`. Use returned IDs as POST values for `addServer`. Note `hd_li` and `memory_li` are nested by `cpu` id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: `addServer` (commits the order), `buyItNowServerOrder` (pre-built marketplace alternative), `getMPServers` (browse marketplace).
 *
 * returns ServerOrder
 **/
exports.getNewServer = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "memory_li" : {
    "254" : {
      "65" : {
        "drive_type" : "lff",
        "monthly_price" : 50,
        "img" : "hd.jpg",
        "size" : "3000",
        "hidden" : "0",
        "price" : "0",
        "manu" : "manu",
        "monthly_price_display" : "$50.00",
        "id" : "65",
        "short_desc" : "20TB SATA",
        "type" : "type",
        "long_desc" : "long_desc"
      }
    }
  },
  "raid_li" : [ {
    "monthly_price" : 50,
    "img" : "raid.png",
    "price" : 50,
    "monthly_price_display" : "$50.00",
    "active" : "1",
    "id" : "7",
    "short_desc" : "Hardware Raid 5",
    "price_display" : "$50.00",
    "long_desc" : "Hardware Raid 5"
  }, {
    "monthly_price" : 50,
    "img" : "raid.png",
    "price" : 50,
    "monthly_price_display" : "$50.00",
    "active" : "1",
    "id" : "7",
    "short_desc" : "Hardware Raid 5",
    "price_display" : "$50.00",
    "long_desc" : "Hardware Raid 5"
  } ],
  "cpu_li" : {
    "254" : {
      "num_cpus" : "1",
      "img" : "ryzen.png",
      "max_lff" : "4",
      "type" : "AMD",
      "max_sff" : "4",
      "speed" : "4.7",
      "hd_ids" : "hd_ids",
      "price" : 0,
      "max_ram" : "128",
      "max_nve" : "2",
      "monthly_price_display" : "$75.00",
      "id" : "254",
      "price_display" : "$0.00",
      "min_ram" : "128",
      "monthly_price" : 75,
      "cache" : "cache",
      "visible" : "yes",
      "num_cores" : "12",
      "manu" : "manu",
      "active" : "1",
      "benchmark" : "121148",
      "long_desc" : "High core and thread count...",
      "fsb" : "fsb",
      "location" : "New York",
      "short_desc" : "AMD RYZEN 7900X"
    }
  },
  "field_label" : {
    "memory" : "",
    "os" : "",
    "bandwidth" : "",
    "hd" : "",
    "ips" : "",
    "cp" : "",
    "raid" : ""
  },
  "cp_li" : {
    "9" : {
      "monthly_price" : 0,
      "img" : "cpanel.gif",
      "types" : [ "1", "2", "4", "5", "8", "17", "23", "30", "51" ],
      "price" : 80,
      "os_type" : "os_type",
      "monthly_price_display" : "$0.00",
      "id" : "9",
      "short_desc" : "cPanel ($45+)",
      "price_display" : "$80.00",
      "long_desc" : "long_desc"
    }
  },
  "cpu" : 184,
  "os_li" : {
    "51" : {
      "monthly_price" : 0,
      "img" : "img",
      "price" : 0,
      "monthly_price_display" : "$0.00",
      "active" : "1",
      "id" : "51",
      "short_desc" : "AlmaLinux",
      "price_display" : "$0.00",
      "long_desc" : "long_desc"
    }
  },
  "form_values" : {
    "memory" : 22,
    "os" : "5",
    "bandwidth" : "3",
    "hd" : "16",
    "ips" : "9",
    "cp" : 5,
    "raid" : "0"
  },
  "ips_li" : {
    "9" : {
      "monthly_price" : 0,
      "img" : "ips.jpg",
      "price" : 0,
      "qty" : "1",
      "monthly_price_display" : "$0.00",
      "id" : "9",
      "short_desc" : "1 Vlan Ip (/30)",
      "price_display" : "$0.00",
      "long_desc" : "1 IP In personal Vlan"
    }
  },
  "bandwidth_li" : {
    "15" : {
      "monthly_price" : 15,
      "img" : "bandwidth.jpg",
      "price" : 0,
      "qty" : "4000",
      "monthly_price_display" : "$15.00",
      "active" : "1",
      "id" : "15",
      "short_desc" : "150TB (10Gb Port)",
      "price_display" : "$0.00",
      "type" : "Standard",
      "long_desc" : " - 2000GB Bandwidth..."
    }
  },
  "config_ids" : {
    "memory" : 22,
    "os" : "5",
    "bandwidth" : "3",
    "hd" : "16",
    "ips" : "9",
    "cp" : 5,
    "raid" : "0"
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
 * Get full hardware, network, and lifecycle details for a dedicated server
 * Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: `id` (integer server_id, from `getServerList`). No body. Returns: `ViewServer::getDetails()` shape: `serviceInfo`, `networkInfo` (vlans + assets, with `ipmi_admin_username`/`ipmi_admin_password` and admin lease creds REDACTED for client safety), normalized `client_links`, `serviceType`. `admin_links`/raw `settings`/`csrf` stripped. Errors: 404 not owned; 401 unauth. Sibling ops: `getServerInvoices`, `serverIpmiLiveGet`, `serverIpmiPowerGet` (single — prefer `serverBulkIpmiPowerGet` for many), `getServerReverseDns`, `getServersWelcomeEmail`, `serversCancel`.
 *
 * id Integer Server ID number.
 * returns Server
 **/
exports.getServerInfo = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "serviceExtra" : [ "serviceExtra", "serviceExtra" ],
  "package" : "package",
  "networkInfo" : {
    "vlans" : [ ],
    "assets" : {
      "3497" : {
        "col" : "06",
        "vlans" : [ ],
        "ipmi_client_password" : "ipmi_client_password",
        "switchports" : [ 10414 ],
        "description" : "",
        "external_id" : "",
        "asset_id" : "1",
        "ipmi_admin_username" : "ipmi_admin_username",
        "ipmi_working" : "0",
        "mac" : "mac",
        "hostname" : "myserver.host.com",
        "primary_ipv4" : "1.2.3.250",
        "overdue" : "0",
        "create_timestamp" : "create_timestamp",
        "update_timestamp" : "update_timestamp",
        "asset_name" : "server",
        "primary_ipv6" : "",
        "unit_sub" : "0",
        "ipmi_mac" : "0c:c4:7a:af:35:00",
        "billing_status" : "active",
        "company" : "int",
        "model" : "SYS-6018R-TDW",
        "id" : 3497,
        "row" : "017",
        "rack_y" : "5",
        "ipmi_ip" : "10.8.69.7",
        "make" : "Supermicro",
        "rack_location" : "2",
        "rack_x" : "25",
        "asset_tag" : "",
        "rack" : "68",
        "comments" : "",
        "type_id" : "1",
        "ipmi_updated" : "ipmi_updated",
        "ipmi_admin_password" : "ipmi_admin_password",
        "datacenter" : "2",
        "unit_start" : "37",
        "rack_name" : "112.16",
        "rack_id" : "68",
        "rack_size" : "44",
        "unit_end" : "37",
        "comment" : "comment",
        "lease" : {
          "authenticated" : false,
          "mac" : "0c:c4:7a:af:35:00",
          "group" : "1"
        },
        "customer_id" : "int5377",
        "order_id" : "16058",
        "vlans6" : [ ],
        "ipmi_client_username" : "ipmi_client_username",
        "status" : "active"
      }
    },
    "switchports" : {
      "10414" : {
        "vlans" : [ ],
        "switchport_id" : 10414,
        "port" : "Ethernet1/33",
        "justport" : "33",
        "switch_id" : "118",
        "asset_id" : 3497,
        "graph_id" : "12622",
        "vlans6" : [ ],
        "switch" : "edge1",
        "blade" : "Ethernet1"
      }
    },
    "vlans6" : [ ]
  },
  "client_links" : [ {
    "link" : "link",
    "icon" : "icon",
    "label" : "label",
    "icon_text" : "icon_text",
    "help_text" : "help_text"
  }, {
    "link" : "link",
    "icon" : "icon",
    "label" : "label",
    "icon_text" : "icon_text",
    "help_text" : "help_text"
  } ],
  "billingDetails" : {
    "service_currency" : "service_currency",
    "service_extra" : [ "service_extra", "service_extra" ],
    "service_payment_status" : "service_payment_status",
    "service_next_invoice_date" : "service_next_invoice_date",
    "service_frequency" : "service_frequency",
    "service_last_invoice_date" : "service_last_invoice_date",
    "service_currency_symbol" : "service_currency_symbol",
    "service_extra_json" : "service_extra_json",
    "service_cost_info" : "service_cost_info",
    "next_date" : "next_date"
  },
  "ipmiAuth" : true,
  "extraInfoTables" : {
    "assets" : {
      "title" : "Assets",
      "size" : 2,
      "type" : "table",
      "header" : [ "Id", "Hostname", "Description", "Location Name", "Rack Name", "Status", "Primary Ipv4", "Comments" ],
      "rows" : [ [ "3497", "myserver.host.com", "CPU:..............2x Intel Xeon E5-2620v4 @2.10GHz\r\nMemory:...........128GB DDR3 1600MHz\r\nHard Drive 1:.....Crucial 500 GB SSD\r\nHard Drive 2:.....Crucial 500 GB SSD\r\nRAID:.............none\r\nOS:...............Ubuntu 20\r\nControl Panel:....none\r\nNetwork...........10G Card\r\nIP(s):............Vlan 3497\r\nBandwidth:........10Tb @ 10gb port", "TEB2", "112.16", "active", "1.2.3.250", "" ] ]
    }
  },
  "serviceInfo" : {
    "server_total_cost" : "230",
    "server_location" : "server_location",
    "server_invoice" : "18738142",
    "server_setup" : "0",
    "server_dedicated_cpu" : "38",
    "server_status" : "active",
    "server_rep" : "0",
    "server_hardware_ordered" : "0",
    "server_dedicated_tag" : "0",
    "server_discount" : "server_discount",
    "server_root" : "",
    "server_custid" : "771282",
    "server_welcome_email" : "1",
    "server_extra" : "[]",
    "server_ips" : "0",
    "server_dedicated_bandwidth" : "3",
    "server_currency" : "USD",
    "server_comment" : "",
    "server_initial_bill" : "0",
    "server_dedicated_memory" : "22",
    "server_date" : "1588972956",
    "server_id" : "16058",
    "server_billed" : "0",
    "server_hostname" : "myserver.host.com",
    "server_dedicated_hd2" : "server_dedicated_hd2",
    "server_dedicated_hd1" : "20",
    "server_dedicated_cp" : "server_dedicated_cp",
    "server_dedicated_raid" : "0",
    "server_dedicated_ips" : "5",
    "server_hardware" : "0",
    "server_monthly_bill" : "0",
    "server_custom_tag" : "",
    "server_order_date" : "2020-05-08T17:22:36.000Z",
    "server_coupon" : "0",
    "server_type" : "600",
    "server_dedicated_os" : "30"
  },
  "custCurrencySymbol" : "custCurrencySymbol",
  "locations" : {
    "1" : {
      "location_long" : "location_long",
      "location_name" : "location_name",
      "location_ipmi_group" : 6,
      "location_description" : "location_description",
      "location_id" : 0,
      "location_lat" : "location_lat"
    }
  },
  "custCurrency" : "custCurrency"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List billing invoices (charges + payments) tied to one dedicated server
 * Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: `id` (integer server_id from `getServerList`). No body. Inherits from `MyAdmin\\Api\\Billing\\InvoicesList` with module=servers. Returns: `ChargeInvoiceRows` array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if `id` not owned by the caller; 401 unauth. Sibling ops: `getServerInfo` (current service state), `serversCancel` (cancel), `getBillingInvoice` (single invoice by invoice id), `getVpsInvoices`/`getDomainInvoices` for other modules, `getServersWelcomeEmail` to resend setup info.
 *
 * id Integer Server ID number
 * returns ChargeInvoiceRows
 **/
exports.getServerInvoices = function(id) {
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
 * List all dedicated servers owned by the authenticated customer
 * Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters `servers` by session `account_id`. Returns: array of `{ server_id, account_lid, server_hostname, server_status }`. Use `server_id` with `getServerInfo` for full hardware/network/IPMI details, `getServerInvoices` for billing, or `serverIpmiPowerGet` for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: `getServerInfo` (details), `getVpsList` (virtual instead of physical hardware), `getMPServers` (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer `serverBulkIpmiPowerGet`.
 *
 * returns List
 **/
exports.getServerList = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = [ {
  "server_id" : "8404",
  "account_lid" : "detain@interserver.net",
  "server_hostname" : "testsignup.is.net",
  "server_status" : "deleted"
}, {
  "server_id" : "8404",
  "account_lid" : "detain@interserver.net",
  "server_hostname" : "testsignup.is.net",
  "server_status" : "deleted"
} ];
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * List current reverse-DNS (PTR) records for a dedicated server's IPs
 * Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server's VLANs — typically before calling `postServerReverseDns` to update them. Path param: `id` (integer server_id). No body. Walks `networkInfo.vlans`, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via `get_hostname()`. Returns: `{ ips: { '<ipv4>': '<ptr_or_empty_string>', ... } }`. Empty string indicates no PTR set. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: `postServerReverseDns` (update PTRs), `getServerInfo` (full network), `getVpsReverseDns` for VPS, `getDomainNameservers` / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.
 *
 * id Integer Server ID number
 * returns ReverseDnsEntries
 **/
exports.getServerReverseDns = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "ips" : {
    "1.2.3.4" : "yourhost.com",
    "1.2.3.5" : "anotherhost.com"
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
 * Resend the dedicated server welcome email with setup credentials
 * Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: `id` (integer server_id, must be `active`). No body. Invokes `server_welcome_email($id)` which re-sends the welcome message to the account's email. Returns: `{ text:'Welcome Email has been resent.' }`. Errors: 404 if `id` not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: `getServerInfo` (status check), `getServerInvoices`, `getVpsWelcomeEmail` for VPS, `getDomainsWelcomeEmail` for domains.
 *
 * id Integer Server ID number
 * returns SuccessTextResponse
 **/
exports.getServersWelcomeEmail = function(id) {
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
 * Place a Rapid Deploy / coupon dedicated server order; creates real invoice
 * Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the `servers` row, creates a `Repeat_Invoice` plus the first `invoices` row, marks the asset `MarketPlace-Incart` (or decrements `server_coupons.in_stock`), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: `buyItNowServerOrder` (catalog), `getServerInfo` (poll provisioning), `getServerInvoices` (billing), `addServer` (custom build alternative).  **Query (one required, same as `buyItNowServerOrder`):** - `a` (integer) — asset_id. - `c` (string) — `server_coupons.name`.  **Body fields:** - `hostname` (string, required) — valid FQDN; validated by `valid_hostname`. - `enablepassword` (boolean, optional, default `false`) — when true the client must supply `rootPassword`; otherwise a secure password is generated server-side via `generate_password()`. - `rootPassword` (string, required when `enablepassword=true`) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (`valid_password`). - `os`, `bandwidth`, `ips`, `cp`, `raid` (integer, optional) — option ids from `buyItNowServerOrder`; defaults `30` / `10` / `9` / `1` / `0` applied when missing. - `comments` (string, optional) — appended to the order comment.  **Returns:** `201 { success: true, text: 'Server order is placed.', service_id, invoice_id }`.  **Auth:** Session/API key.  **Errors:** - `400` — `'Server Hostname is missing.'` / `'Invalid Hostname!'` / `'Server Password is missing.'` / password complexity message. - `409` — `'Server already sold!'` / `'Server Out of stock.'` - `401` — unauthenticated.  **Side effects:** inserts `servers` row, creates `repeat_invoices` + `invoices` rows, updates `assets.status` or `server_coupons.in_stock`, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** `buyItNowServerOrder`. - **Next:** `getBillingInvoice` + `initiatePayment` to pay, then poll `getServerInfo` for provisioning state. - **Custom build alternative:** `addServer`. 
 *
 * body Order_buy_now_server_body  (optional)
 * returns ServersBuyNowResponse
 **/
exports.placeBuyNowServer = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Server order is placed.",
  "order_details" : {
    "service_id" : 1234,
    "invoice_id" : 2342355
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
 * Update reverse-DNS (PTR) hostnames on a dedicated server's IPs
 * Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.
 *
 * body ReverseDnsEntries 
 * id Integer Server ID number
 * returns TextResponse
 **/
exports.postServerReverseDns = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Update reverse-DNS (PTR) hostnames on a dedicated server's IPs
 * Use to set or remove PTR records for the server's public IPs. Path param: `id` (server_id). Body: `ips` (object mapping `'<ipv4>'` to desired hostname; empty string removes the PTR). Only IPs that already exist on the server's VLANs and whose hostname differs from current are updated; each diff calls `reverse_dns($ip, $host, 'set_reverse'|'remove_reverse')`. Returns: `{ message, success:bool }`. `success:false` with 'No valid IPs were passed or there were no changes' when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: `getServerReverseDns` (read first), `getServerInfo`, VPS counterpart `postVpsReverseDns`.
 *
 * body ReverseDnsEntries 
 * id Integer Server ID number
 * returns TextResponse
 **/
exports.postServerReverseDns = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Read IPMI chassis power status for many dedicated servers in one call
 * Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: `ids` (required) — comma-separated string `?ids=2313,2314,2315` OR repeated `ids[]` array. Duplicates de-duped; non-positive ints become per-row errors. Returns: `{ results: [ { id, asset?, text|error } ] }`. Errors: 400 'No server IDs provided.' if `ids` empty/missing; 401 unauth. Sibling ops: `serverIpmiPowerGet` (single-server equivalent), `serverIpmiPowerPost` (DESTRUCTIVE — change power; no bulk equivalent — call per server), `getServerList` (discover ids).
 *
 * ids String Comma-separated list of Server IDs to query (e.g. `2313,2314,2315`). May also be passed as repeated `ids[]` query parameters.
 * returns ServerBulkIpmiPowerResponse
 **/
exports.serverBulkIpmiPowerGet = function(ids) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "id" : 2313,
    "asset" : 5432,
    "text" : "Chassis Power is on"
  }, {
    "id" : 2314,
    "error" : "Service is not active"
  }, {
    "id" : 2315,
    "error" : "Invalid Service Passed"
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
 * Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
 * Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset's IPMI IP, the location's IPMI group, and any active `ipmi_ips` lease (3-hour TTL). Sibling ops: `serverIpmiLivePost` (allocate whitelist slot), `serverIpmiPowerGet` / `serverIpmiPowerPost` (chassis power).  **Path:** `id` (integer, required) — server_id from `getServerList`.  **Body / query:** None. Optionally pass `asset` (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists `{ text (html), public_ip, allowed_ip, client_username, client_password }`. When no lease yet: `{ text: 'Setup not yet completed' }` — then call `serverIpmiLivePost` to allocate a slot.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'` when the asset/location is not configured for IPMI Live.  **Caveat:** returns `client_password` — never log/echo verbatim.  **Related calls:** - **Allocate:** `serverIpmiLivePost`. - **Chassis power:** `serverIpmiPowerGet`, `serverIpmiPowerPost`. 
 *
 * id Integer Server ID number
 * returns ServerIpmiLiveInfo
 **/
exports.serverIpmiLiveGet = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Setup Complete",
  "public_ip" : "1.2.3.4",
  "allowed_ip" : "1.2.3.4",
  "client_username" : "user",
  "client_password" : "pass"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
 * Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 
 *
 * body ServerIpmiLiveRequest 
 * id Integer Server ID number
 * returns ServerIpmiLiveInfo
 **/
exports.serverIpmiLivePost = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Setup Complete",
  "public_ip" : "1.2.3.4",
  "allowed_ip" : "1.2.3.4",
  "client_username" : "user",
  "client_password" : "pass"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
 * Allocates / refreshes an IPMI Live whitelist slot so the customer's specified IP can reach the BMC's KVM/console for 3 hours. Picks a free `ipmi_ips` row for the location's `ipmi_group`, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via `ipmi_live_setup()`. Sibling ops: `serverIpmiLiveGet` (read current lease), `serverIpmiPowerPost` (DESTRUCTIVE — chassis power).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `ip` (string, required) — public IPv4 to whitelist. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text (html), public_ip, allowed_ip, client_username, client_password }` for KVM login.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'An Invalid IP was passed.'`, `'No Live IPs are currently free for use with the IPMI Gateway. Please wait <duration> for the next IP to free up.'`, `'There was an error communicating with the IPMI Management server'`, `'No IPMI IP Set'` / `'Invalid IPMI IP'` / `'Live IPMI not Available for this location.'`.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** `serverIpmiLiveGet`. - **Power control:** `serverIpmiPowerPost`. 
 *
 * body ServerIpmiLiveRequest 
 * id Integer Server ID number
 * returns ServerIpmiLiveInfo
 **/
exports.serverIpmiLivePost = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "Setup Complete",
  "public_ip" : "1.2.3.4",
  "allowed_ip" : "1.2.3.4",
  "client_username" : "user",
  "client_password" : "pass"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Read IPMI chassis power status for a dedicated server (single)
 * Use to check whether a server's chassis is currently `on`/`off` via IPMI before issuing a power action. Path param: `id` (integer server_id). Optional body `asset` (asset_id — defaults to first asset). Issues `ipmitool power status` against the asset's `ipmi_ip` using its location IPMI group/credentials. Returns: `{ text:'Chassis Power is on' }` (or 'off'). Errors: 404 if `id` not owned by caller; 409 if service not active; 'There was an error sending the IPMI command' if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: `serverBulkIpmiPowerGet` (preferred when polling many servers — single round-trip), `serverIpmiPowerPost` (DESTRUCTIVE — change power), `getServerInfo` (full state), `serverIpmiLiveGet` (IPMI Live KVM).
 *
 * id Integer Server ID number
 * returns TextResponse
 **/
exports.serverIpmiPowerGet = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * DESTRUCTIVE — change chassis power state on a bare-metal server
 * Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 
 *
 * body ServerIpmiPowerRequest 
 * id Integer Server ID number
 * returns TextResponse
 **/
exports.serverIpmiPowerPost = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * DESTRUCTIVE — change chassis power state on a bare-metal server
 * Sends an IPMI chassis power command (`on`, `off`, `cycle`, `reset`, `soft`) to a customer's physical dedicated server. **DESTRUCTIVE on running hardware:** `off` / `cycle` / `reset` are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. `soft` requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: `serverIpmiPowerGet` (read first), `serverBulkIpmiPowerGet` (status only), `serverIpmiLivePost` (KVM access).  **Path:** `id` (integer, required) — server_id.  **Body fields:** - `action` (string, required) — one of `on` / `off` / `cycle` / `reset` / `soft`. - `asset` (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** `{ text: 'Power command sent. Response: <ipmi output>' }`.  **Auth:** Session/API key. Ownership enforced via `server_custid`.  **Errors:** - `422` / inline error text — `Invalid Action` when `action` is not in the allowed set. - `404` — `id` not owned, or `asset` not on this server. - `409` — service not `active`. - `200` with error text — `'There was an error sending the IPMI command.'` when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** `serverIpmiPowerGet`, `serverBulkIpmiPowerGet`. - **KVM console:** `serverIpmiLivePost`. 
 *
 * body ServerIpmiPowerRequest 
 * id Integer Server ID number
 * returns TextResponse
 **/
exports.serverIpmiPowerPost = function(body,id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "text" : "You were successfull."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Cancel a dedicated server service at the end of the current billing cycle
 * Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: `id` (integer server_id, from `getServerList`). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: `{ success:bool, text:'Servers is canceled.' }`. Errors: 404 if `id` not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: `getServerInfo` (current status), `getServerInvoices` (outstanding charges), VPS counterpart `VPSCancel`. To re-order after cancel use `addServer` or `placeBuyNowServer`.
 *
 * id Integer Server ID number
 * returns inline_response_200_22
 **/
exports.serversCancel = function(id) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "success" : true,
  "text" : "Servers is canceled."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Update settings on a dedicated server order (shares handler with view)
 * Use to modify metadata on an existing dedicated server order. Path param: `id` (integer server_id). Currently this method shares the same handler as `getServerInfo` (`View::go()`) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as `getServerInfo`. Errors: 404 if `id` not owned by caller; 401 unauth. Sibling ops: prefer `postServerReverseDns` (rDNS), `serverIpmiPowerPost` (power), `serverIpmiLivePost` (IPMI access), `serversCancel` (cancel). For new orders use `addServer` or `placeBuyNowServer`. View-only: `getServerInfo`.
 *
 * id String Server ID number.
 * returns SuccessTextResponse
 **/
exports.updateServerInfo = function(id) {
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

