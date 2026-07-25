# Documentation for InterServer Management API 0.9.0 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in InterServer Management API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://my.interserver.nethttps://my.interserver.net/apiv2


### AccountManager
Method | HTTP request | Description
------------- | ------------- | -------------
*deleteAccountOauthNameSync* | *DELETE* /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account.
*deleteAccountOauthNameASync* | *DELETE* /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account.
*deleteAccountTfaSync* | *DELETE* /account/2fa | Disable two-factor authentication and remove the TOTP secret.
*deleteAccountTfaASync* | *DELETE* /account/2fa | Disable two-factor authentication and remove the TOTP secret.
*deleteIpLimitSync* | *PATCH* /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits).
*deleteIpLimitASync* | *PATCH* /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits).
*getAccountInfoSync* | *GET* /account | Read full account profile, billing address, and security settings.
*getAccountInfoASync* | *GET* /account | Read full account profile, billing address, and security settings.
*getAccountTfaSetupSync* | *GET* /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.).
*getAccountTfaSetupASync* | *GET* /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.).
*getHomeSync* | *GET* /home | Aggregate dashboard payload — service counts, recent activity, alerts.
*getHomeASync* | *GET* /home | Aggregate dashboard payload — service counts, recent activity, alerts.
*getSearchSync* | *GET* /search | Global autocomplete across the caller's services, domains, and records.
*getSearchASync* | *GET* /search | Global autocomplete across the caller's services, domains, and records.
*logoutSync* | *GET* /logout | Destroy the current API/web session — token becomes unusable.
*logoutASync* | *GET* /logout | Destroy the current API/web session — token becomes unusable.
*logoutAccountOauthSync* | *GET* /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account).
*logoutAccountOauthASync* | *GET* /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account).
*updateAccountApiKeySync* | *POST* /account/apikey | Rotate the account's REST/MCP API key — old key is invalidated immediately.
*updateAccountApiKeyASync* | *POST* /account/apikey | Rotate the account's REST/MCP API key — old key is invalidated immediately.
*updateAccountFeaturesSync* | *POST* /account/features | Toggle account-wide safety locks for password reset and OS reinstall.
*updateAccountFeaturesASync* | *POST* /account/features | Toggle account-wide safety locks for password reset and OS reinstall.
*updateAccountInfoSync* | *POST* /account | Update contact and billing-address fields on the customer profile.
*updateAccountInfoASync* | *POST* /account | Update contact and billing-address fields on the customer profile.
*updateAccountIpLimitsSync* | *POST* /account/iplimits | Add an IP CIDR/range to the account's API+web allow-list (lockout-safe).
*updateAccountIpLimitsASync* | *POST* /account/iplimits | Add an IP CIDR/range to the account's API+web allow-list (lockout-safe).
*updateAccountPasswordSync* | *POST* /account/password | Change the account login password (verifies current, kills other sessions).
*updateAccountPasswordASync* | *POST* /account/password | Change the account login password (verifies current, kills other sessions).
*updateAccountSshKeySync* | *POST* /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders.
*updateAccountSshKeyASync* | *POST* /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders.
*updateAccountTfaSync* | *POST* /account/2fa | Verify TOTP code and enable two-factor authentication on the account.
*updateAccountTfaASync* | *POST* /account/2fa | Verify TOTP code and enable two-factor authentication on the account.


### BackupsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addBackupSync* | *POST* /backups/order | Place a new off-site backup storage order and generate the invoice.
*addBackupASync* | *POST* /backups/order | Place a new off-site backup storage order and generate the invoice.
*cancelBackupSync* | *DELETE* /backups/{id} | Cancel an off-site backup storage subscription.
*cancelBackupASync* | *DELETE* /backups/{id} | Cancel an off-site backup storage subscription.
*getBackupInfoSync* | *GET* /backups/{id} | Get details of a specific off-site backup storage service.
*getBackupInfoASync* | *GET* /backups/{id} | Get details of a specific off-site backup storage service.
*getBackupInvoicesSync* | *GET* /backups/{id}/invoices | List invoices for a single backup-storage subscription.
*getBackupInvoicesASync* | *GET* /backups/{id}/invoices | List invoices for a single backup-storage subscription.
*getBackupLoginSync* | *GET* /backups/{id}/login | Open a single sign-on session URL for the backup storage panel.
*getBackupLoginASync* | *GET* /backups/{id}/login | Open a single sign-on session URL for the backup storage panel.
*getBackupsListSync* | *GET* /backups | List off-site backup storage subscriptions on the authenticated account.
*getBackupsListASync* | *GET* /backups | List off-site backup storage subscriptions on the authenticated account.
*getBackupsWelcomeEmailSync* | *GET* /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service.
*getBackupsWelcomeEmailASync* | *GET* /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service.
*getNewBackupSync* | *GET* /backups/order | Get backup-storage order form metadata and pricing tiers.
*getNewBackupASync* | *GET* /backups/order | Get backup-storage order form metadata and pricing tiers.
*updateBackupInfoSync* | *POST* /backups/{id} | Update stored metadata for a backup-storage subscription.
*updateBackupInfoASync* | *POST* /backups/{id} | Update stored metadata for a backup-storage subscription.
*validateBackupOrderSync* | *PUT* /backups/order | Validate a backup-storage order and preview pricing without charging.
*validateBackupOrderASync* | *PUT* /backups/order | Validate a backup-storage order and preview pricing without charging.


### BillingManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addBillingCreditCardSync* | *POST* /billing/creditcards | Store a credit card on the account — may return a verification flow.
*addBillingCreditCardASync* | *POST* /billing/creditcards | Store a credit card on the account — may return a verification flow.
*addBillingPrepaySync* | *POST* /billing/prepays | Create a prepay deposit and return an invoice id to fund it.
*addBillingPrepayASync* | *POST* /billing/prepays | Create a prepay deposit and return an invoice id to fund it.
*deleteBillingCreditCardSync* | *DELETE* /billing/creditcards/{id} | Remove a stored credit card from the account.
*deleteBillingCreditCardASync* | *DELETE* /billing/creditcards/{id} | Remove a stored credit card from the account.
*deleteBillingInvoiceSync* | *DELETE* /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice.
*deleteBillingInvoiceASync* | *DELETE* /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice.
*deleteBillingPrepaySync* | *DELETE* /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices.
*deleteBillingPrepayASync* | *DELETE* /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices.
*getAffiliateBannersSync* | *GET* /affiliate/banners | List affiliate banner image assets with filename and dimensions.
*getAffiliateBannersASync* | *GET* /affiliate/banners | List affiliate banner image assets with filename and dimensions.
*getAffiliateDownloadSync* | *GET* /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download.
*getAffiliateDownloadASync* | *GET* /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download.
*getAffiliateRichReportSync* | *GET* /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload).
*getAffiliateRichReportASync* | *GET* /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload).
*getAffiliateSalesGraphSync* | *GET* /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering.
*getAffiliateSalesGraphASync* | *GET* /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering.
*getAffiliateSignupsSync* | *GET* /affiliate/signups | Read affiliate signup stats and per-customer conversion data.
*getAffiliateSignupsASync* | *GET* /affiliate/signups | Read affiliate signup stats and per-customer conversion data.
*getAffiliateTrafficGraphSync* | *GET* /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering.
*getAffiliateTrafficGraphASync* | *GET* /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering.
*getAffiliateWebTrafficSync* | *GET* /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp.
*getAffiliateWebTrafficASync* | *GET* /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp.
*getBillingCartSync* | *GET* /billing/cart | Read the current shopping cart contents, totals, and available payment methods.
*getBillingCartASync* | *GET* /billing/cart | Read the current shopping cart contents, totals, and available payment methods.
*getBillingCreditCardVerifySync* | *GET* /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification.
*getBillingCreditCardVerifyASync* | *GET* /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification.
*getBillingInvoiceSync* | *GET* /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info.
*getBillingInvoiceASync* | *GET* /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info.
*getBillingInvoicesSync* | *GET* /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status.
*getBillingInvoicesASync* | *GET* /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status.
*getBillingPrePaysSync* | *GET* /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags.
*getBillingPrePaysASync* | *GET* /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags.
*initiatePaymentSync* | *GET* /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action.
*initiatePaymentASync* | *GET* /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action.
*patchBillingCreditCardVerifySync* | *PATCH* /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2).
*patchBillingCreditCardVerifyASync* | *PATCH* /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2).
*postBillingCreditCardVerifySync* | *POST* /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2).
*postBillingCreditCardVerifyASync* | *POST* /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2).
*updateAffiliateDockSetupSync* | *POST* /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon.
*updateAffiliateDockSetupASync* | *POST* /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon.
*updateAffiliatePaymentSetupSync* | *POST* /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay).
*updateAffiliatePaymentSetupASync* | *POST* /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay).
*updateBillingCreditCardSync* | *POST* /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring.
*updateBillingCreditCardASync* | *POST* /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring.
*updateBillingPaymentMethodSync* | *POST* /billing/payment_method | Set the account's default payment method for recurring/auto charges.
*updateBillingPaymentMethodASync* | *POST* /billing/payment_method | Set the account's default payment method for recurring/auto charges.


### DNSManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addDnsDomainSync* | *POST* /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records.
*addDnsDomainASync* | *POST* /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records.
*addDnsRecordSync* | *POST* /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone.
*addDnsRecordASync* | *POST* /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone.
*deleteDnsDomainSync* | *DELETE* /dns/{id} | Permanently delete a DNS zone and every record it contains.
*deleteDnsDomainASync* | *DELETE* /dns/{id} | Permanently delete a DNS zone and every record it contains.
*deleteDnsRecordSync* | *DELETE* /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved.
*deleteDnsRecordASync* | *DELETE* /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved.
*getDnsDomainSync* | *GET* /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them.
*getDnsDomainASync* | *GET* /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them.
*getDnsListSync* | *GET* /dns | List DNS zones hosted on the account with each zone's apex A-record IP.
*getDnsListASync* | *GET* /dns | List DNS zones hosted on the account with each zone's apex A-record IP.
*updateDnsRecordSync* | *POST* /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority).
*updateDnsRecordASync* | *POST* /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority).


### DomainsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addDomainSync* | *POST* /domains/order | Place a new domain registration or transfer order, generate billing invoice.
*addDomainASync* | *POST* /domains/order | Place a new domain registration or transfer order, generate billing invoice.
*addDomainDnssecSync* | *POST* /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS.
*addDomainDnssecASync* | *POST* /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS.
*addDomainNameserverSync* | *POST* /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver).
*addDomainNameserverASync* | *POST* /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver).
*cancelDomainSync* | *DELETE* /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals.
*cancelDomainASync* | *DELETE* /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals.
*deleteDomainDnssecSync* | *DELETE* /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar).
*deleteDomainDnssecASync* | *DELETE* /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar).
*deleteDomainNameserverSync* | *DELETE* /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain.
*deleteDomainNameserverASync* | *DELETE* /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain.
*getDomainContactSync* | *GET* /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain.
*getDomainContactASync* | *GET* /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain.
*getDomainDnssecSync* | *GET* /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar.
*getDomainDnssecASync* | *GET* /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar.
*getDomainInfoSync* | *GET* /domains/{id} | Read full billing, registrar, and service detail for one domain.
*getDomainInfoASync* | *GET* /domains/{id} | Read full billing, registrar, and service detail for one domain.
*getDomainInvoicesSync* | *GET* /domains/{id}/invoices | List all billing invoices scoped to one domain order.
*getDomainInvoicesASync* | *GET* /domains/{id}/invoices | List all billing invoices scoped to one domain order.
*getDomainLookupSync* | *GET* /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain.
*getDomainLookupASync* | *GET* /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain.
*getDomainNameserversSync* | *GET* /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain.
*getDomainNameserversASync* | *GET* /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain.
*getDomainRenewalSync* | *GET* /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists.
*getDomainRenewalASync* | *GET* /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists.
*getDomainSearchSync* | *GET* /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term.
*getDomainSearchASync* | *GET* /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term.
*getDomainTransferSync* | *GET* /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order.
*getDomainTransferASync* | *GET* /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order.
*getDomainWhoisPrivacySync* | *GET* /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain.
*getDomainWhoisPrivacyASync* | *GET* /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain.
*getDomainsListSync* | *GET* /domains | List every domain registration on the account with billing and registration metadata.
*getDomainsListASync* | *GET* /domains | List every domain registration on the account with billing and registration metadata.
*getDomainsWelcomeEmailSync* | *GET* /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions.
*getDomainsWelcomeEmailASync* | *GET* /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions.
*getNewDomainSync* | *GET* /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing.
*getNewDomainASync* | *GET* /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing.
*patchDomainsSync* | *PATCH* /domains/order | Validate posted domain-order field values before committing — dry run.
*patchDomainsASync* | *PATCH* /domains/order | Validate posted domain-order field values before committing — dry run.
*postDomainRenewalSync* | *POST* /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice.
*postDomainRenewalASync* | *POST* /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice.
*postDomainSearchSync* | *POST* /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview).
*postDomainSearchASync* | *POST* /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview).
*postDomainTransferSync* | *POST* /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST.
*postDomainTransferASync* | *POST* /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST.
*putDomainsSync* | *PUT* /domains/order | Preview per-TLD field requirements for a domain order — no commit.
*putDomainsASync* | *PUT* /domains/order | Preview per-TLD field requirements for a domain order — no commit.
*updateDomainContactSync* | *POST* /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS.
*updateDomainContactASync* | *POST* /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS.
*updateDomainInfoSync* | *POST* /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible).
*updateDomainInfoASync* | *POST* /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible).
*updateDomainNameserversSync* | *PUT* /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar.
*updateDomainNameserversASync* | *PUT* /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar.
*updateDomainWhoisPrivacySync* | *POST* /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain.
*updateDomainWhoisPrivacyASync* | *POST* /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain.


### FloatingIPsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addFloatingIpSync* | *POST* /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service.
*addFloatingIpASync* | *POST* /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service.
*floatingIpsCancelSync* | *DELETE* /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops.
*floatingIpsCancelASync* | *DELETE* /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops.
*getFloatingIpInfoSync* | *GET* /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP.
*getFloatingIpInfoASync* | *GET* /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP.
*getFloatingIpInvoicesSync* | *GET* /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service.
*getFloatingIpInvoicesASync* | *GET* /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service.
*getFloatingIpsListSync* | *GET* /floating_ips | List all Floating IP services on the authenticated customer's account.
*getFloatingIpsListASync* | *GET* /floating_ips | List all Floating IP services on the authenticated customer's account.
*getFloatingIpsWelcomeEmailSync* | *GET* /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact.
*getFloatingIpsWelcomeEmailASync* | *GET* /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact.
*getNewFloatingIpSync* | *GET* /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP.
*getNewFloatingIpASync* | *GET* /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP.
*postFloatingIpsChangeIpSync* | *POST* /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer's services.
*postFloatingIpsChangeIpASync* | *POST* /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer's services.
*putFloatingIpsSync* | *PUT* /floating_ips/order | Validate a Floating IP order and price it without charging the customer.
*putFloatingIpsASync* | *PUT* /floating_ips/order | Validate a Floating IP order and price it without charging the customer.
*updateFloatingIpInfoSync* | *POST* /floating_ips/{id} | Update a Floating IP service's editable settings (label / metadata).
*updateFloatingIpInfoASync* | *POST* /floating_ips/{id} | Update a Floating IP service's editable settings (label / metadata).


### LicensesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addLicenseSync* | *POST* /licenses/order | Order a new software license and create the recurring invoice.
*addLicenseASync* | *POST* /licenses/order | Order a new software license and create the recurring invoice.
*getLicenseInfoSync* | *GET* /licenses/{id} | Get full details for one license including status, IP, and links.
*getLicenseInfoASync* | *GET* /licenses/{id} | Get full details for one license including status, IP, and links.
*getLicenseInvoicesSync* | *GET* /licenses/{id}/invoices | List all billing invoices tied to one software license service.
*getLicenseInvoicesASync* | *GET* /licenses/{id}/invoices | List all billing invoices tied to one software license service.
*getLicenseListSync* | *GET* /licenses | List all software licenses owned by the authenticated customer.
*getLicenseListASync* | *GET* /licenses | List all software licenses owned by the authenticated customer.
*getLicensesWelcomeEmailSync* | *GET* /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps.
*getLicensesWelcomeEmailASync* | *GET* /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps.
*getNewLicenseSync* | *GET* /licenses/order | Get available license types, packages, and pricing for ordering.
*getNewLicenseASync* | *GET* /licenses/order | Get available license types, packages, and pricing for ordering.
*licensesCancelSync* | *DELETE* /licenses/{id} | Cancel a license service and stop future billing (irreversible).
*licensesCancelASync* | *DELETE* /licenses/{id} | Cancel a license service and stop future billing (irreversible).
*postLicenseChangeIpSync* | *POST* /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee).
*postLicenseChangeIpASync* | *POST* /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee).
*putLicensesSync* | *PUT* /licenses/order | Validate a software license order before placing it (dry run preview).
*putLicensesASync* | *PUT* /licenses/order | Validate a software license order before placing it (dry run preview).
*updateLicenseInfoSync* | *POST* /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP).
*updateLicenseInfoASync* | *POST* /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP).


### MailManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addMailSync* | *POST* /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning.
*addMailASync* | *POST* /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning.
*addRuleSync* | *POST* /mail/{id}/rules | Create a new deny rule to auto-block matching submissions.
*addRuleASync* | *POST* /mail/{id}/rules | Create a new deny rule to auto-block matching submissions.
*createMailAlertSync* | *POST* /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events.
*createMailAlertASync* | *POST* /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events.
*deleteMailAlertSync* | *DELETE* /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery).
*deleteMailAlertASync* | *DELETE* /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery).
*deleteRuleSync* | *DELETE* /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery).
*deleteRuleASync* | *DELETE* /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery).
*delistBlockSync* | *POST* /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists.
*delistBlockASync* | *POST* /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists.
*getMailAlertsSync* | *GET* /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service.
*getMailAlertsASync* | *GET* /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service.
*getMailBlocksSync* | *GET* /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user.
*getMailBlocksASync* | *GET* /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user.
*getMailDelistSync* | *GET* /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting.
*getMailDelistASync* | *GET* /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting.
*getMailDeliverabilitySync* | *GET* /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain).
*getMailDeliverabilityASync* | *GET* /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain).
*getMailInfoSync* | *GET* /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials.
*getMailInfoASync* | *GET* /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials.
*getMailInvoicesSync* | *GET* /mail/{id}/invoices | List billing invoices linked to this Mail Baby service.
*getMailInvoicesASync* | *GET* /mail/{id}/invoices | List billing invoices linked to this Mail Baby service.
*getMailListSync* | *GET* /mail | List every Mail Baby SMTP relay service on the account.
*getMailListASync* | *GET* /mail | List every Mail Baby SMTP relay service on the account.
*getMailWelcomeEmailSync* | *GET* /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info.
*getMailWelcomeEmailASync* | *GET* /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info.
*getNewMailSync* | *GET* /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata.
*getNewMailASync* | *GET* /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata.
*getRulesSync* | *GET* /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service.
*getRulesASync* | *GET* /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service.
*getStatsSync* | *GET* /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost.
*getStatsASync* | *GET* /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost.
*mailCancelSync* | *DELETE* /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice.
*mailCancelASync* | *DELETE* /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice.
*postMailDelistSync* | *POST* /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists.
*postMailDelistASync* | *POST* /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists.
*putMailSync* | *PUT* /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge.
*putMailASync* | *PUT* /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge.
*resetMailPasswordSync* | *GET* /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner.
*resetMailPasswordASync* | *GET* /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner.
*sendAdvMailSync* | *POST* /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient.
*sendAdvMailASync* | *POST* /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient.
*sendMailSync* | *POST* /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay.
*sendMailASync* | *POST* /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay.
*updateMailAlertSync* | *PUT* /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id.
*updateMailAlertASync* | *PUT* /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id.
*updateMailInfoSync* | *POST* /mail/{id} | POST mutation hook for the Mail Baby service detail page.
*updateMailInfoASync* | *POST* /mail/{id} | POST mutation hook for the Mail Baby service detail page.
*updateRuleSync* | *PUT* /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule's type and match data.
*updateRuleASync* | *PUT* /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule's type and match data.
*viewMailLogSync* | *GET* /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries.
*viewMailLogASync* | *GET* /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries.


### PublicManager
Method | HTTP request | Description
------------- | ------------- | -------------
*getAccountCurrenciesSync* | *GET* /account/currencies | List enabled currency codes accepted for billing and preferences.
*getAccountCurrenciesASync* | *GET* /account/currencies | List enabled currency codes accepted for billing and preferences.
*getAccountLocalesSync* | *GET* /account/locales | List supported UI locales with English and native display names.
*getAccountLocalesASync* | *GET* /account/locales | List supported UI locales with English and native display names.
*getCaptchaSync* | *GET* /captcha | Fetch a base64 JPEG captcha challenge for human verification.
*getCaptchaASync* | *GET* /captcha | Fetch a base64 JPEG captcha challenge for human verification.
*getCountriesSync* | *GET* /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code.
*getCountriesASync* | *GET* /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code.
*getInfoSync* | *GET* /info | Discover available modules, service packages, categories, and types.
*getInfoASync* | *GET* /info | Discover available modules, service packages, categories, and types.
*getLoginInfoSync* | *GET* /login | Fetch logo, captcha, language, and stats for rendering a login page.
*getLoginInfoASync* | *GET* /login | Fetch logo, captcha, language, and stats for rendering a login page.
*getMPServersSync* | *GET* /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing.
*getMPServersASync* | *GET* /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing.
*getOauthRedirectSync* | *GET* /oauth | Begin OAuth login flow — redirect user to provider for authentication.
*getOauthRedirectASync* | *GET* /oauth | Begin OAuth login flow — redirect user to provider for authentication.
*getTimezonesSync* | *GET* /account/timezones | List all PHP timezone identifiers usable on accounts and services.
*getTimezonesASync* | *GET* /account/timezones | List all PHP timezone identifiers usable on accounts and services.
*patchOauthTwoFactorSync* | *PATCH* /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled.
*patchOauthTwoFactorASync* | *PATCH* /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled.
*pingServerSync* | *GET* /ping | Liveness check — returns the JSON string \"pong\" to confirm API is up.
*pingServerASync* | *GET* /ping | Liveness check — returns the JSON string \"pong\" to confirm API is up.
*postOauthCallbackSync* | *POST* /oauth | Complete OAuth login by linking provider to existing or new account.
*postOauthCallbackASync* | *POST* /oauth | Complete OAuth login by linking provider to existing or new account.
*submitLoginSync* | *POST* /login | Authenticate with email + password and return a session token.
*submitLoginASync* | *POST* /login | Authenticate with email + password and return a session token.
*submitSignupSync* | *POST* /signup | Create a new customer account (email + password + captcha + ToS).
*submitSignupASync* | *POST* /signup | Create a new customer account (email + password + captcha + ToS).


### QuickServersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addQsSync* | *POST* /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning.
*addQsASync* | *POST* /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning.
*deleteQsBackupSync* | *DELETE* /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage.
*deleteQsBackupASync* | *DELETE* /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage.
*doQsBlockSmtpSync* | *GET* /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse.
*doQsBlockSmtpASync* | *GET* /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse.
*doQsDisableCdSync* | *GET* /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer.
*doQsDisableCdASync* | *GET* /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer.
*doQsDisableQuotaSync* | *GET* /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer.
*doQsDisableQuotaASync* | *GET* /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer.
*doQsEjectCdSync* | *GET* /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer's virtual CD drive.
*doQsEjectCdASync* | *GET* /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer's virtual CD drive.
*doQsEnableQuotaSync* | *GET* /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer.
*doQsEnableQuotaASync* | *GET* /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer.
*doQsRestartSync* | *GET* /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart.
*doQsRestartASync* | *GET* /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart.
*doQsStartSync* | *GET* /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot.
*doQsStartASync* | *GET* /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot.
*doQsStopSync* | *GET* /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command.
*doQsStopASync* | *GET* /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command.
*downloadQsBackupSync* | *PATCH* /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup.
*downloadQsBackupASync* | *PATCH* /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup.
*getNewQsSync* | *GET* /qs/order | Get QuickServer order form metadata and available plans/templates.
*getNewQsASync* | *GET* /qs/order | Get QuickServer order form metadata and available plans/templates.
*getQsBackupSync* | *GET* /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job).
*getQsBackupASync* | *GET* /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job).
*getQsBackupsSync* | *GET* /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage.
*getQsBackupsASync* | *GET* /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage.
*getQsChangeHostnameSync* | *GET* /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support.
*getQsChangeHostnameASync* | *GET* /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support.
*getQsChangeRootPasswordSync* | *GET* /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements.
*getQsChangeRootPasswordASync* | *GET* /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements.
*getQsChangeTimezoneSync* | *GET* /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone.
*getQsChangeTimezoneASync* | *GET* /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone.
*getQsChangeWebuzoPasswordSync* | *GET* /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password.
*getQsChangeWebuzoPasswordASync* | *GET* /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password.
*getQsInfoSync* | *GET* /qs/{id} | Get full details for one QuickServer including credentials and links.
*getQsInfoASync* | *GET* /qs/{id} | Get full details for one QuickServer including credentials and links.
*getQsInsertCdSync* | *GET* /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer's virtual CD.
*getQsInsertCdASync* | *GET* /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer's virtual CD.
*getQsInvoicesSync* | *GET* /qs/{id}/invoices | List billing invoices charged for one QuickServer service.
*getQsInvoicesASync* | *GET* /qs/{id}/invoices | List billing invoices charged for one QuickServer service.
*getQsListSync* | *GET* /qs | List QuickServer rapid-deploy dedicated servers on the account.
*getQsListASync* | *GET* /qs | List QuickServer rapid-deploy dedicated servers on the account.
*getQsReinstallOsSync* | *GET* /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall.
*getQsReinstallOsASync* | *GET* /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall.
*getQsResetPasswordSync* | *GET* /qs/{id}/reset_password | Get options for QuickServer randomized root password reset.
*getQsResetPasswordASync* | *GET* /qs/{id}/reset_password | Get options for QuickServer randomized root password reset.
*getQsReverseDnsSync* | *GET* /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer's IPs.
*getQsReverseDnsASync* | *GET* /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer's IPs.
*getQsSetupVncSync* | *GET* /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer.
*getQsSetupVncASync* | *GET* /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer.
*getQsTrafficUsageSync* | *GET* /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer's current billing period.
*getQsTrafficUsageASync* | *GET* /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer's current billing period.
*getQsViewDesktopSync* | *GET* /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format).
*getQsViewDesktopASync* | *GET* /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format).
*getQsWelcomeEmailSync* | *GET* /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials.
*getQsWelcomeEmailASync* | *GET* /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials.
*postQsChangeHostnameSync* | *POST* /qs/{id}/change_hostname | Change a QuickServer's system hostname (OpenVZ/Virtuozzo only).
*postQsChangeHostnameASync* | *POST* /qs/{id}/change_hostname | Change a QuickServer's system hostname (OpenVZ/Virtuozzo only).
*postQsChangeRootPasswordSync* | *POST* /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value.
*postQsChangeRootPasswordASync* | *POST* /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value.
*postQsChangeTimezoneSync* | *POST* /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry.
*postQsChangeTimezoneASync* | *POST* /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry.
*postQsChangeWebuzoPasswordSync* | *POST* /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued).
*postQsChangeWebuzoPasswordASync* | *POST* /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued).
*postQsInsertCdSync* | *POST* /qs/{id}/insert_cd | Mount an ISO image as the QuickServer's virtual CD via URL.
*postQsInsertCdASync* | *POST* /qs/{id}/insert_cd | Mount an ISO image as the QuickServer's virtual CD via URL.
*postQsReinstallOsSync* | *POST* /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk).
*postQsReinstallOsASync* | *POST* /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk).
*postQsResetPasswordSync* | *POST* /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value.
*postQsResetPasswordASync* | *POST* /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value.
*postQsReverseDnsSync* | *POST* /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer's IPs.
*postQsReverseDnsASync* | *POST* /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer's IPs.
*postQsSetupVncSync* | *POST* /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer's VNC console.
*postQsSetupVncASync* | *POST* /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer's VNC console.
*postQsTrafficUsageSync* | *POST* /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant).
*postQsTrafficUsageASync* | *POST* /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant).
*postQsViewDesktopSync* | *POST* /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload.
*postQsViewDesktopASync* | *POST* /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload.
*postQuickServerRestoreSync* | *POST* /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk).
*postQuickServerRestoreASync* | *POST* /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk).
*putQsSync* | *PUT* /qs/order | Validate a QuickServer order without charging or provisioning.
*putQsASync* | *PUT* /qs/order | Validate a QuickServer order without charging or provisioning.
*quickserversCancelSync* | *DELETE* /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle.
*quickserversCancelASync* | *DELETE* /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle.
*updateQsInfoSync* | *POST* /qs/{id} | Update QuickServer order metadata or stored settings without OS impact.
*updateQsInfoASync* | *POST* /qs/{id} | Update QuickServer order metadata or stored settings without OS impact.


### SSLCertificatesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addSslSync* | *POST* /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance.
*addSslASync* | *POST* /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance.
*getNewSslSync* | *GET* /ssl/order | Get available SSL certificate packages and pricing for placing a new order.
*getNewSslASync* | *GET* /ssl/order | Get available SSL certificate packages and pricing for placing a new order.
*getSslInfoSync* | *GET* /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links.
*getSslInfoASync* | *GET* /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links.
*getSslInvoicesSync* | *GET* /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id.
*getSslInvoicesASync* | *GET* /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id.
*getSslListSync* | *GET* /ssl | List all SSL certificates on the authenticated customer account with status and hostname.
*getSslListASync* | *GET* /ssl | List all SSL certificates on the authenticated customer account with status and hostname.
*getSslWelcomeEmailSync* | *GET* /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions.
*getSslWelcomeEmailASync* | *GET* /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions.
*putSslSync* | *PUT* /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl.
*putSslASync* | *PUT* /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl.
*sslCancelSync* | *DELETE* /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle.
*sslCancelASync* | *DELETE* /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle.
*updateSslInfoSync* | *POST* /ssl/{id} | Update mutable settings on an existing SSL certificate order by id.
*updateSslInfoASync* | *POST* /ssl/{id} | Update mutable settings on an existing SSL certificate order by id.


### ScrubIpsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*cancelScrubIpSync* | *DELETE* /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing.
*cancelScrubIpASync* | *DELETE* /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing.
*createFilterSync* | *POST* /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port.
*createFilterASync* | *POST* /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port.
*createGeoRuleSync* | *POST* /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN).
*createGeoRuleASync* | *POST* /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN).
*createRuleSync* | *POST* /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol).
*createRuleASync* | *POST* /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol).
*deleteFilterSync* | *POST* /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port.
*deleteFilterASync* | *POST* /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port.
*disableScrubSync* | *GET* /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP.
*disableScrubASync* | *GET* /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP.
*enableScrubSync* | *GET* /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service's protected IP.
*enableScrubASync* | *GET* /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service's protected IP.
*getOrderDetailSync* | *GET* /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order.
*getOrderDetailASync* | *GET* /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order.
*getScrubIpDetailsSync* | *GET* /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters).
*getScrubIpDetailsASync* | *GET* /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters).
*getScrubIpFilterTypesSync* | *GET* /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter.
*getScrubIpFilterTypesASync* | *GET* /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter.
*getScrubIpInvoicesSync* | *GET* /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service.
*getScrubIpInvoicesASync* | *GET* /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service.
*getScrubIpLogsSync* | *GET* /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP.
*getScrubIpLogsASync* | *GET* /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP.
*getScrubIpsListSync* | *GET* /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account.
*getScrubIpsListASync* | *GET* /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account.
*placeScrubOrderSync* | *POST* /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice.
*placeScrubOrderASync* | *POST* /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice.
*putScrubIpsSync* | *PUT* /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing.
*putScrubIpsASync* | *PUT* /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing.
*scrubIpsDeleteGeoRuleSync* | *POST* /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails.
*scrubIpsDeleteGeoRuleASync* | *POST* /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails.
*scrubIpsDeleteRuleSync* | *POST* /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails.
*scrubIpsDeleteRuleASync* | *POST* /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails.


### ServersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addServerSync* | *POST* /servers/order | Place a custom dedicated server order, creating a real billable invoice.
*addServerASync* | *POST* /servers/order | Place a custom dedicated server order, creating a real billable invoice.
*buyItNowServerOrderSync* | *GET* /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server.
*buyItNowServerOrderASync* | *GET* /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server.
*getMPServersSync* | *GET* /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing.
*getMPServersASync* | *GET* /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing.
*getNewServerSync* | *GET* /servers/order | Get custom dedicated server ordering options, regions, and pricing.
*getNewServerASync* | *GET* /servers/order | Get custom dedicated server ordering options, regions, and pricing.
*getServerInfoSync* | *GET* /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server.
*getServerInfoASync* | *GET* /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server.
*getServerInvoicesSync* | *GET* /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server.
*getServerInvoicesASync* | *GET* /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server.
*getServerListSync* | *GET* /servers | List all dedicated servers owned by the authenticated customer.
*getServerListASync* | *GET* /servers | List all dedicated servers owned by the authenticated customer.
*getServerReverseDnsSync* | *GET* /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server's IPs.
*getServerReverseDnsASync* | *GET* /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server's IPs.
*getServersWelcomeEmailSync* | *GET* /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials.
*getServersWelcomeEmailASync* | *GET* /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials.
*placeBuyNowServerSync* | *POST* /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice.
*placeBuyNowServerASync* | *POST* /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice.
*postServerReverseDnsSync* | *POST* /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server's IPs.
*postServerReverseDnsASync* | *POST* /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server's IPs.
*serverBulkIpmiPowerGetSync* | *GET* /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call.
*serverBulkIpmiPowerGetASync* | *GET* /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call.
*serverIpmiLiveGetSync* | *GET* /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server.
*serverIpmiLiveGetASync* | *GET* /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server.
*serverIpmiLivePostSync* | *POST* /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease).
*serverIpmiLivePostASync* | *POST* /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease).
*serverIpmiPowerGetSync* | *GET* /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single).
*serverIpmiPowerGetASync* | *GET* /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single).
*serverIpmiPowerPostSync* | *POST* /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server.
*serverIpmiPowerPostASync* | *POST* /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server.
*serversCancelSync* | *DELETE* /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle.
*serversCancelASync* | *DELETE* /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle.
*updateServerInfoSync* | *POST* /servers/{id} | Update settings on a dedicated server order (shares handler with view).
*updateServerInfoASync* | *POST* /servers/{id} | Update settings on a dedicated server order (shares handler with view).


### TicketsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addNewTicketSync* | *POST* /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments.
*addNewTicketASync* | *POST* /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments.
*closeTicketSync* | *GET* /tickets/{id}/close | Close an open support ticket via simple GET request (no body required).
*closeTicketASync* | *GET* /tickets/{id}/close | Close an open support ticket via simple GET request (no body required).
*deleteTicketInfoSync* | *DELETE* /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data).
*deleteTicketInfoASync* | *DELETE* /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data).
*getNewTicketSync* | *GET* /tickets/new | Fetch services and product options to populate the new-ticket form.
*getNewTicketASync* | *GET* /tickets/new | Fetch services and product options to populate the new-ticket form.
*getTicketInfoSync* | *GET* /tickets/{id} | Get full ticket details including subject, status, and the reply thread.
*getTicketInfoASync* | *GET* /tickets/{id} | Get full ticket details including subject, status, and the reply thread.
*getTicketsListSync* | *GET* /tickets | List the authenticated account's support tickets with status and date filters.
*getTicketsListASync* | *GET* /tickets | List the authenticated account's support tickets with status and date filters.
*postTicketInfoSync* | *POST* /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket.
*postTicketInfoASync* | *POST* /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket.
*postTicketsListSync* | *POST* /tickets | Search the authenticated account's tickets by subject, email, or mask ID.
*postTicketsListASync* | *POST* /tickets | Search the authenticated account's tickets by subject, email, or mask ID.
*putTicketInfoSync* | *PUT* /tickets/{id} | Update a ticket's properties such as subject or status (stub, not implemented).
*putTicketInfoASync* | *PUT* /tickets/{id} | Update a ticket's properties such as subject or status (stub, not implemented).
*replyTicketSync* | *POST* /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments).
*replyTicketASync* | *POST* /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments).
*updateTicketInfoSync* | *POST* /tickets/{id}/update | Update a ticket's custom field values (server-access details, etc.).
*updateTicketInfoASync* | *POST* /tickets/{id}/update | Update a ticket's custom field values (server-access details, etc.).


### VPSManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addVpsSync* | *POST* /vps/order | Place a new VPS order, create the invoice, and queue provisioning.
*addVpsASync* | *POST* /vps/order | Place a new VPS order, create the invoice, and queue provisioning.
*deleteVpsBackupSync* | *DELETE* /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible).
*deleteVpsBackupASync* | *DELETE* /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible).
*doVpsBlockSmtpSync* | *GET* /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse.
*doVpsBlockSmtpASync* | *GET* /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse.
*doVpsDisableCdSync* | *GET* /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration.
*doVpsDisableCdASync* | *GET* /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration.
*doVpsDisableQuotaSync* | *GET* /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS.
*doVpsDisableQuotaASync* | *GET* /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS.
*doVpsEjectCdSync* | *GET* /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive).
*doVpsEjectCdASync* | *GET* /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive).
*doVpsEnableQuotaSync* | *GET* /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS.
*doVpsEnableQuotaASync* | *GET* /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS.
*doVpsRestartSync* | *GET* /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes.
*doVpsRestartASync* | *GET* /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes.
*doVpsStartSync* | *GET* /vps/{id}/start | Power on a stopped VPS instance.
*doVpsStartASync* | *GET* /vps/{id}/start | Power on a stopped VPS instance.
*doVpsStopSync* | *GET* /vps/{id}/stop | Power off a running VPS — billing continues until cancellation.
*doVpsStopASync* | *GET* /vps/{id}/stop | Power off a running VPS — billing continues until cancellation.
*downloadVpsBackupSync* | *PATCH* /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup.
*downloadVpsBackupASync* | *PATCH* /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup.
*getNewVpsSync* | *GET* /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing.
*getNewVpsASync* | *GET* /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing.
*getVpsBackupSync* | *GET* /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS.
*getVpsBackupASync* | *GET* /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS.
*getVpsBackupsSync* | *GET* /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS.
*getVpsBackupsASync* | *GET* /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS.
*getVpsBuyHdSpaceSync* | *GET* /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS.
*getVpsBuyHdSpaceASync* | *GET* /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS.
*getVpsBuyIpSync* | *GET* /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS.
*getVpsBuyIpASync* | *GET* /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS.
*getVpsChangeHostnameSync* | *GET* /vps/{id}/change_hostname | Read the VPS's current hostname before changing it.
*getVpsChangeHostnameASync* | *GET* /vps/{id}/change_hostname | Read the VPS's current hostname before changing it.
*getVpsChangeRootPasswordSync* | *GET* /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password.
*getVpsChangeRootPasswordASync* | *GET* /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password.
*getVpsChangeTimezoneSync* | *GET* /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS.
*getVpsChangeTimezoneASync* | *GET* /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS.
*getVpsInfoSync* | *GET* /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons.
*getVpsInfoASync* | *GET* /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons.
*getVpsInsertCdSync* | *GET* /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive.
*getVpsInsertCdASync* | *GET* /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive.
*getVpsInvoicesSync* | *GET* /vps/{id}/invoices | List all billing invoices associated with this specific VPS.
*getVpsInvoicesASync* | *GET* /vps/{id}/invoices | List all billing invoices associated with this specific VPS.
*getVpsListSync* | *GET* /vps | List all VPS services on the customer's account.
*getVpsListASync* | *GET* /vps | List all VPS services on the customer's account.
*getVpsReinstallOsSync* | *GET* /vps/{id}/reinstall_os | List OS templates compatible with this VPS's hypervisor for reinstall.
*getVpsReinstallOsASync* | *GET* /vps/{id}/reinstall_os | List OS templates compatible with this VPS's hypervisor for reinstall.
*getVpsResetPasswordSync* | *GET* /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value.
*getVpsResetPasswordASync* | *GET* /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value.
*getVpsReverseDnsSync* | *GET* /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS.
*getVpsReverseDnsASync* | *GET* /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS.
*getVpsSetupVncSync* | *GET* /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS.
*getVpsSetupVncASync* | *GET* /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS.
*getVpsSlicesSync* | *GET* /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost.
*getVpsSlicesASync* | *GET* /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost.
*getVpsTrafficUsageSync* | *GET* /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS.
*getVpsTrafficUsageASync* | *GET* /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS.
*getVpsViewDesktopSync* | *GET* /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS.
*getVpsViewDesktopASync* | *GET* /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS.
*getVpsWelcomeEmailSync* | *GET* /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials.
*getVpsWelcomeEmailASync* | *GET* /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials.
*postVpsBuyHdSpaceSync* | *POST* /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice.
*postVpsBuyHdSpaceASync* | *POST* /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice.
*postVpsBuyIpSync* | *POST* /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice.
*postVpsBuyIpASync* | *POST* /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice.
*postVpsChangeHostnameSync* | *POST* /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP.
*postVpsChangeHostnameASync* | *POST* /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP.
*postVpsChangeRootPasswordSync* | *POST* /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS.
*postVpsChangeRootPasswordASync* | *POST* /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS.
*postVpsChangeTimezoneSync* | *POST* /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS.
*postVpsChangeTimezoneASync* | *POST* /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS.
*postVpsChangeWebuzoPasswordSync* | *POST* /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required).
*postVpsChangeWebuzoPasswordASync* | *POST* /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required).
*postVpsInsertCdSync* | *POST* /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL.
*postVpsInsertCdASync* | *POST* /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL.
*postVpsReinstallOsSync* | *POST* /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth).
*postVpsReinstallOsASync* | *POST* /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth).
*postVpsResetPasswordSync* | *POST* /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value.
*postVpsResetPasswordASync* | *POST* /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value.
*postVpsRestoreSync* | *POST* /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk).
*postVpsRestoreASync* | *POST* /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk).
*postVpsReverseDnsSync* | *POST* /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs.
*postVpsReverseDnsASync* | *POST* /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs.
*postVpsSetupVncSync* | *POST* /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS.
*postVpsSetupVncASync* | *POST* /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS.
*postVpsSlicesSync* | *POST* /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade).
*postVpsSlicesASync* | *POST* /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade).
*postVpsTrafficUsageSync* | *POST* /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved).
*postVpsTrafficUsageASync* | *POST* /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved).
*postVpsViewDesktopSync* | *POST* /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes.
*postVpsViewDesktopASync* | *POST* /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes.
*putVpsSync* | *PUT* /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge.
*putVpsASync* | *PUT* /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge.
*putVpsBuyHdSpaceSync* | *PUT* /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run.
*putVpsBuyHdSpaceASync* | *PUT* /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run.
*updateVpsInfoSync* | *POST* /vps/{id} | Update editable settings on a VPS service record.
*updateVpsInfoASync* | *POST* /vps/{id} | Update editable settings on a VPS service record.
*vPSCancelSync* | *DELETE* /vps/{id} | Cancel a VPS service at the end of the current billing cycle.
*vPSCancelASync* | *DELETE* /vps/{id} | Cancel a VPS service at the end of the current billing cycle.


### WebhostingManager
Method | HTTP request | Description
------------- | ------------- | -------------
*addWebsiteSync* | *POST* /websites/order | Place a new webhosting order, create the invoice, and queue provisioning.
*addWebsiteASync* | *POST* /websites/order | Place a new webhosting order, create the invoice, and queue provisioning.
*getNewWebsiteSync* | *GET* /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing.
*getNewWebsiteASync* | *GET* /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing.
*getWebsiteBuyIpSync* | *GET* /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing.
*getWebsiteBuyIpASync* | *GET* /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing.
*getWebsiteInfoSync* | *GET* /websites/{id} | Read full configuration and status detail for one webhosting service.
*getWebsiteInfoASync* | *GET* /websites/{id} | Read full configuration and status detail for one webhosting service.
*getWebsiteInvoicesSync* | *GET* /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website.
*getWebsiteInvoicesASync* | *GET* /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website.
*getWebsiteListSync* | *GET* /websites | List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services.
*getWebsiteListASync* | *GET* /websites | List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services.
*getWebsitesBackupsSync* | *GET* /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive.
*getWebsitesBackupsASync* | *GET* /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive.
*getWebsitesLoginSync* | *GET* /websites/{id}/login | Get a one-time auto-login URL for the website's control panel.
*getWebsitesLoginASync* | *GET* /websites/{id}/login | Get a one-time auto-login URL for the website's control panel.
*getWebsitesWelcomeEmailSync* | *GET* /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL.
*getWebsitesWelcomeEmailASync* | *GET* /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL.
*gettWebsiteReverseDnsSync* | *GET* /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website's IPs.
*gettWebsiteReverseDnsASync* | *GET* /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website's IPs.
*postWebsiteBuyIpSync* | *POST* /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records.
*postWebsiteBuyIpASync* | *POST* /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records.
*postWebsiteMigrationSync* | *POST* /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host.
*postWebsiteMigrationASync* | *POST* /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host.
*postWebsitesReverseDnsSync* | *POST* /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs.
*postWebsitesReverseDnsASync* | *POST* /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs.
*putWebsitesSync* | *PUT* /websites/order | Validate a webhosting order and preview cost — dry run, no charge.
*putWebsitesASync* | *PUT* /websites/order | Validate a webhosting order and preview cost — dry run, no charge.
*updateWebsiteInfoSync* | *POST* /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible).
*updateWebsiteInfoASync* | *POST* /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible).
*webhostingCancelSync* | *DELETE* /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end.
*webhostingCancelASync* | *DELETE* /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *AccountFeatures* | Account Features data.
 *AccountInfo* | Contains the full account profile including personal info, billing details, OAuth connections, and security settings.
 *AccountInfoCountryCurrencies* | Maps country codes to their available currency options.
 *AccountInfoData* | Detailed account profile data including contact info, billing, API keys, and security settings.
 *AccountInfoDataCc* | Credit card information stored on the account.
 *AccountInfoDataCcs* | Collection of credit cards on the account, keyed by card ID.
 *AccountInfoData_email_settings* | 
 *AccountInfoData_extra* | 
 *AccountInfoData_fraudrecord* | 
 *AccountInfoLimits* | IP address ranges used to restrict account access to specific IPs.
 *AccountInfoLimits_inner* | 
 *AccountInfoMaxMindResponse* | MaxMind fraud detection scoring data for a credit card transaction.
 *AccountInfoMaxMindResponse_riskScore* | 
 *AccountInfoOauthConfig* | OAuth integration configuration including callback URL and available providers.
 *AccountInfoOauthConfigProviders* | Map of OAuth providers and their linked status on the account.
 *AccountInfoOauthConfigProviders_value* | 
 *AccountInfoPost* | Request to update account information.
 *AccountInfo_oauthproviders* | 
 *AccountSshKey* | SSH Keys
 *AddServer_200_response* | 
 *AffiliateBannerRow* | An affiliate banner image details.
 *AffiliateDockSetup* | Affiliate Landing Page information.
 *AffiliatePaymentSetup* | Affiliate Payment Setup.  Here you can set if you want the payments to go to `prepay` or `paypal` and the PayPal email address.
 *AffiliateTrafficRow* | Affiliate Web Traffic Entry
 *Backup* | Full detail view of a backup service including billing, service info, and configuration.
 *BackupBillingDetails* | 
 *BackupClientLink* | A navigation link for backup service actions in the client portal.
 *BackupExtraInfoTables* | Supplementary information tables for a backup service (IP info, etc.).
 *BackupIPInfo* | IP address information table for a backup service.
 *BackupIPInfoRow* | A single row in the backup IP information table.
 *BackupLoginResponse* | Login session response for backup storage.
 *BackupOrderPostResponse* | Backup Order Placement Response
 *BackupOrderPostResponse_cj_params* | 
 *BackupOrderPutRequest* | Parameters to submit to validate your backup order
 *BackupOrderPutResponse* | Backup Order validation response
 *BackupRow* | A result row from the `Backups` `GET` request.
 *BackupServiceInfo* | Core service record for a backup storage service including ID, status, quota, and billing details.
 *BackupServiceMaster* | 
 *BackupsOrder* | Available backup storage packages and pricing for ordering a new backup service.
 *BackupsOrderPackageCosts* | 
 *BackupsOrderServiceTypes* | 
 *BackupsOrder_serviceTypes* | 
 *BillingAddCcRequest* | Request to add a new creditcard into the system.
 *BillingInvoiceDetail* | Detailed invoice data payload returned for a single invoice.
 *BillingInvoiceList* | Summary list of invoices for the account.
 *BillingPaymentMethodRequest* | Payload for updating the default account payment method.
 *BillingPrepayRequest* | Request payload for creating a new prepay balance.
 *BillingVerifyCcRequest* | Payload for verifying a credit card through the verification flow.
 *BuyItNowList* | Marketplace buy it now servers list
 *BuyItNowRow* | A buy-it-now dedicated server listing from the marketplace, with hardware specs and pricing.
 *BuyItNowRow_cpu_inner* | 
 *BuyItNowRow_cpu_inner_oneOf* | 
 *BuyItNowServerOrder_200_response* | 
 *BuyItNowServerOrder_200_response_bandwidth_inner* | 
 *BuyItNowServerOrder_200_response_cp_inner* | 
 *BuyItNowServerOrder_200_response_ips_inner* | 
 *BuyItNowServerOrder_200_response_os_inner* | 
 *BuyItNowServerOrder_200_response_raid_inner* | 
 *CancelBackup_200_response* | 
 *CancelDomain_200_response* | 
 *CancelScrubIp_200_response* | 
 *CaptchaResponse* | A base-64 encoded captcha image.
 *ChargeInvoiceRows* | Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.
 *ChargeInvoiceRows_invoices_value* | 
 *ChargeInvoiceRows_invoices_value_paid_invoices_value* | 
 *ChargeInvoiceRows_invoices_value_paid_invoices_value_refund_invoices_value* | 
 *CloseTicketResponseSchema* | 
 *CreateFilter* | Create firewall rule for your ip
 *CreateFilter_201_response* | 
 *CreateFilter_400_response* | 
 *CreateFilter_500_response* | 
 *CreateFirewallRule* | Create firewall rule for your ip
 *CreateGeoFirewallRule* | Create firewall rule for your ip
 *CreateGeoRule_400_response* | 
 *CreateRule_201_response* | 
 *CreateRule_400_response* | 
 *CreateRule_500_response* | 
 *DeleteFilter_200_response* | 
 *DeleteFilter_400_response* | 
 *DeleteFilter_500_response* | 
 *DeleteMailAlert_request* | 
 *Delete_Firewall_Rule* | Delete firewall rule for your ip
 *Delete_Geo_Firewall_Rule* | Delete geo firewall rule for your scrub ip
 *DenyRuleNew* | The data for a email deny rule record.
 *DenyRuleRecord* | The data for a email deny rule record.
 *DisableScrub_200_response* | 
 *DisableScrub_400_response* | 
 *DisableScrub_500_response* | 
 *DnsListItem* | A DNS zone entry with its ID, domain name, and record content.
 *DnsNewDomain* | The request for a new domain to be managed by the dns servers.
 *DnsNewRecord* | Request data for a new DNS record.
 *DnsRecord* | A single DNS Record row for a Domain
 *DnsRecordType* | Type of DNS Record
 *DnsUpdateRecord* | The request data to update a dns record.
 *Domain* | Full detail view of a domain service including billing, contacts, DNS, and configuration.
 *DomainAdminContact* | Administrative contact information for a domain registration.
 *DomainAllInfo* | Complete domain registration information returned from the registrar, including contacts, nameservers, and expiry dates.
 *DomainAllInfo_attributes* | 
 *DomainAllInfo_attributes_contact_set* | 
 *DomainBillingDetails* | Billing information for a domain service including payment status, dates, and cost.
 *DomainBillingExtra* | Extended billing context for a domain including registrar order details and contact info.
 *DomainClientLink* | Links and labels for domain-related UI actions.
 *DomainContactDetails* | Contact details used for domain registrant/admin/technical/billing records.
 *DomainDnssecRecords* | DNSSEC DS records currently configured for a domain.
 *DomainDnssecRecords_inner* | 
 *DomainDnssecRequest* | Request payload for adding DNSSEC DS records to a domain.
 *DomainLookupResponse* | Availability, pricing, and order-field metadata for a domain lookup.
 *DomainNameServer* | A single registered nameserver entry with glue IPs.
 *DomainNameserverGetResponse* | List of registered nameserver hosts with glue record metadata.
 *DomainNameserverGetResponse_inner* | 
 *DomainNameserverPostRequest* | Payload for adding a registered nameserver (glue record).
 *DomainNameserverPutRequest* | Payload for replacing the assigned nameserver list for a domain.
 *DomainOrder* | Ordering metadata for domain registration and transfers.
 *DomainOrderRequest* | Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 *DomainOrderResponse* | Registrar response metadata returned after a domain order.
 *DomainOrderResponse_attributes* | 
 *DomainOrderServices10001* | Example schema for a domain service catalog entry.
 *DomainOrder_services* | Available domain service catalog entries keyed by service ID.
 *DomainOwnerContact* | Contact details for the registered domain owner.
 *DomainProvProcessPending* | Provisioning status data for a pending domain order.
 *DomainProvProcessPending_attributes* | 
 *DomainRow* | A result row from the `Domains` `GET` request.
 *DomainSearchResponse* | Lookup and suggestion results returned for a domain search.
 *DomainServiceInfo* | Detailed domain service record for a domain order.
 *DomainServiceType* | Service type definition for a domain registration, including name, pricing, and category.
 *DomainTechContact* | Technical contact information for a domain registration.
 *DomainWhoisPrivacyRequest* | Request payload for enabling or disabling Whois privacy.
 *DownloadQsBackup_200_response* | 
 *DownloadQsBackup_request* | 
 *EmailAddress* | an email address
 *EmailAddressName* | An email contact.
 *EnableScrub_200_response* | 
 *EnableScrub_500_response* | 
 *FloatingIpOrderRequest* | Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 *Floating_ipsCancel_200_response* | 
 *GenericResponse* | Generic Response
 *GetAccountInfo_401_response* | 
 *GetAccountLocales_200_response_value* | 
 *GetAccountTfaSetup_200_response* | 
 *GetAffiliateSignups_200_response* | 
 *GetOauthRedirect_200_response* | 
 *GetOrderDetail_200_response* | 
 *GetOrderDetail_200_response_ips_inner* | 
 *GetOrderDetail_200_response_packageCosts* | 
 *GetOrderDetail_200_response_serviceTypes_inner* | 
 *GetScrubIpDetails_200_response* | 
 *GetScrubIpDetails_200_response_billingDetails* | 
 *GetScrubIpDetails_200_response_client_links_inner* | 
 *GetScrubIpDetails_200_response_extraInfoTables* | 
 *GetScrubIpDetails_200_response_extraInfoTables_scrub_ips* | 
 *GetScrubIpDetails_200_response_extraInfoTables_scrub_ips_rows_inner* | 
 *GetScrubIpDetails_200_response_filter_firewall* | 
 *GetScrubIpDetails_200_response_filter_firewall_filters_inner* | 
 *GetScrubIpDetails_200_response_filter_firewall_rules_inner* | 
 *GetScrubIpDetails_200_response_serviceInfo* | 
 *GetWebsiteBuyIp_200_response* | 
 *Home* | 
 *HomeDetailsModulesBackups* | Dashboard module configuration for backup storage services.
 *HomeDetailsModulesDomains* | Dashboard module configuration for domain registration services.
 *HomeDetailsModulesLicenses* | Dashboard module configuration for software license services.
 *HomeDetailsModulesQuickservers* | Dashboard module configuration for QuickServer services.
 *HomeDetailsModulesServers* | Dashboard module configuration for dedicated server services.
 *HomeDetailsModulesVps* | Dashboard module configuration for VPS services.
 *HomeDetailsModulesWebhosting* | Dashboard module configuration for webhosting services.
 *HomeServicesDomainsLinks* | Map of domain service IDs to their hostnames for the account dashboard.
 *HomeServicesLicensesLinks* | Map of license service IDs to their IP addresses for the account dashboard.
 *HomeServicesServersLinks* | Map of dedicated server service IDs to their hostnames for the account dashboard.
 *HomeServicesVpsLinks* | Map of VPS service IDs to their hostnames for the account dashboard.
 *HomeServicesWebhostingLinks* | Map of webhosting service IDs to their hostnames for the account dashboard.
 *Home_details* | Users details.
 *Home_details_modules* | 
 *Home_services* | Users services.
 *Home_services_backups* | 
 *Home_services_domains* | 
 *Home_services_licenses* | 
 *Home_services_servers* | 
 *Home_services_vps* | 
 *Home_services_webhosting* | 
 *Home_ticketStatus* | Ticket statuses.
 *Home_ticketStatusView* | Ticket statuses with view numbers.
 *HostnameObject* | Request specifying the hostname.
 *InitiatePayment_200_response* | 
 *IpLimitRange* | The lower and upper bounds of an ip range.
 *IpObject* | IP Address
 *License* | 
 *LicenseBillingDetails* | Billing information for a software license including payment status, billing cycle, and cost.
 *LicenseClientLink* | 
 *LicenseIpInfo* | IP address information table for a software license service.
 *LicenseIpInfoRow* | A single row in the license IP information table.
 *LicenseOrderRequest* | Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 *LicenseRow* | A result row from the `Licenses` `GET` request.
 *LicenseServiceInfo* | 
 *LicenseServiceType* | Service type definition for a software license, including name, pricing, and category.
 *License_extraInfoTables* | 
 *LicensesCancel_200_response* | 
 *LicensesOrder* | Available license packages and pricing for ordering a new software license.
 *LicensesOrderServiceCategories509* | 
 *LicensesOrderServiceTypes11482* | 
 *LicensesOrder_packageCosts* | Costs of license packages
 *LicensesOrder_serviceCategories* | License service categories
 *LicensesOrder_serviceTypes* | Types of license services
 *LoginErrorResponse* | Error resposne during login indicating further action.
 *LoginInfo* | Basic information useful for rendering a login page.
 *LoginServiceCounts* | Order counts per module.
 *LoginSubmissionExample* | The data to submit in the login request.
 *LoginSubmissionExample_g_recaptcha_response* | 
 *LoginSubmissionExample_g_recaptcha_response_dep* | 
 *LoginSuccessResponse* | The response from a successful login.
 *MailAlertRequest* | Payload for creating a mail alert.
 *MailAlertUpdateRequest* | Payload for updating an existing mail alert.
 *MailAlertsResponse* | Alert configuration entries for a mail service.
 *MailAlertsResponse_inner* | 
 *MailAttachment* | (optional) File attachments to include in the email.  The file contents must be base64
 *MailBillingDetails* | Billing information for a mail service including payment status, billing cycle, and cost.
 *MailBlockClickHouse* | A block entry from the clickhouse mailblocks server.
 *MailBlockRspamd* | This is a block entry from the rspamd block list.
 *MailBlocks* | The listing of blocked emails.
 *MailCancel_200_response* | 
 *MailClientLink* | A navigation link for mail service actions in the client portal.
 *MailDelistRequest* | Payload for removing a sender from mail blocklists.
 *MailDelistResponse* | Blocklist status information for a mail service.
 *MailDeliverabilityResponse* | Deliverability statistics for a mail service.
 *MailExtraInfoTable* | A supplementary information table for a mail service (e.g., connection details).
 *MailExtraInfoTableRow* | A single row in the mail service supplementary information table.
 *MailLog* | Paginated mail log response.  Contains the full matched count (`total`) plus a page of `MailLogEntry` records.  The `total` reflects the grouping mode: with `groupby=recipient` it counts delivery attempts, with `groupby=message` it counts unique messages.
 *MailLogEntry* | A single email record in the mail log.  Combines data from the message store (envelope metadata), the queue release table (delivery status and response), and the sender delivery table (MX routing details).  When `groupby=recipient` each row represents one delivery attempt; when `groupby=message` delivery fields reflect one arbitrary recipient.
 *MailOrder* | A mail order record
 *MailOrderRequest* | Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 *MailRow* | A result row from the `Mail` `GET` request.
 *MailSchema* | 
 *MailSchema_extraInfoTables* | Additional information tables for the mail service.
 *MailServiceInfo* | 
 *MailServiceType* | Service type definition for a mail service, including name, pricing, and category.
 *MailStatsType* | Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.
 *MailStatsType_volume* | 
 *MailStatsType_volume_from* | 
 *MailStatsType_volume_ip* | 
 *MailStatsType_volume_to* | 
 *MailTutorialsTable* | A table of tutorial links displayed for a mail service.
 *MailTutorialsTableRow* | A single tutorial entry with a label and URL.
 *ModuleSettings* | The settings for a module.
 *Modules* | The modules and settings.
 *MonthlyCounts* | A map of month labels (e.g., \"2024-01\") to counts for a specific mail status.
 *PasswordRequest* | Request containing a password
 *PatchBillingCreditCardVerify_request* | 
 *PatchOauthTwoFactor_200_response* | 
 *PatchOauthTwoFactor_request* | 
 *PlaceBuyNowServer_request* | 
 *PlaceScrubOrder_201_response* | 
 *PlaceScrubOrder_201_response_order_details* | 
 *PlaceScrubOrder_201_response_order_details_cj_params* | 
 *PostOauthCallback_200_response* | 
 *PostOauthCallback_request* | 
 *PostWebsiteBuyIp_200_response* | 
 *PostWebsiteBuyIp_request* | 
 *PostWebsiteMigration_200_response* | 
 *PostWebsiteMigration_request* | 
 *PutScrubIps_200_response* | 
 *QsOrderRequest* | Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 *QueueResponse* | Response after sending an action queue to a service.
 *Quickserver* | 
 *QuickserverAddons* | 
 *QuickserverAddonsRow* | A single add-on item associated with a QuickServer service.
 *QuickserverBillingDetails* | Billing information for a QuickServer service including payment status, billing cycle, and cost.
 *QuickserverClientLink* | A navigation link for QuickServer-related actions in the client portal.
 *QuickserverIpInfo* | IP address information table for a QuickServer service.
 *QuickserverIpTableRow* | A single row in the QuickServer IP information table.
 *QuickserverOrder* | Available QuickServer options and OS templates for ordering a new QuickServer.
 *QuickserverOrderDistroSelUbuntu* | 
 *QuickserverOrderServerDetails381* | 
 *QuickserverOrderTemplatesUbuntu64* | Ubuntu template details.
 *QuickserverOrderVersionCentosstream8* | 
 *QuickserverOrder_distro_sel* | Distribution selection.
 *QuickserverOrder_server_details* | Server details.
 *QuickserverOrder_templates* | Templates details.
 *QuickserverOrder_version* | Version details.
 *QuickserverRow* | A result row from the `Quickservers` `GET` request.
 *QuickserverServiceExtra* | 
 *QuickserverServiceInfo* | Core service record for a QuickServer including ID, status, IP, OS, and billing details.
 *QuickserverServiceMaster* | Information about the host node running this QuickServer, including hardware specs and resource utilization.
 *Quickserver_extraInfoTables* | 
 *Quickserver_serviceExtra* | 
 *QuickserversCancel_200_response* | 
 *ReplyTicketRequest* | Post reply to your ticket
 *ReplyTicketResponseSchema* | 
 *RestoreRequest* | Request data to trigger a restore from backup.
 *ReverseDnsEntries* | The Reverse DNS entries.
 *ScrubIpFilterTypes* | Available scrub filter types for building firewall rules.
 *ScrubIpFilterTypes_filters_value* | 
 *ScrubIpPlaceOrder* | Place ScrubIP Order
 *ScrubIpsDeleteRule_200_response* | 
 *ScrubIpsDeleteRule_400_response* | 
 *ScrubIpsDeleteRule_500_response* | 
 *ScrubIpsLogRowSchema* | 
 *ScrubIpsRowSchema* | 
 *SearchAutocompleteResponse* | Autocomplete search results for the authenticated account.
 *SendMail* | Details for an Email
 *SendMailAdv* | Details for an Email
 *Server* | 
 *ServerAsset* | 
 *ServerAssets* | 
 *ServerBillingDetails* | Billing information for a dedicated server service including payment status, billing cycle, and cost.
 *ServerBulkIpmiPowerResponse* | Per-server IPMI power-status results for a bulk lookup.
 *ServerBulkIpmiPowerResponse_results_inner* | 
 *ServerClientLink* | 
 *ServerExtraInfoTables* | 
 *ServerIpmiLiveInfo* | Information about the IPMI connection.
 *ServerIpmiLiveRequest* | Request body to setup an IPMI Live connection.
 *ServerIpmiPowerRequest* | IPMI Power command for servers
 *ServerLease* | 
 *ServerLocation1* | 
 *ServerNetworkInfo* | 
 *ServerNetworkInfo_assets* | Object containing asset information.
 *ServerNetworkInfo_switchports* | Object containing switchport information.
 *ServerOrder* | Object representing a server order.
 *ServerOrderBandwidth* | A bandwidth option available when ordering a dedicated server.
 *ServerOrderCPU* | A CPU option available when ordering a dedicated server.
 *ServerOrderConfigIds* | Configuration IDs for the server order.
 *ServerOrderControlPanel* | A control panel option available when ordering a dedicated server.
 *ServerOrderFieldLabel* | A display label for a field in the server order form.
 *ServerOrderFieldLabels* | Field labels for the server order.
 *ServerOrderFormValues* | Form values for the server order.
 *ServerOrderIP* | An IP block option available when ordering a dedicated server.
 *ServerOrderMemory* | A memory (RAM) option available when ordering a dedicated server.
 *ServerOrderOS* | An operating system option available when ordering a dedicated server.
 *ServerOrderPostRequest* | Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 *ServerOrderPostRequest_hd* | Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 *ServerOrderRAID* | A RAID configuration option available when ordering a dedicated server.
 *ServerOrder_bandwidth_li* | Bandwidth options for the server order.
 *ServerOrder_cp_li* | Control Panel options for the server order.
 *ServerOrder_cpu_li* | CPU options for the server order.
 *ServerOrder_ips_li* | IP options for the server order.
 *ServerOrder_memory_li* | Memory options for the server order.
 *ServerOrder_memory_li_254* | 
 *ServerOrder_os_li* | Operating System options for the server order.
 *ServerRow* | A result row from the `Servers` `GET` request.
 *ServerServiceInfo* | 
 *ServerSwitchport* | 
 *Server_locations* | 
 *ServersBuyNowError* | Error response when a buy-it-now server order fails validation.
 *ServersBuyNowResponse* | Success response after placing a buy-it-now dedicated server order.
 *ServersBuyNowResponse_order_details* | Details of the placed order.
 *ServersCancel_200_response* | 
 *Service* | An individual package tied to one of our services.
 *ServiceCategories* | The listing of the categories for the services.
 *ServiceCategory* | A Category of Services.  This is the broadest grouping within a module.
 *ServiceOrderPostResponse* | Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.
 *ServiceType* | A general grouping of services within a category.
 *ServiceTypes* | The listing of service types
 *Services* | The list of service packages.
 *ServicesInfo* | Contains the complete catalog of available modules, services, service types, and service categories.
 *SslCancel_200_response* | 
 *SslOrderRequest* | Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 *StatusMonthlyBreakdown* | Monthly mail delivery status breakdown, showing counts per status category.
 *SuccessTextResponse* | Response with success flag and text description.
 *TemplateRequest* | VPS OS Template Request
 *TextResponse* | Text Response Object
 *TicketCustomFieldDetails* | Optional fields providing additional info in ticket
 *TicketDetails* | Detailed ticket information
 *TicketNew* | New helpdesk ticket request.  
 *TicketNewResponse* | Response returned after creating a new support ticket.
 *TicketPostDetails* | Fetches every posts of ticket
 *TicketPostDetails_inner* | 
 *Tickets* | A listing of support tickets.
 *TicketsRow* | Information about a single ticket.
 *Tickets_countArray* | 
 *TimezoneUpdate* | The request to update the time zone of a vps.
 *UpdateAccountTfa_request* | 
 *UpdateTicket* | Update custom fields of the ticket
 *UpdateTicketResponseSchema* | 
 *UrlRequest* | URL
 *VPSCancel_200_response* | 
 *VPSTrafficDataDataSectionResponse* | VPS Traffic Data section Data subsection Row Response
 *VPSTrafficDataDataSectionResponse_inner* | 
 *ViewMailLog_startDate_parameter* | 
 *ViewTicketResponse* | Ticket details
 *Vps* | 
 *VpsBackupRow* | A single backed-up item and information about it.
 *VpsBackupRows* | The listing of the backups for your service.
 *VpsBillingDetails* | Billing information for a VPS service including payment status, billing cycle, and cost.
 *VpsCPData* | Control panel license options available for a VPS.
 *VpsClientLink* | A navigation link for VPS-related actions in the client portal.
 *VpsDAData* | DirectAdmin license options available for a VPS.
 *VpsDALicense* | A DirectAdmin license tier option.
 *VpsExtraInfoTables* | Additional informational tables displayed for a VPS service.
 *VpsIPInfo* | IP address information table for a VPS service.
 *VpsIPInfoRow* | 
 *VpsOrder* | Pricing and configuration options for ordering a new VPS, including slice costs by platform and available OS templates.
 *VpsOrderPostRequest* | request to validate a vps order
 *VpsOrderPutRequest* | request to validate a vps order
 *VpsOrderPutResponse* | Response from VPS order validation request
 *VpsOrder_locationNames* | Location Names
 *VpsOrder_locationStock* | Location Stock
 *VpsOrder_locationStock_1* | 
 *VpsOrder_osNames* | OS Names
 *VpsOrder_packageCosts* | Package Costs
 *VpsOrder_platformNames* | Platform Names
 *VpsOrder_platformPackages* | Platform Packages
 *VpsOrder_serviceTypes* | Service Types
 *VpsOrder_serviceTypes_32* | 
 *VpsOrder_templates* | Templates
 *VpsOrder_templates_hyperv* | 
 *VpsOrder_templates_hyperv_windows* | 
 *VpsPlesk12Data* | 
 *VpsPleskLicense* | 
 *VpsRow* | A result row from the `Vps` `GET` request.
 *VpsServiceAddons* | Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.
 *VpsServiceExtra* | 
 *VpsServiceInfo* | 
 *VpsServiceMaster* | Information about the host node (hypervisor) running this VPS, including hardware specs and resource utilization.
 *VpsSnapshot* | A VPS snapshot (point-in-time backup) stored on the host node.
 *VpsTemplateRow* | A VPS OS Template.
 *VpsTemplatesList* | A listing of the OS Templates available for use.
 *VpsTrafficDataSectionResponse* | VPS Traffic Data Section Response
 *VpsTrafficHistoryResponse* | VPS Traffic Data History Section
 *VpsTrafficHistorySectionDataResponse* | VPS Traffic Hisotrty Data Row of Hour/Day Section
 *VpsTrafficHistorySectionResponse* | VPS Traffic History Hour and Day Sections
 *VpsTrafficResponse* | VPS Traffic Information
 *VpsTrafficTotalsResposne* | VPS Traffic Totals Section
 *VpsTrafficTotalsSectionResponse* | VPS Traffic Totals Secttions Data
 *VpsTrafficUsageAverageResponse* | VPS Traffic Usage Average Section
 *VpsTrafficUsageAverageSectionResponse* | VPS Traffic Usage Average Section Response
 *VpsTrafficUsageResponse* | VPS Traffic Usage Section
 *WebhostingCancel_200_response* | 
 *Website* | Full detail view of a webhosting service including billing, service configuration, and panel access links.
 *WebsiteBackups* | List of available backups for a webhosting service with their names and sizes.
 *WebsiteBackups_inner* | 
 *WebsiteBillingDetails* | Billing information for a webhosting service including payment status, billing cycle, and cost.
 *WebsiteClientLink* | A navigation link for webhosting-related actions in the client portal.
 *WebsiteExtraInfoTables* | Supplementary information tables displayed for a webhosting service (links, DNS, preview).
 *WebsiteLoginResponse* | Response from a website login request.
 *WebsiteOrderPostRequest* | request to place a webhosting order
 *WebsiteOrderPutRequest* | request to validate a webhosting order
 *WebsiteRow* | A result row from the `Webhosting` `GET` request.
 *WebsiteServiceInfo* | 
 *WebsiteServiceMaster* | 
 *WebsiteTable* | 
 *WebsiteTableRow* | 
 *WebsitesOrder* | Schema for the WebsitesOrder object
 *WebsitesOrderJsonServiceOffers* | Schema for the jsonServiceOffers field in WebsitesOrder
 *WebsitesOrderJsonServiceOffersItem* | 
 *WebsitesOrderJsonServices* | Schema for the jsonServices field in WebsitesOrder
 *WebsitesOrderPackages* | Schema for the packages field in WebsitesOrder
 *WebsitesOrderPackagesInfo* | 
 *WebsitesOrderServiceOffer* | 
 *WebsitesOrderServiceTypes* | 
 *WebsitesOrder_packges* | The packages data.
 *WebsitesOrder_serviceOffers* | The service offers data.
 *WebsitesOrder_serviceTypes* | The service types data.

