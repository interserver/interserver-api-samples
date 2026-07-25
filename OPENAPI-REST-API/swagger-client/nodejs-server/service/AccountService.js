'use strict';


/**
 * Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
 * DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.
 *
 * name String 
 * returns SuccessTextResponse
 **/
exports.deleteAccountOauthName = function(name) {
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
 * Disable two-factor authentication and remove the TOTP secret
 * DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.
 *
 * returns SuccessTextResponse
 **/
exports.deleteAccountTfa = function() {
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
 * Remove one IP range from the account allow-list (PATCH on /account/iplimits)
 * DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.
 *
 * body IpLimitRange  (optional)
 * returns GenericResponse
 **/
exports.deleteIpLimit = function(body) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "status" : "ok",
  "text" : "The command completed successfully."
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Read full account profile, billing address, and security settings
 * Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.
 *
 * returns AccountInfo
 **/
exports.getAccountInfo = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "custid" : "98651",
  "ima" : "client",
  "data" : {
    "group" : "0",
    "address" : "112 Uber St.",
    "city" : "Townsville",
    "country" : "US",
    "disable_cc" : "0",
    "fraudrecord_score" : "0",
    "ima" : "client",
    "name" : "John Doe",
    "payment_method" : "paypal",
    "phone" : "8675309",
    "pin" : "000000",
    "state" : "PA",
    "status" : "active",
    "zip" : "11111",
    "account_id" : "98651",
    "account_lid" : "user@domain.com",
    "address2" : "",
    "affiliate_dock_description" : "Use this coupon when placing an order to get the first month of hosting for only 1 penny.",
    "affiliate_dock_title" : "Exclusive offer to viewers",
    "affiliate_payment_method" : "paypal",
    "affiliate_paypal" : "user@domain.com",
    "cc" : "************1111",
    "cc_auto" : "0",
    "cc_exp" : "05/2019",
    "cc_type" : "visa",
    "cc_whitelist" : "1",
    "ccs" : {
      "1" : {
        "cc" : "************1111",
        "cc_exp" : "05/2019",
        "name" : "John Doe",
        "country" : "US",
        "verified" : true
      },
      "5" : {
        "cc" : "************2222",
        "cc_exp" : "05/2019",
        "name" : "John Doe",
        "address" : "123 Uber St",
        "city" : "Townsville",
        "state" : "PA",
        "zip" : "11122",
        "country" : "US",
        "maxmind_riskscore" : "0.25",
        "maxmind" : {
          "distance" : "0",
          "countryMatch" : "Yes",
          "countryCode" : "US",
          "freeMail" : "No",
          "anonymousProxy" : "No",
          "binMatch" : "No",
          "binCountry" : "IN",
          "err" : "",
          "proxyScore" : "0.00",
          "ip_region" : "PA",
          "ip_city" : "Townsville",
          "ip_latitude" : "40.175",
          "ip_longitude" : "-76.1817",
          "binName" : "state bank of india",
          "ip_isp" : "PenTeleData",
          "ip_org" : "PenTeleData",
          "binNameMatch" : "NA",
          "binPhoneMatch" : "NA",
          "binPhone" : "",
          "custPhoneInBillingLoc" : "NotFound",
          "highRiskCountry" : "No",
          "queriesRemaining" : "2764",
          "cityPostalMatch" : "Yes",
          "shipCityPostalMatch" : "",
          "maxmindID" : "7IVXKOVV",
          "ip_asnum" : "AS3737 AS-PTD",
          "ip_userType" : "residential",
          "ip_countryConf" : "99",
          "ip_regionConf" : "99",
          "ip_cityConf" : "30",
          "ip_postalCode" : "11122",
          "ip_postalConf" : "30",
          "ip_accuracyRadius" : "20",
          "ip_netSpeedCell" : "Cable/DSL",
          "ip_metroCode" : "566",
          "ip_areaCode" : "",
          "ip_timeZone" : "America/New_York",
          "ip_regionName" : "Pennsylvania",
          "ip_domain" : "ptd.net",
          "ip_countryName" : "United States",
          "ip_continentCode" : "NA",
          "ip_corporateProxy" : "No",
          "isTransProxy" : "No",
          "carderEmail" : "No",
          "highRiskUsername" : "No",
          "highRiskPassword" : "No",
          "riskScore" : 0.25,
          "prepaid" : "No",
          "minfraud_version" : "1.3",
          "service_level" : "premium",
          "female_name" : "no"
        },
        "verified" : true
      },
      "6" : {
        "cc" : "************1111",
        "cc_exp" : "05/2021",
        "name" : "John Doe",
        "city" : "Townsville",
        "state" : "PA",
        "zip" : "11122",
        "country" : "US",
        "maxmind_riskscore" : "0.48",
        "maxmind" : {
          "distance" : "0",
          "countryMatch" : "Yes",
          "countryCode" : "US",
          "freeMail" : "No",
          "anonymousProxy" : "No",
          "binMatch" : "Yes",
          "binCountry" : "US",
          "err" : "",
          "proxyScore" : "0.00",
          "ip_region" : "PA",
          "ip_city" : "Townsville",
          "ip_latitude" : "40.175",
          "ip_longitude" : "-76.1817",
          "binName" : "Bank of No Hope",
          "ip_isp" : "PenTeleData",
          "ip_org" : "PenTeleData",
          "binNameMatch" : "NA",
          "binPhoneMatch" : "NA",
          "binPhone" : "1234561234",
          "custPhoneInBillingLoc" : "NotFound",
          "highRiskCountry" : "No",
          "queriesRemaining" : "2765",
          "cityPostalMatch" : "Yes",
          "shipCityPostalMatch" : "",
          "maxmindID" : "AAAAAZZZZZ",
          "ip_asnum" : "AS3737 AS-PTD",
          "ip_userType" : "residential",
          "ip_countryConf" : "99",
          "ip_regionConf" : "99",
          "ip_cityConf" : "30",
          "ip_postalCode" : "11122",
          "ip_postalConf" : "30",
          "ip_accuracyRadius" : "20",
          "ip_netSpeedCell" : "Cable/DSL",
          "ip_metroCode" : "566",
          "ip_areaCode" : "",
          "ip_timeZone" : "America/New_York",
          "ip_regionName" : "Pennsylvania",
          "ip_domain" : "ptd.net",
          "ip_countryName" : "United States",
          "ip_continentCode" : "NA",
          "ip_corporateProxy" : "No",
          "isTransProxy" : "No",
          "carderEmail" : "No",
          "highRiskUsername" : "No",
          "highRiskPassword" : "No",
          "riskScore" : 0.48,
          "prepaid" : "No",
          "minfraud_version" : "1.3",
          "service_level" : "premium",
          "female_name" : "no"
        },
        "verified" : true
      }
    },
    "ccs_added" : "14",
    "company" : "InterServer, Inc.",
    "currency" : "USD",
    "disable_reinstall" : "0",
    "disable_reset" : "0",
    "email" : "user@domain.com",
    "email_abuse" : "",
    "email_settings" : {
      "admin/cc_bad_response" : "1",
      "admin/mass_communications.tpl" : "1"
    },
    "extra" : {
      "private_whois" : "0"
    },
    "facebook_id" : "111111111111111",
    "facebook_url" : "https://www.facebook.com/111111111111111",
    "firstname" : "John",
    "fraudrecord" : {
      "score" : "0",
      "count" : "0",
      "reliability" : "0.0",
      "code" : "zxcvzxcvzxcv"
    },
    "github_id" : "2222222",
    "github_url" : "https://github.com/user",
    "google_id" : "355431342512341234",
    "google_url" : "https://plus.google.com/+JohnDoe",
    "innertell_id" : "2222222",
    "lastname" : "Doe",
    "locale" : "auto",
    "maxmind" : {
      "distance" : "6146",
      "countryMatch" : "No",
      "countryCode" : "US",
      "freeMail" : "No",
      "anonymousProxy" : "No",
      "score" : "5.00",
      "binMatch" : "NotFound",
      "binCountry" : "",
      "err" : "CITY_NOT_FOUND",
      "proxyScore" : "0.00",
      "ip_region" : "PA",
      "ip_city" : "Townsville",
      "ip_latitude" : "40.1767",
      "ip_longitude" : "-76.4297",
      "binName" : "",
      "ip_isp" : "PenTeleData",
      "ip_org" : "PenTeleData",
      "binNameMatch" : "NA",
      "binPhoneMatch" : "NA",
      "binPhone" : "",
      "custPhoneInBillingLoc" : "",
      "highRiskCountry" : "No",
      "queriesRemaining" : "171",
      "cityPostalMatch" : "",
      "shipCityPostalMatch" : "",
      "maxmindID" : "HMOCUJP7",
      "ip_asnum" : "AS3737 PenTeleData Inc.",
      "ip_userType" : "residential",
      "ip_countryConf" : "99",
      "ip_regionConf" : "97",
      "ip_cityConf" : "30",
      "ip_postalCode" : "11122",
      "ip_postalConf" : "30",
      "ip_accuracyRadius" : "10",
      "ip_netSpeedCell" : "Dialup",
      "ip_metroCode" : "566",
      "ip_areaCode" : "333",
      "ip_timeZone" : "America/New_York",
      "ip_regionName" : "Pennsylvania",
      "ip_domain" : "ptd.net",
      "ip_countryName" : "United States",
      "ip_continentCode" : "NA",
      "ip_corporateProxy" : "No",
      "carderEmail" : "No",
      "highRiskUsername" : "No",
      "riskScore" : "4.82",
      "explanation" : "You should review this order carefully, as it is considered high risk. We suggest you be very cautious about accepting this order. This order is higher risk because the distance between the billing address and the user's actual location is so great. The order is higher risk because the billing country and the country in which the IP address is located don't match",
      "female_name" : "no"
    },
    "maxmind_score" : "0",
    "mb_id" : "4769",
    "modernbill_id" : "1234",
    "picture" : "https://avatars3.githubusercontent.com/u/1364504",
    "referrer_coupon" : "detainaffiliatecoupon",
    "reseller_markup" : "10",
    "username" : "user@domain.com",
    "ssh_key" : "zzzz",
    "ssh_key_wrapped" : "zzzz",
    "api_key" : "aaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbccccccccccccccccccc",
    "api_key_wrapped" : "aaaaaaaaaaaaaaaaaaaaaaa<br>bbbbbbbbbbbbb<br>ccccccccccccccccccc",
    "2fa_google_key" : "ssssssssssssssssssssssssss",
    "2fa_google_enabled" : true,
    "2fa_google" : 1,
    "2fa_google_split" : "zzzz zzzz zzzz zzzz ",
    "2fa_google_qr" : "data:image/png;base64,zzz"
  },
  "ip" : "1.2.3.4",
  "oauthproviders" : [ ],
  "oauthconfig" : {
    "callback" : "https://my.interserver.net/oauth/callback.php",
    "providers" : {
      "Twitter" : {
        "enabled" : false,
        "linked" : false
      },
      "Facebook" : {
        "enabled" : true,
        "account" : "111111111111111111111",
        "url" : "https://www.facebook.com/111111111111111111111",
        "linked" : true
      },
      "Google" : {
        "enabled" : true,
        "account" : "111111111111111111111",
        "url" : "https://plus.google.com/+UserName",
        "linked" : true
      },
      "GitHub" : {
        "enabled" : true,
        "account" : "111111111111111111111",
        "url" : "https://github.com/detain",
        "linked" : true
      }
    }
  },
  "oauthadapters" : [ ],
  "limits" : [ {
    "start" : "1.1.1.1",
    "end" : "1.1.1.254"
  }, {
    "start" : "2600:387:0:809::1b",
    "end" : "2600:387:0:809::1b"
  } ],
  "language" : "en-US",
  "countryCurrencies" : {
    "CN" : [ "USD" ],
    "BR" : [ "USD", "BRL" ],
    "RU" : [ "USD" ]
  },
  "enableLocales" : true,
  "enableCurrencies" : false,
  "gravatar" : "https://avatars3.githubusercontent.com/u/1364504"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
 * Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).
 *
 * returns inline_response_200
 **/
exports.getAccountTfaSetup = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "2fa_google_key" : "2fa_google_key",
  "2fa_google_split" : "2fa_google_split"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Aggregate dashboard payload — service counts, recent activity, alerts
 * Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.
 *
 * returns Home
 **/
exports.getHome = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "amount" : "$23.50",
  "invoice_list" : 5,
  "tickets" : [ "tickets", "tickets" ],
  "last_login" : "14:58:pm - 17 Aug, 2023",
  "services" : {
    "licenses" : {
      "count" : 1,
      "links" : {
        "386522" : "1.2.3.4"
      }
    },
    "servers" : {
      "count" : 1,
      "links" : {
        "16058" : "anotherserver.com"
      }
    },
    "webhosting" : {
      "count" : 8,
      "links" : {
        "376359" : "Doefamily.com",
        "376473" : "fancytush.com",
        "386218" : "admincoded.net"
      }
    },
    "vps" : {
      "count" : 20,
      "links" : {
        "2500081" : "vps2500081",
        "465503" : "vps465503",
        "2578866" : "vps2578866"
      }
    },
    "domains" : {
      "count" : 5,
      "links" : {
        "376503" : "hostingenuity.com",
        "592337" : "detain.dev",
        "376114" : "pimpmy.website"
      }
    },
    "backups" : {
      "count" : 0,
      "links" : [ "links", "links" ]
    }
  },
  "AFFILIATE_AMOUNT" : "100",
  "ticketStatusView" : {
    "4" : "Open",
    "5" : "On Hold",
    "6" : "Closed"
  },
  "full_name" : "John",
  "balance" : "$0.60",
  "last_login_ip" : "99.88.77.66",
  "ticketStatus" : {
    "On Hold" : 5,
    "Open" : 4
  },
  "currency" : "$",
  "details" : {
    "modules" : {
      "licenses" : {
        "heading" : "Licenses",
        "buy_link" : "order_license",
        "icon" : "id-card",
        "list_link" : "view_licenses_list",
        "view_link" : "view_license"
      },
      "servers" : {
        "heading" : "Dedicated Servers",
        "buy_link" : "order_server",
        "icon" : "server",
        "list_link" : "view_servers_list",
        "view_link" : "view_server"
      },
      "quickservers" : {
        "heading" : "Quick Servers",
        "buy_link" : "order_quickserver",
        "icon" : "database",
        "list_link" : "view_quickservers_list",
        "view_link" : "view_qs"
      },
      "webhosting" : {
        "heading" : "Web Hosting",
        "buy_link" : "order_website",
        "icon" : "window-maximize",
        "list_link" : "view_websites_list",
        "view_link" : "view_website"
      },
      "vps" : {
        "heading" : "VPS",
        "buy_link" : "order_vps",
        "icon" : "cloud-meatball",
        "list_link" : "view_vps_list",
        "view_link" : "view_vps"
      },
      "domains" : {
        "heading" : "Domains",
        "buy_link" : "domain_order",
        "icon" : "globe",
        "list_link" : "view_domains_list",
        "view_link" : "view_domain"
      },
      "backups" : {
        "heading" : "Storages",
        "buy_link" : "order_storage",
        "icon" : "warehouse",
        "list_link" : "view_backups_list",
        "view_link" : "view_backup"
      }
    }
  },
  "email" : "user@domain.com"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Global autocomplete across the caller's services, domains, and records
 * Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).
 *
 * returns SearchAutocompleteResponse
 **/
exports.getSearch = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "key" : { }
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 * Destroy the current API/web session — token becomes unusable
 * DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 
 *
 * returns SuccessTextResponse
 **/
exports.logout = function() {
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
 * Sign out of the upstream OAuth provider session (does not unlink the account)
 * Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.
 *
 * name String 
 * returns SuccessTextResponse
 **/
exports.logoutAccountOauth = function(name) {
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
 * Rotate the account's REST/MCP API key — old key is invalidated immediately
 * DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.
 *
 * returns SuccessTextResponse
 **/
exports.updateAccountApiKey = function() {
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
 * Toggle account-wide safety locks for password reset and OS reinstall
 * Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 
 *
 * body AccountFeatures 
 * returns SuccessTextResponse
 **/
exports.updateAccountFeatures = function(body) {
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
 * Toggle account-wide safety locks for password reset and OS reinstall
 * Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 
 *
 * body AccountFeatures 
 * returns SuccessTextResponse
 **/
exports.updateAccountFeatures = function(body) {
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
 * Update contact and billing-address fields on the customer profile
 * Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.
 *
 * body AccountInfoPost 
 * returns SuccessTextResponse
 **/
exports.updateAccountInfo = function(body) {
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
 * Update contact and billing-address fields on the customer profile
 * Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.
 *
 * body AccountInfoPost 
 * returns SuccessTextResponse
 **/
exports.updateAccountInfo = function(body) {
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
 * Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
 * DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.
 *
 * body IpLimitRange The lower and upper bounds of an ip range.
 * returns SuccessTextResponse
 **/
exports.updateAccountIpLimits = function(body) {
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
 * Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
 * DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.
 *
 * body IpLimitRange The lower and upper bounds of an ip range.
 * returns SuccessTextResponse
 **/
exports.updateAccountIpLimits = function(body) {
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
 * Change the account login password (verifies current, kills other sessions)
 * DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 
 *
 * body PasswordRequest 
 * returns TextResponse
 **/
exports.updateAccountPassword = function(body) {
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
 * Change the account login password (verifies current, kills other sessions)
 * DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 
 *
 * body PasswordRequest 
 * returns TextResponse
 **/
exports.updateAccountPassword = function(body) {
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
 * Set the account-level SSH public key auto-installed on new VPS/dedicated orders
 * Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.
 *
 * body AccountSshKey 
 * returns SuccessTextResponse
 **/
exports.updateAccountSshKey = function(body) {
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
 * Set the account-level SSH public key auto-installed on new VPS/dedicated orders
 * Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.
 *
 * body AccountSshKey 
 * returns SuccessTextResponse
 **/
exports.updateAccountSshKey = function(body) {
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
 * Verify TOTP code and enable two-factor authentication on the account
 * Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.
 *
 * body Account_2fa_body_1 
 * returns SuccessTextResponse
 **/
exports.updateAccountTfa = function(body) {
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
 * Verify TOTP code and enable two-factor authentication on the account
 * Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.
 *
 * body Account_2fa_body_1 
 * returns SuccessTextResponse
 **/
exports.updateAccountTfa = function(body) {
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

