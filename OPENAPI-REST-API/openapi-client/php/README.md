# InterserverMyAdmin

# Overview

The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.

The API covers the following service categories:
- [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management
- [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting
- [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers
- [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html)
- [Backups](https://www.interserver.net/storage/) — storage and backup services
- Licenses — control panel and software licenses
- [Mail](https://www.mail.baby/) — mail delivery services
- SSL — certificate provisioning
- Billing — invoices, payment methods, and account management

For interactive testing, see the [API documentation](/api-docs/).

# Authentication

Most endpoints require authentication. Two methods are supported:

## API Key (Preferred)

Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the `X-API-KEY` request header:

```
X-API-KEY: your-api-key-here
```

## Session-Based Authentication

Alternatively, authenticate by creating a session:

1. **Log in** — Send a `POST` request to `/login` with your account credentials. The response includes a session identifier.
2. **Pass the session ID** — Include the session identifier in the `sessionid` header on subsequent requests:

```
sessionid: your-session-id-here
```

API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.



For more information, please visit [https://www.interserver.net/contact-us.html](https://www.interserver.net/contact-us.html).

## Installation & Usage

### Requirements

PHP 7.2 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/interserver/myadmin-client-php.git"
    }
  ],
  "require": {
    "interserver/myadmin-client-php": "*@dev"
  }
}
```

Then run `composer install`

Your project is free to choose the http client of your choice
Please require packages that will provide http client functionality:
https://packagist.org/providers/psr/http-client-implementation
https://packagist.org/providers/php-http/async-client-implementation
https://packagist.org/providers/psr/http-factory-implementation

As an example:

```
composer require guzzlehttp/guzzle php-http/guzzle7-adapter http-interop/http-factory-guzzle
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/InterserverMyAdmin/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: sessionIdCookieAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

// Configure API key authorization: apiKeyAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');

// Configure API key authorization: sessionIdHeaderAuth
$config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Interserver\\MyAdmin\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');


$apiInstance = new Interserver\\MyAdmin\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string

try {
    $result = $apiInstance->deleteAccountOauthName($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccountOauthName: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://my.interserver.net/apiv2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccountOauthName**](docs/Api/AccountApi.md#deleteaccountoauthname) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
*AccountApi* | [**deleteAccountTfa**](docs/Api/AccountApi.md#deleteaccounttfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
*AccountApi* | [**deleteIpLimit**](docs/Api/AccountApi.md#deleteiplimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
*AccountApi* | [**getAccountInfo**](docs/Api/AccountApi.md#getaccountinfo) | **GET** /account | Read full account profile, billing address, and security settings
*AccountApi* | [**getAccountTfaSetup**](docs/Api/AccountApi.md#getaccounttfasetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
*AccountApi* | [**getHome**](docs/Api/AccountApi.md#gethome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
*AccountApi* | [**getSearch**](docs/Api/AccountApi.md#getsearch) | **GET** /search | Global autocomplete across the caller&#39;s services, domains, and records
*AccountApi* | [**logout**](docs/Api/AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
*AccountApi* | [**logoutAccountOauth**](docs/Api/AccountApi.md#logoutaccountoauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
*AccountApi* | [**updateAccountApiKey**](docs/Api/AccountApi.md#updateaccountapikey) | **POST** /account/apikey | Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately
*AccountApi* | [**updateAccountFeatures**](docs/Api/AccountApi.md#updateaccountfeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
*AccountApi* | [**updateAccountInfo**](docs/Api/AccountApi.md#updateaccountinfo) | **POST** /account | Update contact and billing-address fields on the customer profile
*AccountApi* | [**updateAccountIpLimits**](docs/Api/AccountApi.md#updateaccountiplimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe)
*AccountApi* | [**updateAccountPassword**](docs/Api/AccountApi.md#updateaccountpassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
*AccountApi* | [**updateAccountSshKey**](docs/Api/AccountApi.md#updateaccountsshkey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
*AccountApi* | [**updateAccountTfa**](docs/Api/AccountApi.md#updateaccounttfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account
*BackupsApi* | [**addBackup**](docs/Api/BackupsApi.md#addbackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
*BackupsApi* | [**cancelBackup**](docs/Api/BackupsApi.md#cancelbackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
*BackupsApi* | [**getBackupInfo**](docs/Api/BackupsApi.md#getbackupinfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
*BackupsApi* | [**getBackupInvoices**](docs/Api/BackupsApi.md#getbackupinvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
*BackupsApi* | [**getBackupLogin**](docs/Api/BackupsApi.md#getbackuplogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
*BackupsApi* | [**getBackupsList**](docs/Api/BackupsApi.md#getbackupslist) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
*BackupsApi* | [**getBackupsWelcomeEmail**](docs/Api/BackupsApi.md#getbackupswelcomeemail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
*BackupsApi* | [**getNewBackup**](docs/Api/BackupsApi.md#getnewbackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
*BackupsApi* | [**updateBackupInfo**](docs/Api/BackupsApi.md#updatebackupinfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
*BackupsApi* | [**validateBackupOrder**](docs/Api/BackupsApi.md#validatebackuporder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging
*BillingApi* | [**addBillingCreditCard**](docs/Api/BillingApi.md#addbillingcreditcard) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow
*BillingApi* | [**addBillingPrepay**](docs/Api/BillingApi.md#addbillingprepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
*BillingApi* | [**deleteBillingCreditCard**](docs/Api/BillingApi.md#deletebillingcreditcard) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account
*BillingApi* | [**deleteBillingInvoice**](docs/Api/BillingApi.md#deletebillinginvoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
*BillingApi* | [**deleteBillingPrepay**](docs/Api/BillingApi.md#deletebillingprepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
*BillingApi* | [**getAffiliateBanners**](docs/Api/BillingApi.md#getaffiliatebanners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions
*BillingApi* | [**getAffiliateDownload**](docs/Api/BillingApi.md#getaffiliatedownload) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
*BillingApi* | [**getAffiliateRichReport**](docs/Api/BillingApi.md#getaffiliaterichreport) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
*BillingApi* | [**getAffiliateSalesGraph**](docs/Api/BillingApi.md#getaffiliatesalesgraph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
*BillingApi* | [**getAffiliateSignups**](docs/Api/BillingApi.md#getaffiliatesignups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
*BillingApi* | [**getAffiliateTrafficGraph**](docs/Api/BillingApi.md#getaffiliatetrafficgraph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
*BillingApi* | [**getAffiliateWebTraffic**](docs/Api/BillingApi.md#getaffiliatewebtraffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
*BillingApi* | [**getBillingCart**](docs/Api/BillingApi.md#getbillingcart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
*BillingApi* | [**getBillingCreditCardVerify**](docs/Api/BillingApi.md#getbillingcreditcardverify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
*BillingApi* | [**getBillingInvoice**](docs/Api/BillingApi.md#getbillinginvoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
*BillingApi* | [**getBillingInvoices**](docs/Api/BillingApi.md#getbillinginvoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
*BillingApi* | [**getBillingPrePays**](docs/Api/BillingApi.md#getbillingprepays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
*BillingApi* | [**initiatePayment**](docs/Api/BillingApi.md#initiatepayment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
*BillingApi* | [**patchBillingCreditCardVerify**](docs/Api/BillingApi.md#patchbillingcreditcardverify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
*BillingApi* | [**postBillingCreditCardVerify**](docs/Api/BillingApi.md#postbillingcreditcardverify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
*BillingApi* | [**updateAffiliateDockSetup**](docs/Api/BillingApi.md#updateaffiliatedocksetup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
*BillingApi* | [**updateAffiliatePaymentSetup**](docs/Api/BillingApi.md#updateaffiliatepaymentsetup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
*BillingApi* | [**updateBillingCreditCard**](docs/Api/BillingApi.md#updatebillingcreditcard) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
*BillingApi* | [**updateBillingPaymentMethod**](docs/Api/BillingApi.md#updatebillingpaymentmethod) | **POST** /billing/payment_method | Set the account&#39;s default payment method for recurring/auto charges
*DNSApi* | [**addDnsDomain**](docs/Api/DNSApi.md#adddnsdomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
*DNSApi* | [**addDnsRecord**](docs/Api/DNSApi.md#adddnsrecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
*DNSApi* | [**deleteDnsDomain**](docs/Api/DNSApi.md#deletednsdomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
*DNSApi* | [**deleteDnsRecord**](docs/Api/DNSApi.md#deletednsrecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
*DNSApi* | [**getDnsDomain**](docs/Api/DNSApi.md#getdnsdomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
*DNSApi* | [**getDnsList**](docs/Api/DNSApi.md#getdnslist) | **GET** /dns | List DNS zones hosted on the account with each zone&#39;s apex A-record IP
*DNSApi* | [**updateDnsRecord**](docs/Api/DNSApi.md#updatednsrecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)
*DomainsApi* | [**addDomain**](docs/Api/DomainsApi.md#adddomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice
*DomainsApi* | [**addDomainDnssec**](docs/Api/DomainsApi.md#adddomaindnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS
*DomainsApi* | [**addDomainNameserver**](docs/Api/DomainsApi.md#adddomainnameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver)
*DomainsApi* | [**cancelDomain**](docs/Api/DomainsApi.md#canceldomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals
*DomainsApi* | [**deleteDomainDnssec**](docs/Api/DomainsApi.md#deletedomaindnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
*DomainsApi* | [**deleteDomainNameserver**](docs/Api/DomainsApi.md#deletedomainnameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain
*DomainsApi* | [**getDomainContact**](docs/Api/DomainsApi.md#getdomaincontact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain
*DomainsApi* | [**getDomainDnssec**](docs/Api/DomainsApi.md#getdomaindnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar
*DomainsApi* | [**getDomainInfo**](docs/Api/DomainsApi.md#getdomaininfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain
*DomainsApi* | [**getDomainInvoices**](docs/Api/DomainsApi.md#getdomaininvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order
*DomainsApi* | [**getDomainLookup**](docs/Api/DomainsApi.md#getdomainlookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain
*DomainsApi* | [**getDomainNameservers**](docs/Api/DomainsApi.md#getdomainnameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain
*DomainsApi* | [**getDomainRenewal**](docs/Api/DomainsApi.md#getdomainrenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists
*DomainsApi* | [**getDomainSearch**](docs/Api/DomainsApi.md#getdomainsearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term
*DomainsApi* | [**getDomainTransfer**](docs/Api/DomainsApi.md#getdomaintransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order
*DomainsApi* | [**getDomainWhoisPrivacy**](docs/Api/DomainsApi.md#getdomainwhoisprivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain
*DomainsApi* | [**getDomainsList**](docs/Api/DomainsApi.md#getdomainslist) | **GET** /domains | List every domain registration on the account with billing and registration metadata
*DomainsApi* | [**getDomainsWelcomeEmail**](docs/Api/DomainsApi.md#getdomainswelcomeemail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions
*DomainsApi* | [**getNewDomain**](docs/Api/DomainsApi.md#getnewdomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing
*DomainsApi* | [**patchDomains**](docs/Api/DomainsApi.md#patchdomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run
*DomainsApi* | [**postDomainRenewal**](docs/Api/DomainsApi.md#postdomainrenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice
*DomainsApi* | [**postDomainSearch**](docs/Api/DomainsApi.md#postdomainsearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview)
*DomainsApi* | [**postDomainTransfer**](docs/Api/DomainsApi.md#postdomaintransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST
*DomainsApi* | [**putDomains**](docs/Api/DomainsApi.md#putdomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit
*DomainsApi* | [**updateDomainContact**](docs/Api/DomainsApi.md#updatedomaincontact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS
*DomainsApi* | [**updateDomainInfo**](docs/Api/DomainsApi.md#updatedomaininfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible)
*DomainsApi* | [**updateDomainNameservers**](docs/Api/DomainsApi.md#updatedomainnameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar
*DomainsApi* | [**updateDomainWhoisPrivacy**](docs/Api/DomainsApi.md#updatedomainwhoisprivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain
*FloatingIPsApi* | [**addFloatingIp**](docs/Api/FloatingIPsApi.md#addfloatingip) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service
*FloatingIPsApi* | [**floatingIpsCancel**](docs/Api/FloatingIPsApi.md#floatingipscancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops
*FloatingIPsApi* | [**getFloatingIpInfo**](docs/Api/FloatingIPsApi.md#getfloatingipinfo) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP
*FloatingIPsApi* | [**getFloatingIpInvoices**](docs/Api/FloatingIPsApi.md#getfloatingipinvoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service
*FloatingIPsApi* | [**getFloatingIpsList**](docs/Api/FloatingIPsApi.md#getfloatingipslist) | **GET** /floating_ips | List all Floating IP services on the authenticated customer&#39;s account
*FloatingIPsApi* | [**getFloatingIpsWelcomeEmail**](docs/Api/FloatingIPsApi.md#getfloatingipswelcomeemail) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact
*FloatingIPsApi* | [**getNewFloatingIp**](docs/Api/FloatingIPsApi.md#getnewfloatingip) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP
*FloatingIPsApi* | [**postFloatingIpsChangeIp**](docs/Api/FloatingIPsApi.md#postfloatingipschangeip) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer&#39;s services
*FloatingIPsApi* | [**putFloatingIps**](docs/Api/FloatingIPsApi.md#putfloatingips) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer
*FloatingIPsApi* | [**updateFloatingIpInfo**](docs/Api/FloatingIPsApi.md#updatefloatingipinfo) | **POST** /floating_ips/{id} | Update a Floating IP service&#39;s editable settings (label / metadata)
*LicensesApi* | [**addLicense**](docs/Api/LicensesApi.md#addlicense) | **POST** /licenses/order | Order a new software license and create the recurring invoice
*LicensesApi* | [**getLicenseInfo**](docs/Api/LicensesApi.md#getlicenseinfo) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links
*LicensesApi* | [**getLicenseInvoices**](docs/Api/LicensesApi.md#getlicenseinvoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service
*LicensesApi* | [**getLicenseList**](docs/Api/LicensesApi.md#getlicenselist) | **GET** /licenses | List all software licenses owned by the authenticated customer
*LicensesApi* | [**getLicensesWelcomeEmail**](docs/Api/LicensesApi.md#getlicenseswelcomeemail) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps
*LicensesApi* | [**getNewLicense**](docs/Api/LicensesApi.md#getnewlicense) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering
*LicensesApi* | [**licensesCancel**](docs/Api/LicensesApi.md#licensescancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible)
*LicensesApi* | [**postLicenseChangeIp**](docs/Api/LicensesApi.md#postlicensechangeip) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee)
*LicensesApi* | [**putLicenses**](docs/Api/LicensesApi.md#putlicenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview)
*LicensesApi* | [**updateLicenseInfo**](docs/Api/LicensesApi.md#updatelicenseinfo) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP)
*MailApi* | [**addMail**](docs/Api/MailApi.md#addmail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
*MailApi* | [**addRule**](docs/Api/MailApi.md#addrule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
*MailApi* | [**createMailAlert**](docs/Api/MailApi.md#createmailalert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
*MailApi* | [**deleteMailAlert**](docs/Api/MailApi.md#deletemailalert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
*MailApi* | [**deleteRule**](docs/Api/MailApi.md#deleterule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
*MailApi* | [**delistBlock**](docs/Api/MailApi.md#delistblock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**getMailAlerts**](docs/Api/MailApi.md#getmailalerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
*MailApi* | [**getMailBlocks**](docs/Api/MailApi.md#getmailblocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
*MailApi* | [**getMailDelist**](docs/Api/MailApi.md#getmaildelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
*MailApi* | [**getMailDeliverability**](docs/Api/MailApi.md#getmaildeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
*MailApi* | [**getMailInfo**](docs/Api/MailApi.md#getmailinfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
*MailApi* | [**getMailInvoices**](docs/Api/MailApi.md#getmailinvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
*MailApi* | [**getMailList**](docs/Api/MailApi.md#getmaillist) | **GET** /mail | List every Mail Baby SMTP relay service on the account
*MailApi* | [**getMailWelcomeEmail**](docs/Api/MailApi.md#getmailwelcomeemail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
*MailApi* | [**getNewMail**](docs/Api/MailApi.md#getnewmail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
*MailApi* | [**getRules**](docs/Api/MailApi.md#getrules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
*MailApi* | [**getStats**](docs/Api/MailApi.md#getstats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
*MailApi* | [**mailCancel**](docs/Api/MailApi.md#mailcancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
*MailApi* | [**postMailDelist**](docs/Api/MailApi.md#postmaildelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**putMail**](docs/Api/MailApi.md#putmail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
*MailApi* | [**resetMailPassword**](docs/Api/MailApi.md#resetmailpassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
*MailApi* | [**sendAdvMail**](docs/Api/MailApi.md#sendadvmail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
*MailApi* | [**sendMail**](docs/Api/MailApi.md#sendmail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
*MailApi* | [**updateMailAlert**](docs/Api/MailApi.md#updatemailalert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
*MailApi* | [**updateMailInfo**](docs/Api/MailApi.md#updatemailinfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
*MailApi* | [**updateRule**](docs/Api/MailApi.md#updaterule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule&#39;s type and match data
*MailApi* | [**viewMailLog**](docs/Api/MailApi.md#viewmaillog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries
*PublicApi* | [**getAccountCurrencies**](docs/Api/PublicApi.md#getaccountcurrencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences
*PublicApi* | [**getAccountLocales**](docs/Api/PublicApi.md#getaccountlocales) | **GET** /account/locales | List supported UI locales with English and native display names
*PublicApi* | [**getCaptcha**](docs/Api/PublicApi.md#getcaptcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification
*PublicApi* | [**getCountries**](docs/Api/PublicApi.md#getcountries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code
*PublicApi* | [**getInfo**](docs/Api/PublicApi.md#getinfo) | **GET** /info | Discover available modules, service packages, categories, and types
*PublicApi* | [**getLoginInfo**](docs/Api/PublicApi.md#getlogininfo) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page
*PublicApi* | [**getMPServers**](docs/Api/PublicApi.md#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*PublicApi* | [**getOauthRedirect**](docs/Api/PublicApi.md#getoauthredirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication
*PublicApi* | [**getTimezones**](docs/Api/PublicApi.md#gettimezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services
*PublicApi* | [**patchOauthTwoFactor**](docs/Api/PublicApi.md#patchoauthtwofactor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled
*PublicApi* | [**pingServer**](docs/Api/PublicApi.md#pingserver) | **GET** /ping | Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up
*PublicApi* | [**postOauthCallback**](docs/Api/PublicApi.md#postoauthcallback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account
*PublicApi* | [**submitLogin**](docs/Api/PublicApi.md#submitlogin) | **POST** /login | Authenticate with email + password and return a session token
*PublicApi* | [**submitSignup**](docs/Api/PublicApi.md#submitsignup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS)
*QuickServersApi* | [**addQs**](docs/Api/QuickServersApi.md#addqs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
*QuickServersApi* | [**deleteQsBackup**](docs/Api/QuickServersApi.md#deleteqsbackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
*QuickServersApi* | [**doQsBlockSmtp**](docs/Api/QuickServersApi.md#doqsblocksmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
*QuickServersApi* | [**doQsDisableCd**](docs/Api/QuickServersApi.md#doqsdisablecd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
*QuickServersApi* | [**doQsDisableQuota**](docs/Api/QuickServersApi.md#doqsdisablequota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsEjectCd**](docs/Api/QuickServersApi.md#doqsejectcd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer&#39;s virtual CD drive
*QuickServersApi* | [**doQsEnableQuota**](docs/Api/QuickServersApi.md#doqsenablequota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsRestart**](docs/Api/QuickServersApi.md#doqsrestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
*QuickServersApi* | [**doQsStart**](docs/Api/QuickServersApi.md#doqsstart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
*QuickServersApi* | [**doQsStop**](docs/Api/QuickServersApi.md#doqsstop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
*QuickServersApi* | [**downloadQsBackup**](docs/Api/QuickServersApi.md#downloadqsbackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
*QuickServersApi* | [**getNewQs**](docs/Api/QuickServersApi.md#getnewqs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
*QuickServersApi* | [**getQsBackup**](docs/Api/QuickServersApi.md#getqsbackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
*QuickServersApi* | [**getQsBackups**](docs/Api/QuickServersApi.md#getqsbackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
*QuickServersApi* | [**getQsChangeHostname**](docs/Api/QuickServersApi.md#getqschangehostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
*QuickServersApi* | [**getQsChangeRootPassword**](docs/Api/QuickServersApi.md#getqschangerootpassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
*QuickServersApi* | [**getQsChangeTimezone**](docs/Api/QuickServersApi.md#getqschangetimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
*QuickServersApi* | [**getQsChangeWebuzoPassword**](docs/Api/QuickServersApi.md#getqschangewebuzopassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
*QuickServersApi* | [**getQsInfo**](docs/Api/QuickServersApi.md#getqsinfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
*QuickServersApi* | [**getQsInsertCd**](docs/Api/QuickServersApi.md#getqsinsertcd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer&#39;s virtual CD
*QuickServersApi* | [**getQsInvoices**](docs/Api/QuickServersApi.md#getqsinvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
*QuickServersApi* | [**getQsList**](docs/Api/QuickServersApi.md#getqslist) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
*QuickServersApi* | [**getQsReinstallOs**](docs/Api/QuickServersApi.md#getqsreinstallos) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
*QuickServersApi* | [**getQsResetPassword**](docs/Api/QuickServersApi.md#getqsresetpassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
*QuickServersApi* | [**getQsReverseDns**](docs/Api/QuickServersApi.md#getqsreversedns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer&#39;s IPs
*QuickServersApi* | [**getQsSetupVnc**](docs/Api/QuickServersApi.md#getqssetupvnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
*QuickServersApi* | [**getQsTrafficUsage**](docs/Api/QuickServersApi.md#getqstrafficusage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer&#39;s current billing period
*QuickServersApi* | [**getQsViewDesktop**](docs/Api/QuickServersApi.md#getqsviewdesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
*QuickServersApi* | [**getQsWelcomeEmail**](docs/Api/QuickServersApi.md#getqswelcomeemail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
*QuickServersApi* | [**postQsChangeHostname**](docs/Api/QuickServersApi.md#postqschangehostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer&#39;s system hostname (OpenVZ/Virtuozzo only)
*QuickServersApi* | [**postQsChangeRootPassword**](docs/Api/QuickServersApi.md#postqschangerootpassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
*QuickServersApi* | [**postQsChangeTimezone**](docs/Api/QuickServersApi.md#postqschangetimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
*QuickServersApi* | [**postQsChangeWebuzoPassword**](docs/Api/QuickServersApi.md#postqschangewebuzopassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
*QuickServersApi* | [**postQsInsertCd**](docs/Api/QuickServersApi.md#postqsinsertcd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer&#39;s virtual CD via URL
*QuickServersApi* | [**postQsReinstallOs**](docs/Api/QuickServersApi.md#postqsreinstallos) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
*QuickServersApi* | [**postQsResetPassword**](docs/Api/QuickServersApi.md#postqsresetpassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
*QuickServersApi* | [**postQsReverseDns**](docs/Api/QuickServersApi.md#postqsreversedns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer&#39;s IPs
*QuickServersApi* | [**postQsSetupVnc**](docs/Api/QuickServersApi.md#postqssetupvnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer&#39;s VNC console
*QuickServersApi* | [**postQsTrafficUsage**](docs/Api/QuickServersApi.md#postqstrafficusage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
*QuickServersApi* | [**postQsViewDesktop**](docs/Api/QuickServersApi.md#postqsviewdesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
*QuickServersApi* | [**postQuickServerRestore**](docs/Api/QuickServersApi.md#postquickserverrestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
*QuickServersApi* | [**putQs**](docs/Api/QuickServersApi.md#putqs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
*QuickServersApi* | [**quickserversCancel**](docs/Api/QuickServersApi.md#quickserverscancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
*QuickServersApi* | [**updateQsInfo**](docs/Api/QuickServersApi.md#updateqsinfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact
*SSLCertificatesApi* | [**addSsl**](docs/Api/SSLCertificatesApi.md#addssl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance
*SSLCertificatesApi* | [**getNewSsl**](docs/Api/SSLCertificatesApi.md#getnewssl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order
*SSLCertificatesApi* | [**getSslInfo**](docs/Api/SSLCertificatesApi.md#getsslinfo) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links
*SSLCertificatesApi* | [**getSslInvoices**](docs/Api/SSLCertificatesApi.md#getsslinvoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id
*SSLCertificatesApi* | [**getSslList**](docs/Api/SSLCertificatesApi.md#getssllist) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname
*SSLCertificatesApi* | [**getSslWelcomeEmail**](docs/Api/SSLCertificatesApi.md#getsslwelcomeemail) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions
*SSLCertificatesApi* | [**putSsl**](docs/Api/SSLCertificatesApi.md#putssl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl
*SSLCertificatesApi* | [**sslCancel**](docs/Api/SSLCertificatesApi.md#sslcancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle
*SSLCertificatesApi* | [**updateSslInfo**](docs/Api/SSLCertificatesApi.md#updatesslinfo) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id
*ScrubIpsApi* | [**cancelScrubIp**](docs/Api/ScrubIpsApi.md#cancelscrubip) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
*ScrubIpsApi* | [**createFilter**](docs/Api/ScrubIpsApi.md#createfilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
*ScrubIpsApi* | [**createGeoRule**](docs/Api/ScrubIpsApi.md#creategeorule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
*ScrubIpsApi* | [**createRule**](docs/Api/ScrubIpsApi.md#createrule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
*ScrubIpsApi* | [**deleteFilter**](docs/Api/ScrubIpsApi.md#deletefilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
*ScrubIpsApi* | [**disableScrub**](docs/Api/ScrubIpsApi.md#disablescrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
*ScrubIpsApi* | [**enableScrub**](docs/Api/ScrubIpsApi.md#enablescrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service&#39;s protected IP
*ScrubIpsApi* | [**getOrderDetail**](docs/Api/ScrubIpsApi.md#getorderdetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
*ScrubIpsApi* | [**getScrubIpDetails**](docs/Api/ScrubIpsApi.md#getscrubipdetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
*ScrubIpsApi* | [**getScrubIpFilterTypes**](docs/Api/ScrubIpsApi.md#getscrubipfiltertypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
*ScrubIpsApi* | [**getScrubIpInvoices**](docs/Api/ScrubIpsApi.md#getscrubipinvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
*ScrubIpsApi* | [**getScrubIpLogs**](docs/Api/ScrubIpsApi.md#getscrubiplogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
*ScrubIpsApi* | [**getScrubIpsList**](docs/Api/ScrubIpsApi.md#getscrubipslist) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
*ScrubIpsApi* | [**placeScrubOrder**](docs/Api/ScrubIpsApi.md#placescruborder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
*ScrubIpsApi* | [**putScrubIps**](docs/Api/ScrubIpsApi.md#putscrubips) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
*ScrubIpsApi* | [**scrubIpsDeleteGeoRule**](docs/Api/ScrubIpsApi.md#scrubipsdeletegeorule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
*ScrubIpsApi* | [**scrubIpsDeleteRule**](docs/Api/ScrubIpsApi.md#scrubipsdeleterule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
*ServersApi* | [**addServer**](docs/Api/ServersApi.md#addserver) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
*ServersApi* | [**buyItNowServerOrder**](docs/Api/ServersApi.md#buyitnowserverorder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
*ServersApi* | [**getMPServers**](docs/Api/ServersApi.md#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*ServersApi* | [**getNewServer**](docs/Api/ServersApi.md#getnewserver) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
*ServersApi* | [**getServerInfo**](docs/Api/ServersApi.md#getserverinfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
*ServersApi* | [**getServerInvoices**](docs/Api/ServersApi.md#getserverinvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
*ServersApi* | [**getServerList**](docs/Api/ServersApi.md#getserverlist) | **GET** /servers | List all dedicated servers owned by the authenticated customer
*ServersApi* | [**getServerReverseDns**](docs/Api/ServersApi.md#getserverreversedns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server&#39;s IPs
*ServersApi* | [**getServersWelcomeEmail**](docs/Api/ServersApi.md#getserverswelcomeemail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
*ServersApi* | [**placeBuyNowServer**](docs/Api/ServersApi.md#placebuynowserver) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
*ServersApi* | [**postServerReverseDns**](docs/Api/ServersApi.md#postserverreversedns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server&#39;s IPs
*ServersApi* | [**serverBulkIpmiPowerGet**](docs/Api/ServersApi.md#serverbulkipmipowerget) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
*ServersApi* | [**serverIpmiLiveGet**](docs/Api/ServersApi.md#serveripmiliveget) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
*ServersApi* | [**serverIpmiLivePost**](docs/Api/ServersApi.md#serveripmilivepost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
*ServersApi* | [**serverIpmiPowerGet**](docs/Api/ServersApi.md#serveripmipowerget) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
*ServersApi* | [**serverIpmiPowerPost**](docs/Api/ServersApi.md#serveripmipowerpost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
*ServersApi* | [**serversCancel**](docs/Api/ServersApi.md#serverscancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
*ServersApi* | [**updateServerInfo**](docs/Api/ServersApi.md#updateserverinfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)
*TicketsApi* | [**addNewTicket**](docs/Api/TicketsApi.md#addnewticket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
*TicketsApi* | [**closeTicket**](docs/Api/TicketsApi.md#closeticket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
*TicketsApi* | [**deleteTicketInfo**](docs/Api/TicketsApi.md#deleteticketinfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
*TicketsApi* | [**getNewTicket**](docs/Api/TicketsApi.md#getnewticket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
*TicketsApi* | [**getTicketInfo**](docs/Api/TicketsApi.md#getticketinfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
*TicketsApi* | [**getTicketsList**](docs/Api/TicketsApi.md#getticketslist) | **GET** /tickets | List the authenticated account&#39;s support tickets with status and date filters
*TicketsApi* | [**postTicketInfo**](docs/Api/TicketsApi.md#postticketinfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
*TicketsApi* | [**postTicketsList**](docs/Api/TicketsApi.md#postticketslist) | **POST** /tickets | Search the authenticated account&#39;s tickets by subject, email, or mask ID
*TicketsApi* | [**putTicketInfo**](docs/Api/TicketsApi.md#putticketinfo) | **PUT** /tickets/{id} | Update a ticket&#39;s properties such as subject or status (stub, not implemented)
*TicketsApi* | [**replyTicket**](docs/Api/TicketsApi.md#replyticket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
*TicketsApi* | [**updateTicketInfo**](docs/Api/TicketsApi.md#updateticketinfo) | **POST** /tickets/{id}/update | Update a ticket&#39;s custom field values (server-access details, etc.)
*VPSApi* | [**addVps**](docs/Api/VPSApi.md#addvps) | **POST** /vps/order | Place a new VPS order, create the invoice, and queue provisioning
*VPSApi* | [**deleteVpsBackup**](docs/Api/VPSApi.md#deletevpsbackup) | **DELETE** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible)
*VPSApi* | [**doVpsBlockSmtp**](docs/Api/VPSApi.md#dovpsblocksmtp) | **GET** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
*VPSApi* | [**doVpsDisableCd**](docs/Api/VPSApi.md#dovpsdisablecd) | **GET** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration
*VPSApi* | [**doVpsDisableQuota**](docs/Api/VPSApi.md#dovpsdisablequota) | **GET** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsEjectCd**](docs/Api/VPSApi.md#dovpsejectcd) | **GET** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
*VPSApi* | [**doVpsEnableQuota**](docs/Api/VPSApi.md#dovpsenablequota) | **GET** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsRestart**](docs/Api/VPSApi.md#dovpsrestart) | **GET** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes
*VPSApi* | [**doVpsStart**](docs/Api/VPSApi.md#dovpsstart) | **GET** /vps/{id}/start | Power on a stopped VPS instance
*VPSApi* | [**doVpsStop**](docs/Api/VPSApi.md#dovpsstop) | **GET** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation
*VPSApi* | [**downloadVpsBackup**](docs/Api/VPSApi.md#downloadvpsbackup) | **PATCH** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
*VPSApi* | [**getNewVps**](docs/Api/VPSApi.md#getnewvps) | **GET** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing
*VPSApi* | [**getVpsBackup**](docs/Api/VPSApi.md#getvpsbackup) | **GET** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS
*VPSApi* | [**getVpsBackups**](docs/Api/VPSApi.md#getvpsbackups) | **GET** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS
*VPSApi* | [**getVpsBuyHdSpace**](docs/Api/VPSApi.md#getvpsbuyhdspace) | **GET** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS
*VPSApi* | [**getVpsBuyIp**](docs/Api/VPSApi.md#getvpsbuyip) | **GET** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS
*VPSApi* | [**getVpsChangeHostname**](docs/Api/VPSApi.md#getvpschangehostname) | **GET** /vps/{id}/change_hostname | Read the VPS&#39;s current hostname before changing it
*VPSApi* | [**getVpsChangeRootPassword**](docs/Api/VPSApi.md#getvpschangerootpassword) | **GET** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password
*VPSApi* | [**getVpsChangeTimezone**](docs/Api/VPSApi.md#getvpschangetimezone) | **GET** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS
*VPSApi* | [**getVpsInfo**](docs/Api/VPSApi.md#getvpsinfo) | **GET** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons
*VPSApi* | [**getVpsInsertCd**](docs/Api/VPSApi.md#getvpsinsertcd) | **GET** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive
*VPSApi* | [**getVpsInvoices**](docs/Api/VPSApi.md#getvpsinvoices) | **GET** /vps/{id}/invoices | List all billing invoices associated with this specific VPS
*VPSApi* | [**getVpsList**](docs/Api/VPSApi.md#getvpslist) | **GET** /vps | List all VPS services on the customer&#39;s account
*VPSApi* | [**getVpsReinstallOs**](docs/Api/VPSApi.md#getvpsreinstallos) | **GET** /vps/{id}/reinstall_os | List OS templates compatible with this VPS&#39;s hypervisor for reinstall
*VPSApi* | [**getVpsResetPassword**](docs/Api/VPSApi.md#getvpsresetpassword) | **GET** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value
*VPSApi* | [**getVpsReverseDns**](docs/Api/VPSApi.md#getvpsreversedns) | **GET** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS
*VPSApi* | [**getVpsSetupVnc**](docs/Api/VPSApi.md#getvpssetupvnc) | **GET** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS
*VPSApi* | [**getVpsSlices**](docs/Api/VPSApi.md#getvpsslices) | **GET** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost
*VPSApi* | [**getVpsTrafficUsage**](docs/Api/VPSApi.md#getvpstrafficusage) | **GET** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS
*VPSApi* | [**getVpsViewDesktop**](docs/Api/VPSApi.md#getvpsviewdesktop) | **GET** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
*VPSApi* | [**getVpsWelcomeEmail**](docs/Api/VPSApi.md#getvpswelcomeemail) | **GET** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials
*VPSApi* | [**postVpsBuyHdSpace**](docs/Api/VPSApi.md#postvpsbuyhdspace) | **POST** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice
*VPSApi* | [**postVpsBuyIp**](docs/Api/VPSApi.md#postvpsbuyip) | **POST** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice
*VPSApi* | [**postVpsChangeHostname**](docs/Api/VPSApi.md#postvpschangehostname) | **POST** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
*VPSApi* | [**postVpsChangeRootPassword**](docs/Api/VPSApi.md#postvpschangerootpassword) | **POST** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS
*VPSApi* | [**postVpsChangeTimezone**](docs/Api/VPSApi.md#postvpschangetimezone) | **POST** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS
*VPSApi* | [**postVpsChangeWebuzoPassword**](docs/Api/VPSApi.md#postvpschangewebuzopassword) | **POST** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required)
*VPSApi* | [**postVpsInsertCd**](docs/Api/VPSApi.md#postvpsinsertcd) | **POST** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL
*VPSApi* | [**postVpsReinstallOs**](docs/Api/VPSApi.md#postvpsreinstallos) | **POST** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
*VPSApi* | [**postVpsResetPassword**](docs/Api/VPSApi.md#postvpsresetpassword) | **POST** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value
*VPSApi* | [**postVpsRestore**](docs/Api/VPSApi.md#postvpsrestore) | **POST** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
*VPSApi* | [**postVpsReverseDns**](docs/Api/VPSApi.md#postvpsreversedns) | **POST** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
*VPSApi* | [**postVpsSetupVnc**](docs/Api/VPSApi.md#postvpssetupvnc) | **POST** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS
*VPSApi* | [**postVpsSlices**](docs/Api/VPSApi.md#postvpsslices) | **POST** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
*VPSApi* | [**postVpsTrafficUsage**](docs/Api/VPSApi.md#postvpstrafficusage) | **POST** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved)
*VPSApi* | [**postVpsViewDesktop**](docs/Api/VPSApi.md#postvpsviewdesktop) | **POST** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes
*VPSApi* | [**putVps**](docs/Api/VPSApi.md#putvps) | **PUT** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge
*VPSApi* | [**putVpsBuyHdSpace**](docs/Api/VPSApi.md#putvpsbuyhdspace) | **PUT** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run
*VPSApi* | [**updateVpsInfo**](docs/Api/VPSApi.md#updatevpsinfo) | **POST** /vps/{id} | Update editable settings on a VPS service record
*VPSApi* | [**vPSCancel**](docs/Api/VPSApi.md#vpscancel) | **DELETE** /vps/{id} | Cancel a VPS service at the end of the current billing cycle
*WebhostingApi* | [**addWebsite**](docs/Api/WebhostingApi.md#addwebsite) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning
*WebhostingApi* | [**getNewWebsite**](docs/Api/WebhostingApi.md#getnewwebsite) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing
*WebhostingApi* | [**getWebsiteBuyIp**](docs/Api/WebhostingApi.md#getwebsitebuyip) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing
*WebhostingApi* | [**getWebsiteInfo**](docs/Api/WebhostingApi.md#getwebsiteinfo) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service
*WebhostingApi* | [**getWebsiteInvoices**](docs/Api/WebhostingApi.md#getwebsiteinvoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website
*WebhostingApi* | [**getWebsiteList**](docs/Api/WebhostingApi.md#getwebsitelist) | **GET** /websites | List the caller&#39;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
*WebhostingApi* | [**getWebsitesBackups**](docs/Api/WebhostingApi.md#getwebsitesbackups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive
*WebhostingApi* | [**getWebsitesLogin**](docs/Api/WebhostingApi.md#getwebsiteslogin) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website&#39;s control panel
*WebhostingApi* | [**getWebsitesWelcomeEmail**](docs/Api/WebhostingApi.md#getwebsiteswelcomeemail) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL
*WebhostingApi* | [**gettWebsiteReverseDns**](docs/Api/WebhostingApi.md#gettwebsitereversedns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website&#39;s IPs
*WebhostingApi* | [**postWebsiteBuyIp**](docs/Api/WebhostingApi.md#postwebsitebuyip) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records
*WebhostingApi* | [**postWebsiteMigration**](docs/Api/WebhostingApi.md#postwebsitemigration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host
*WebhostingApi* | [**postWebsitesReverseDns**](docs/Api/WebhostingApi.md#postwebsitesreversedns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs
*WebhostingApi* | [**putWebsites**](docs/Api/WebhostingApi.md#putwebsites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge
*WebhostingApi* | [**updateWebsiteInfo**](docs/Api/WebhostingApi.md#updatewebsiteinfo) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible)
*WebhostingApi* | [**webhostingCancel**](docs/Api/WebhostingApi.md#webhostingcancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end

## Models

- [AccountFeatures](docs/Model/AccountFeatures.md)
- [AccountInfo](docs/Model/AccountInfo.md)
- [AccountInfoCountryCurrencies](docs/Model/AccountInfoCountryCurrencies.md)
- [AccountInfoData](docs/Model/AccountInfoData.md)
- [AccountInfoDataCc](docs/Model/AccountInfoDataCc.md)
- [AccountInfoDataCcs](docs/Model/AccountInfoDataCcs.md)
- [AccountInfoDataEmailSettings](docs/Model/AccountInfoDataEmailSettings.md)
- [AccountInfoDataExtra](docs/Model/AccountInfoDataExtra.md)
- [AccountInfoDataFraudrecord](docs/Model/AccountInfoDataFraudrecord.md)
- [AccountInfoLimits](docs/Model/AccountInfoLimits.md)
- [AccountInfoLimitsInner](docs/Model/AccountInfoLimitsInner.md)
- [AccountInfoMaxMindResponse](docs/Model/AccountInfoMaxMindResponse.md)
- [AccountInfoMaxMindResponseRiskScore](docs/Model/AccountInfoMaxMindResponseRiskScore.md)
- [AccountInfoOauthConfig](docs/Model/AccountInfoOauthConfig.md)
- [AccountInfoOauthConfigProviders](docs/Model/AccountInfoOauthConfigProviders.md)
- [AccountInfoOauthConfigProvidersValue](docs/Model/AccountInfoOauthConfigProvidersValue.md)
- [AccountInfoOauthproviders](docs/Model/AccountInfoOauthproviders.md)
- [AccountInfoPost](docs/Model/AccountInfoPost.md)
- [AccountSshKey](docs/Model/AccountSshKey.md)
- [AddServer200Response](docs/Model/AddServer200Response.md)
- [AffiliateBannerRow](docs/Model/AffiliateBannerRow.md)
- [AffiliateDockSetup](docs/Model/AffiliateDockSetup.md)
- [AffiliatePaymentSetup](docs/Model/AffiliatePaymentSetup.md)
- [AffiliateTrafficRow](docs/Model/AffiliateTrafficRow.md)
- [Backup](docs/Model/Backup.md)
- [BackupBillingDetails](docs/Model/BackupBillingDetails.md)
- [BackupClientLink](docs/Model/BackupClientLink.md)
- [BackupExtraInfoTables](docs/Model/BackupExtraInfoTables.md)
- [BackupIPInfo](docs/Model/BackupIPInfo.md)
- [BackupIPInfoRow](docs/Model/BackupIPInfoRow.md)
- [BackupLoginResponse](docs/Model/BackupLoginResponse.md)
- [BackupOrderPostResponse](docs/Model/BackupOrderPostResponse.md)
- [BackupOrderPostResponseCjParams](docs/Model/BackupOrderPostResponseCjParams.md)
- [BackupOrderPutRequest](docs/Model/BackupOrderPutRequest.md)
- [BackupOrderPutResponse](docs/Model/BackupOrderPutResponse.md)
- [BackupRow](docs/Model/BackupRow.md)
- [BackupServiceInfo](docs/Model/BackupServiceInfo.md)
- [BackupServiceMaster](docs/Model/BackupServiceMaster.md)
- [BackupsOrder](docs/Model/BackupsOrder.md)
- [BackupsOrderPackageCosts](docs/Model/BackupsOrderPackageCosts.md)
- [BackupsOrderServiceTypes](docs/Model/BackupsOrderServiceTypes.md)
- [BillingAddCcRequest](docs/Model/BillingAddCcRequest.md)
- [BillingInvoiceDetail](docs/Model/BillingInvoiceDetail.md)
- [BillingInvoiceList](docs/Model/BillingInvoiceList.md)
- [BillingPaymentMethodRequest](docs/Model/BillingPaymentMethodRequest.md)
- [BillingPrepayRequest](docs/Model/BillingPrepayRequest.md)
- [BillingVerifyCcRequest](docs/Model/BillingVerifyCcRequest.md)
- [BuyItNowList](docs/Model/BuyItNowList.md)
- [BuyItNowRow](docs/Model/BuyItNowRow.md)
- [BuyItNowRowCpuInner](docs/Model/BuyItNowRowCpuInner.md)
- [BuyItNowRowCpuInnerOneOf](docs/Model/BuyItNowRowCpuInnerOneOf.md)
- [BuyItNowServerOrder200Response](docs/Model/BuyItNowServerOrder200Response.md)
- [BuyItNowServerOrder200ResponseBandwidthInner](docs/Model/BuyItNowServerOrder200ResponseBandwidthInner.md)
- [BuyItNowServerOrder200ResponseCpInner](docs/Model/BuyItNowServerOrder200ResponseCpInner.md)
- [BuyItNowServerOrder200ResponseIpsInner](docs/Model/BuyItNowServerOrder200ResponseIpsInner.md)
- [BuyItNowServerOrder200ResponseOsInner](docs/Model/BuyItNowServerOrder200ResponseOsInner.md)
- [BuyItNowServerOrder200ResponseRaidInner](docs/Model/BuyItNowServerOrder200ResponseRaidInner.md)
- [CancelBackup200Response](docs/Model/CancelBackup200Response.md)
- [CancelDomain200Response](docs/Model/CancelDomain200Response.md)
- [CancelScrubIp200Response](docs/Model/CancelScrubIp200Response.md)
- [CaptchaResponse](docs/Model/CaptchaResponse.md)
- [ChargeInvoiceRows](docs/Model/ChargeInvoiceRows.md)
- [ChargeInvoiceRowsInvoicesValue](docs/Model/ChargeInvoiceRowsInvoicesValue.md)
- [ChargeInvoiceRowsInvoicesValuePaidInvoicesValue](docs/Model/ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md)
- [ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue](docs/Model/ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md)
- [CloseTicketResponseSchema](docs/Model/CloseTicketResponseSchema.md)
- [CreateFilter](docs/Model/CreateFilter.md)
- [CreateFilter201Response](docs/Model/CreateFilter201Response.md)
- [CreateFilter400Response](docs/Model/CreateFilter400Response.md)
- [CreateFilter500Response](docs/Model/CreateFilter500Response.md)
- [CreateFirewallRule](docs/Model/CreateFirewallRule.md)
- [CreateGeoFirewallRule](docs/Model/CreateGeoFirewallRule.md)
- [CreateGeoRule400Response](docs/Model/CreateGeoRule400Response.md)
- [CreateRule201Response](docs/Model/CreateRule201Response.md)
- [CreateRule400Response](docs/Model/CreateRule400Response.md)
- [CreateRule500Response](docs/Model/CreateRule500Response.md)
- [DeleteFilter200Response](docs/Model/DeleteFilter200Response.md)
- [DeleteFilter400Response](docs/Model/DeleteFilter400Response.md)
- [DeleteFilter500Response](docs/Model/DeleteFilter500Response.md)
- [DeleteFirewallRule](docs/Model/DeleteFirewallRule.md)
- [DeleteGeoFirewallRule](docs/Model/DeleteGeoFirewallRule.md)
- [DeleteMailAlertRequest](docs/Model/DeleteMailAlertRequest.md)
- [DenyRuleNew](docs/Model/DenyRuleNew.md)
- [DenyRuleRecord](docs/Model/DenyRuleRecord.md)
- [DisableScrub200Response](docs/Model/DisableScrub200Response.md)
- [DisableScrub400Response](docs/Model/DisableScrub400Response.md)
- [DisableScrub500Response](docs/Model/DisableScrub500Response.md)
- [DnsListItem](docs/Model/DnsListItem.md)
- [DnsNewDomain](docs/Model/DnsNewDomain.md)
- [DnsNewRecord](docs/Model/DnsNewRecord.md)
- [DnsRecord](docs/Model/DnsRecord.md)
- [DnsRecordType](docs/Model/DnsRecordType.md)
- [DnsUpdateRecord](docs/Model/DnsUpdateRecord.md)
- [Domain](docs/Model/Domain.md)
- [DomainAdminContact](docs/Model/DomainAdminContact.md)
- [DomainAllInfo](docs/Model/DomainAllInfo.md)
- [DomainAllInfoAttributes](docs/Model/DomainAllInfoAttributes.md)
- [DomainAllInfoAttributesContactSet](docs/Model/DomainAllInfoAttributesContactSet.md)
- [DomainBillingDetails](docs/Model/DomainBillingDetails.md)
- [DomainBillingExtra](docs/Model/DomainBillingExtra.md)
- [DomainClientLink](docs/Model/DomainClientLink.md)
- [DomainContactDetails](docs/Model/DomainContactDetails.md)
- [DomainDnssecRecords](docs/Model/DomainDnssecRecords.md)
- [DomainDnssecRecordsInner](docs/Model/DomainDnssecRecordsInner.md)
- [DomainDnssecRequest](docs/Model/DomainDnssecRequest.md)
- [DomainLookupResponse](docs/Model/DomainLookupResponse.md)
- [DomainNameServer](docs/Model/DomainNameServer.md)
- [DomainNameserverGetResponse](docs/Model/DomainNameserverGetResponse.md)
- [DomainNameserverGetResponseInner](docs/Model/DomainNameserverGetResponseInner.md)
- [DomainNameserverPostRequest](docs/Model/DomainNameserverPostRequest.md)
- [DomainNameserverPutRequest](docs/Model/DomainNameserverPutRequest.md)
- [DomainOrder](docs/Model/DomainOrder.md)
- [DomainOrderRequest](docs/Model/DomainOrderRequest.md)
- [DomainOrderResponse](docs/Model/DomainOrderResponse.md)
- [DomainOrderResponseAttributes](docs/Model/DomainOrderResponseAttributes.md)
- [DomainOrderServices](docs/Model/DomainOrderServices.md)
- [DomainOrderServices10001](docs/Model/DomainOrderServices10001.md)
- [DomainOwnerContact](docs/Model/DomainOwnerContact.md)
- [DomainProvProcessPending](docs/Model/DomainProvProcessPending.md)
- [DomainProvProcessPendingAttributes](docs/Model/DomainProvProcessPendingAttributes.md)
- [DomainRow](docs/Model/DomainRow.md)
- [DomainSearchResponse](docs/Model/DomainSearchResponse.md)
- [DomainServiceInfo](docs/Model/DomainServiceInfo.md)
- [DomainServiceType](docs/Model/DomainServiceType.md)
- [DomainTechContact](docs/Model/DomainTechContact.md)
- [DomainWhoisPrivacyRequest](docs/Model/DomainWhoisPrivacyRequest.md)
- [DownloadQsBackup200Response](docs/Model/DownloadQsBackup200Response.md)
- [DownloadQsBackupRequest](docs/Model/DownloadQsBackupRequest.md)
- [EmailAddress](docs/Model/EmailAddress.md)
- [EmailAddressName](docs/Model/EmailAddressName.md)
- [EnableScrub200Response](docs/Model/EnableScrub200Response.md)
- [EnableScrub500Response](docs/Model/EnableScrub500Response.md)
- [FloatingIpOrderRequest](docs/Model/FloatingIpOrderRequest.md)
- [FloatingIpsCancel200Response](docs/Model/FloatingIpsCancel200Response.md)
- [GenericResponse](docs/Model/GenericResponse.md)
- [GetAccountInfo401Response](docs/Model/GetAccountInfo401Response.md)
- [GetAccountLocales200ResponseValue](docs/Model/GetAccountLocales200ResponseValue.md)
- [GetAccountTfaSetup200Response](docs/Model/GetAccountTfaSetup200Response.md)
- [GetAffiliateSignups200Response](docs/Model/GetAffiliateSignups200Response.md)
- [GetOauthRedirect200Response](docs/Model/GetOauthRedirect200Response.md)
- [GetOrderDetail200Response](docs/Model/GetOrderDetail200Response.md)
- [GetOrderDetail200ResponseIpsInner](docs/Model/GetOrderDetail200ResponseIpsInner.md)
- [GetOrderDetail200ResponsePackageCosts](docs/Model/GetOrderDetail200ResponsePackageCosts.md)
- [GetOrderDetail200ResponseServiceTypesInner](docs/Model/GetOrderDetail200ResponseServiceTypesInner.md)
- [GetScrubIpDetails200Response](docs/Model/GetScrubIpDetails200Response.md)
- [GetScrubIpDetails200ResponseBillingDetails](docs/Model/GetScrubIpDetails200ResponseBillingDetails.md)
- [GetScrubIpDetails200ResponseClientLinksInner](docs/Model/GetScrubIpDetails200ResponseClientLinksInner.md)
- [GetScrubIpDetails200ResponseExtraInfoTables](docs/Model/GetScrubIpDetails200ResponseExtraInfoTables.md)
- [GetScrubIpDetails200ResponseExtraInfoTablesScrubIps](docs/Model/GetScrubIpDetails200ResponseExtraInfoTablesScrubIps.md)
- [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner](docs/Model/GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.md)
- [GetScrubIpDetails200ResponseFilterFirewall](docs/Model/GetScrubIpDetails200ResponseFilterFirewall.md)
- [GetScrubIpDetails200ResponseFilterFirewallFiltersInner](docs/Model/GetScrubIpDetails200ResponseFilterFirewallFiltersInner.md)
- [GetScrubIpDetails200ResponseFilterFirewallRulesInner](docs/Model/GetScrubIpDetails200ResponseFilterFirewallRulesInner.md)
- [GetScrubIpDetails200ResponseServiceInfo](docs/Model/GetScrubIpDetails200ResponseServiceInfo.md)
- [GetWebsiteBuyIp200Response](docs/Model/GetWebsiteBuyIp200Response.md)
- [Home](docs/Model/Home.md)
- [HomeDetails](docs/Model/HomeDetails.md)
- [HomeDetailsModules](docs/Model/HomeDetailsModules.md)
- [HomeDetailsModulesBackups](docs/Model/HomeDetailsModulesBackups.md)
- [HomeDetailsModulesDomains](docs/Model/HomeDetailsModulesDomains.md)
- [HomeDetailsModulesLicenses](docs/Model/HomeDetailsModulesLicenses.md)
- [HomeDetailsModulesQuickservers](docs/Model/HomeDetailsModulesQuickservers.md)
- [HomeDetailsModulesServers](docs/Model/HomeDetailsModulesServers.md)
- [HomeDetailsModulesVps](docs/Model/HomeDetailsModulesVps.md)
- [HomeDetailsModulesWebhosting](docs/Model/HomeDetailsModulesWebhosting.md)
- [HomeServices](docs/Model/HomeServices.md)
- [HomeServicesBackups](docs/Model/HomeServicesBackups.md)
- [HomeServicesDomains](docs/Model/HomeServicesDomains.md)
- [HomeServicesDomainsLinks](docs/Model/HomeServicesDomainsLinks.md)
- [HomeServicesLicenses](docs/Model/HomeServicesLicenses.md)
- [HomeServicesLicensesLinks](docs/Model/HomeServicesLicensesLinks.md)
- [HomeServicesServers](docs/Model/HomeServicesServers.md)
- [HomeServicesServersLinks](docs/Model/HomeServicesServersLinks.md)
- [HomeServicesVps](docs/Model/HomeServicesVps.md)
- [HomeServicesVpsLinks](docs/Model/HomeServicesVpsLinks.md)
- [HomeServicesWebhosting](docs/Model/HomeServicesWebhosting.md)
- [HomeServicesWebhostingLinks](docs/Model/HomeServicesWebhostingLinks.md)
- [HomeTicketStatus](docs/Model/HomeTicketStatus.md)
- [HomeTicketStatusView](docs/Model/HomeTicketStatusView.md)
- [HostnameObject](docs/Model/HostnameObject.md)
- [InitiatePayment200Response](docs/Model/InitiatePayment200Response.md)
- [IpLimitRange](docs/Model/IpLimitRange.md)
- [IpObject](docs/Model/IpObject.md)
- [License](docs/Model/License.md)
- [LicenseBillingDetails](docs/Model/LicenseBillingDetails.md)
- [LicenseClientLink](docs/Model/LicenseClientLink.md)
- [LicenseExtraInfoTables](docs/Model/LicenseExtraInfoTables.md)
- [LicenseIpInfo](docs/Model/LicenseIpInfo.md)
- [LicenseIpInfoRow](docs/Model/LicenseIpInfoRow.md)
- [LicenseOrderRequest](docs/Model/LicenseOrderRequest.md)
- [LicenseRow](docs/Model/LicenseRow.md)
- [LicenseServiceInfo](docs/Model/LicenseServiceInfo.md)
- [LicenseServiceType](docs/Model/LicenseServiceType.md)
- [LicensesCancel200Response](docs/Model/LicensesCancel200Response.md)
- [LicensesOrder](docs/Model/LicensesOrder.md)
- [LicensesOrderPackageCosts](docs/Model/LicensesOrderPackageCosts.md)
- [LicensesOrderServiceCategories](docs/Model/LicensesOrderServiceCategories.md)
- [LicensesOrderServiceCategories509](docs/Model/LicensesOrderServiceCategories509.md)
- [LicensesOrderServiceTypes](docs/Model/LicensesOrderServiceTypes.md)
- [LicensesOrderServiceTypes11482](docs/Model/LicensesOrderServiceTypes11482.md)
- [LoginErrorResponse](docs/Model/LoginErrorResponse.md)
- [LoginInfo](docs/Model/LoginInfo.md)
- [LoginServiceCounts](docs/Model/LoginServiceCounts.md)
- [LoginSubmissionExample](docs/Model/LoginSubmissionExample.md)
- [LoginSubmissionExampleGRecaptchaResponse](docs/Model/LoginSubmissionExampleGRecaptchaResponse.md)
- [LoginSubmissionExampleGRecaptchaResponseDep](docs/Model/LoginSubmissionExampleGRecaptchaResponseDep.md)
- [LoginSuccessResponse](docs/Model/LoginSuccessResponse.md)
- [MailAlertRequest](docs/Model/MailAlertRequest.md)
- [MailAlertUpdateRequest](docs/Model/MailAlertUpdateRequest.md)
- [MailAlertsResponse](docs/Model/MailAlertsResponse.md)
- [MailAlertsResponseInner](docs/Model/MailAlertsResponseInner.md)
- [MailAttachment](docs/Model/MailAttachment.md)
- [MailBillingDetails](docs/Model/MailBillingDetails.md)
- [MailBlockClickHouse](docs/Model/MailBlockClickHouse.md)
- [MailBlockRspamd](docs/Model/MailBlockRspamd.md)
- [MailBlocks](docs/Model/MailBlocks.md)
- [MailCancel200Response](docs/Model/MailCancel200Response.md)
- [MailClientLink](docs/Model/MailClientLink.md)
- [MailDelistRequest](docs/Model/MailDelistRequest.md)
- [MailDelistResponse](docs/Model/MailDelistResponse.md)
- [MailDeliverabilityResponse](docs/Model/MailDeliverabilityResponse.md)
- [MailExtraInfoTable](docs/Model/MailExtraInfoTable.md)
- [MailExtraInfoTableRow](docs/Model/MailExtraInfoTableRow.md)
- [MailLog](docs/Model/MailLog.md)
- [MailLogEntry](docs/Model/MailLogEntry.md)
- [MailOrder](docs/Model/MailOrder.md)
- [MailOrderRequest](docs/Model/MailOrderRequest.md)
- [MailRow](docs/Model/MailRow.md)
- [MailSchema](docs/Model/MailSchema.md)
- [MailSchemaExtraInfoTables](docs/Model/MailSchemaExtraInfoTables.md)
- [MailServiceInfo](docs/Model/MailServiceInfo.md)
- [MailServiceType](docs/Model/MailServiceType.md)
- [MailStatsType](docs/Model/MailStatsType.md)
- [MailStatsTypeVolume](docs/Model/MailStatsTypeVolume.md)
- [MailStatsTypeVolumeFrom](docs/Model/MailStatsTypeVolumeFrom.md)
- [MailStatsTypeVolumeIp](docs/Model/MailStatsTypeVolumeIp.md)
- [MailStatsTypeVolumeTo](docs/Model/MailStatsTypeVolumeTo.md)
- [MailTutorialsTable](docs/Model/MailTutorialsTable.md)
- [MailTutorialsTableRow](docs/Model/MailTutorialsTableRow.md)
- [ModuleSettings](docs/Model/ModuleSettings.md)
- [Modules](docs/Model/Modules.md)
- [MonthlyCounts](docs/Model/MonthlyCounts.md)
- [PasswordRequest](docs/Model/PasswordRequest.md)
- [PatchBillingCreditCardVerifyRequest](docs/Model/PatchBillingCreditCardVerifyRequest.md)
- [PatchOauthTwoFactor200Response](docs/Model/PatchOauthTwoFactor200Response.md)
- [PatchOauthTwoFactorRequest](docs/Model/PatchOauthTwoFactorRequest.md)
- [PlaceBuyNowServerRequest](docs/Model/PlaceBuyNowServerRequest.md)
- [PlaceScrubOrder201Response](docs/Model/PlaceScrubOrder201Response.md)
- [PlaceScrubOrder201ResponseOrderDetails](docs/Model/PlaceScrubOrder201ResponseOrderDetails.md)
- [PlaceScrubOrder201ResponseOrderDetailsCjParams](docs/Model/PlaceScrubOrder201ResponseOrderDetailsCjParams.md)
- [PostOauthCallback200Response](docs/Model/PostOauthCallback200Response.md)
- [PostOauthCallbackRequest](docs/Model/PostOauthCallbackRequest.md)
- [PostWebsiteBuyIp200Response](docs/Model/PostWebsiteBuyIp200Response.md)
- [PostWebsiteBuyIpRequest](docs/Model/PostWebsiteBuyIpRequest.md)
- [PostWebsiteMigration200Response](docs/Model/PostWebsiteMigration200Response.md)
- [PostWebsiteMigrationRequest](docs/Model/PostWebsiteMigrationRequest.md)
- [PutScrubIps200Response](docs/Model/PutScrubIps200Response.md)
- [QsOrderRequest](docs/Model/QsOrderRequest.md)
- [QueueResponse](docs/Model/QueueResponse.md)
- [Quickserver](docs/Model/Quickserver.md)
- [QuickserverAddons](docs/Model/QuickserverAddons.md)
- [QuickserverAddonsRow](docs/Model/QuickserverAddonsRow.md)
- [QuickserverBillingDetails](docs/Model/QuickserverBillingDetails.md)
- [QuickserverClientLink](docs/Model/QuickserverClientLink.md)
- [QuickserverExtraInfoTables](docs/Model/QuickserverExtraInfoTables.md)
- [QuickserverIpInfo](docs/Model/QuickserverIpInfo.md)
- [QuickserverIpTableRow](docs/Model/QuickserverIpTableRow.md)
- [QuickserverOrder](docs/Model/QuickserverOrder.md)
- [QuickserverOrderDistroSel](docs/Model/QuickserverOrderDistroSel.md)
- [QuickserverOrderDistroSelUbuntu](docs/Model/QuickserverOrderDistroSelUbuntu.md)
- [QuickserverOrderServerDetails](docs/Model/QuickserverOrderServerDetails.md)
- [QuickserverOrderServerDetails381](docs/Model/QuickserverOrderServerDetails381.md)
- [QuickserverOrderTemplates](docs/Model/QuickserverOrderTemplates.md)
- [QuickserverOrderTemplatesUbuntu64](docs/Model/QuickserverOrderTemplatesUbuntu64.md)
- [QuickserverOrderVersion](docs/Model/QuickserverOrderVersion.md)
- [QuickserverOrderVersionCentosstream8](docs/Model/QuickserverOrderVersionCentosstream8.md)
- [QuickserverRow](docs/Model/QuickserverRow.md)
- [QuickserverServiceExtra](docs/Model/QuickserverServiceExtra.md)
- [QuickserverServiceInfo](docs/Model/QuickserverServiceInfo.md)
- [QuickserverServiceMaster](docs/Model/QuickserverServiceMaster.md)
- [QuickserversCancel200Response](docs/Model/QuickserversCancel200Response.md)
- [ReplyTicketRequest](docs/Model/ReplyTicketRequest.md)
- [ReplyTicketResponseSchema](docs/Model/ReplyTicketResponseSchema.md)
- [RestoreRequest](docs/Model/RestoreRequest.md)
- [ReverseDnsEntries](docs/Model/ReverseDnsEntries.md)
- [ScrubIpFilterTypes](docs/Model/ScrubIpFilterTypes.md)
- [ScrubIpFilterTypesFiltersValue](docs/Model/ScrubIpFilterTypesFiltersValue.md)
- [ScrubIpPlaceOrder](docs/Model/ScrubIpPlaceOrder.md)
- [ScrubIpsDeleteRule200Response](docs/Model/ScrubIpsDeleteRule200Response.md)
- [ScrubIpsDeleteRule400Response](docs/Model/ScrubIpsDeleteRule400Response.md)
- [ScrubIpsDeleteRule500Response](docs/Model/ScrubIpsDeleteRule500Response.md)
- [ScrubIpsLogRowSchema](docs/Model/ScrubIpsLogRowSchema.md)
- [ScrubIpsRowSchema](docs/Model/ScrubIpsRowSchema.md)
- [SearchAutocompleteResponse](docs/Model/SearchAutocompleteResponse.md)
- [SendMail](docs/Model/SendMail.md)
- [SendMailAdv](docs/Model/SendMailAdv.md)
- [Server](docs/Model/Server.md)
- [ServerAsset](docs/Model/ServerAsset.md)
- [ServerAssets](docs/Model/ServerAssets.md)
- [ServerBillingDetails](docs/Model/ServerBillingDetails.md)
- [ServerBulkIpmiPowerResponse](docs/Model/ServerBulkIpmiPowerResponse.md)
- [ServerBulkIpmiPowerResponseResultsInner](docs/Model/ServerBulkIpmiPowerResponseResultsInner.md)
- [ServerClientLink](docs/Model/ServerClientLink.md)
- [ServerExtraInfoTables](docs/Model/ServerExtraInfoTables.md)
- [ServerIpmiLiveInfo](docs/Model/ServerIpmiLiveInfo.md)
- [ServerIpmiLiveRequest](docs/Model/ServerIpmiLiveRequest.md)
- [ServerIpmiPowerRequest](docs/Model/ServerIpmiPowerRequest.md)
- [ServerLease](docs/Model/ServerLease.md)
- [ServerLocation1](docs/Model/ServerLocation1.md)
- [ServerLocations](docs/Model/ServerLocations.md)
- [ServerNetworkInfo](docs/Model/ServerNetworkInfo.md)
- [ServerNetworkInfoAssets](docs/Model/ServerNetworkInfoAssets.md)
- [ServerNetworkInfoSwitchports](docs/Model/ServerNetworkInfoSwitchports.md)
- [ServerOrder](docs/Model/ServerOrder.md)
- [ServerOrderBandwidth](docs/Model/ServerOrderBandwidth.md)
- [ServerOrderBandwidthLi](docs/Model/ServerOrderBandwidthLi.md)
- [ServerOrderCPU](docs/Model/ServerOrderCPU.md)
- [ServerOrderConfigIds](docs/Model/ServerOrderConfigIds.md)
- [ServerOrderControlPanel](docs/Model/ServerOrderControlPanel.md)
- [ServerOrderCpLi](docs/Model/ServerOrderCpLi.md)
- [ServerOrderCpuLi](docs/Model/ServerOrderCpuLi.md)
- [ServerOrderFieldLabel](docs/Model/ServerOrderFieldLabel.md)
- [ServerOrderFieldLabels](docs/Model/ServerOrderFieldLabels.md)
- [ServerOrderFormValues](docs/Model/ServerOrderFormValues.md)
- [ServerOrderIP](docs/Model/ServerOrderIP.md)
- [ServerOrderIpsLi](docs/Model/ServerOrderIpsLi.md)
- [ServerOrderMemory](docs/Model/ServerOrderMemory.md)
- [ServerOrderMemoryLi](docs/Model/ServerOrderMemoryLi.md)
- [ServerOrderMemoryLi254](docs/Model/ServerOrderMemoryLi254.md)
- [ServerOrderOS](docs/Model/ServerOrderOS.md)
- [ServerOrderOsLi](docs/Model/ServerOrderOsLi.md)
- [ServerOrderPostRequest](docs/Model/ServerOrderPostRequest.md)
- [ServerOrderPostRequestHd](docs/Model/ServerOrderPostRequestHd.md)
- [ServerOrderRAID](docs/Model/ServerOrderRAID.md)
- [ServerRow](docs/Model/ServerRow.md)
- [ServerServiceInfo](docs/Model/ServerServiceInfo.md)
- [ServerSwitchport](docs/Model/ServerSwitchport.md)
- [ServersBuyNowError](docs/Model/ServersBuyNowError.md)
- [ServersBuyNowResponse](docs/Model/ServersBuyNowResponse.md)
- [ServersBuyNowResponseOrderDetails](docs/Model/ServersBuyNowResponseOrderDetails.md)
- [ServersCancel200Response](docs/Model/ServersCancel200Response.md)
- [Service](docs/Model/Service.md)
- [ServiceCategories](docs/Model/ServiceCategories.md)
- [ServiceCategory](docs/Model/ServiceCategory.md)
- [ServiceOrderPostResponse](docs/Model/ServiceOrderPostResponse.md)
- [ServiceType](docs/Model/ServiceType.md)
- [ServiceTypes](docs/Model/ServiceTypes.md)
- [Services](docs/Model/Services.md)
- [ServicesInfo](docs/Model/ServicesInfo.md)
- [SslCancel200Response](docs/Model/SslCancel200Response.md)
- [SslOrderRequest](docs/Model/SslOrderRequest.md)
- [StatusMonthlyBreakdown](docs/Model/StatusMonthlyBreakdown.md)
- [SuccessTextResponse](docs/Model/SuccessTextResponse.md)
- [TemplateRequest](docs/Model/TemplateRequest.md)
- [TextResponse](docs/Model/TextResponse.md)
- [TicketCustomFieldDetails](docs/Model/TicketCustomFieldDetails.md)
- [TicketDetails](docs/Model/TicketDetails.md)
- [TicketNew](docs/Model/TicketNew.md)
- [TicketNewResponse](docs/Model/TicketNewResponse.md)
- [TicketPostDetails](docs/Model/TicketPostDetails.md)
- [TicketPostDetailsInner](docs/Model/TicketPostDetailsInner.md)
- [Tickets](docs/Model/Tickets.md)
- [TicketsCountArray](docs/Model/TicketsCountArray.md)
- [TicketsRow](docs/Model/TicketsRow.md)
- [TimezoneUpdate](docs/Model/TimezoneUpdate.md)
- [UpdateAccountTfaRequest](docs/Model/UpdateAccountTfaRequest.md)
- [UpdateTicket](docs/Model/UpdateTicket.md)
- [UpdateTicketResponseSchema](docs/Model/UpdateTicketResponseSchema.md)
- [UrlRequest](docs/Model/UrlRequest.md)
- [VPSCancel200Response](docs/Model/VPSCancel200Response.md)
- [VPSTrafficDataDataSectionResponse](docs/Model/VPSTrafficDataDataSectionResponse.md)
- [VPSTrafficDataDataSectionResponseInner](docs/Model/VPSTrafficDataDataSectionResponseInner.md)
- [ViewMailLogStartDateParameter](docs/Model/ViewMailLogStartDateParameter.md)
- [ViewTicketResponse](docs/Model/ViewTicketResponse.md)
- [Vps](docs/Model/Vps.md)
- [VpsBackupRow](docs/Model/VpsBackupRow.md)
- [VpsBackupRows](docs/Model/VpsBackupRows.md)
- [VpsBillingDetails](docs/Model/VpsBillingDetails.md)
- [VpsCPData](docs/Model/VpsCPData.md)
- [VpsClientLink](docs/Model/VpsClientLink.md)
- [VpsDAData](docs/Model/VpsDAData.md)
- [VpsDALicense](docs/Model/VpsDALicense.md)
- [VpsExtraInfoTables](docs/Model/VpsExtraInfoTables.md)
- [VpsIPInfo](docs/Model/VpsIPInfo.md)
- [VpsIPInfoRow](docs/Model/VpsIPInfoRow.md)
- [VpsOrder](docs/Model/VpsOrder.md)
- [VpsOrderLocationNames](docs/Model/VpsOrderLocationNames.md)
- [VpsOrderLocationStock](docs/Model/VpsOrderLocationStock.md)
- [VpsOrderLocationStock1](docs/Model/VpsOrderLocationStock1.md)
- [VpsOrderOsNames](docs/Model/VpsOrderOsNames.md)
- [VpsOrderPackageCosts](docs/Model/VpsOrderPackageCosts.md)
- [VpsOrderPlatformNames](docs/Model/VpsOrderPlatformNames.md)
- [VpsOrderPlatformPackages](docs/Model/VpsOrderPlatformPackages.md)
- [VpsOrderPostRequest](docs/Model/VpsOrderPostRequest.md)
- [VpsOrderPutRequest](docs/Model/VpsOrderPutRequest.md)
- [VpsOrderPutResponse](docs/Model/VpsOrderPutResponse.md)
- [VpsOrderServiceTypes](docs/Model/VpsOrderServiceTypes.md)
- [VpsOrderServiceTypes32](docs/Model/VpsOrderServiceTypes32.md)
- [VpsOrderTemplates](docs/Model/VpsOrderTemplates.md)
- [VpsOrderTemplatesHyperv](docs/Model/VpsOrderTemplatesHyperv.md)
- [VpsOrderTemplatesHypervWindows](docs/Model/VpsOrderTemplatesHypervWindows.md)
- [VpsPlesk12Data](docs/Model/VpsPlesk12Data.md)
- [VpsPleskLicense](docs/Model/VpsPleskLicense.md)
- [VpsRow](docs/Model/VpsRow.md)
- [VpsServiceAddons](docs/Model/VpsServiceAddons.md)
- [VpsServiceExtra](docs/Model/VpsServiceExtra.md)
- [VpsServiceInfo](docs/Model/VpsServiceInfo.md)
- [VpsServiceMaster](docs/Model/VpsServiceMaster.md)
- [VpsSnapshot](docs/Model/VpsSnapshot.md)
- [VpsTemplateRow](docs/Model/VpsTemplateRow.md)
- [VpsTemplatesList](docs/Model/VpsTemplatesList.md)
- [VpsTrafficDataSectionResponse](docs/Model/VpsTrafficDataSectionResponse.md)
- [VpsTrafficHistoryResponse](docs/Model/VpsTrafficHistoryResponse.md)
- [VpsTrafficHistorySectionDataResponse](docs/Model/VpsTrafficHistorySectionDataResponse.md)
- [VpsTrafficHistorySectionResponse](docs/Model/VpsTrafficHistorySectionResponse.md)
- [VpsTrafficResponse](docs/Model/VpsTrafficResponse.md)
- [VpsTrafficTotalsResposne](docs/Model/VpsTrafficTotalsResposne.md)
- [VpsTrafficTotalsSectionResponse](docs/Model/VpsTrafficTotalsSectionResponse.md)
- [VpsTrafficUsageAverageResponse](docs/Model/VpsTrafficUsageAverageResponse.md)
- [VpsTrafficUsageAverageSectionResponse](docs/Model/VpsTrafficUsageAverageSectionResponse.md)
- [VpsTrafficUsageResponse](docs/Model/VpsTrafficUsageResponse.md)
- [WebhostingCancel200Response](docs/Model/WebhostingCancel200Response.md)
- [Website](docs/Model/Website.md)
- [WebsiteBackups](docs/Model/WebsiteBackups.md)
- [WebsiteBackupsInner](docs/Model/WebsiteBackupsInner.md)
- [WebsiteBillingDetails](docs/Model/WebsiteBillingDetails.md)
- [WebsiteClientLink](docs/Model/WebsiteClientLink.md)
- [WebsiteExtraInfoTables](docs/Model/WebsiteExtraInfoTables.md)
- [WebsiteLoginResponse](docs/Model/WebsiteLoginResponse.md)
- [WebsiteOrderPostRequest](docs/Model/WebsiteOrderPostRequest.md)
- [WebsiteOrderPutRequest](docs/Model/WebsiteOrderPutRequest.md)
- [WebsiteRow](docs/Model/WebsiteRow.md)
- [WebsiteServiceInfo](docs/Model/WebsiteServiceInfo.md)
- [WebsiteServiceMaster](docs/Model/WebsiteServiceMaster.md)
- [WebsiteTable](docs/Model/WebsiteTable.md)
- [WebsiteTableRow](docs/Model/WebsiteTableRow.md)
- [WebsitesOrder](docs/Model/WebsitesOrder.md)
- [WebsitesOrderJsonServiceOffers](docs/Model/WebsitesOrderJsonServiceOffers.md)
- [WebsitesOrderJsonServiceOffersItem](docs/Model/WebsitesOrderJsonServiceOffersItem.md)
- [WebsitesOrderJsonServices](docs/Model/WebsitesOrderJsonServices.md)
- [WebsitesOrderPackages](docs/Model/WebsitesOrderPackages.md)
- [WebsitesOrderPackagesInfo](docs/Model/WebsitesOrderPackagesInfo.md)
- [WebsitesOrderPackges](docs/Model/WebsitesOrderPackges.md)
- [WebsitesOrderServiceOffer](docs/Model/WebsitesOrderServiceOffer.md)
- [WebsitesOrderServiceOffers](docs/Model/WebsitesOrderServiceOffers.md)
- [WebsitesOrderServiceTypes](docs/Model/WebsitesOrderServiceTypes.md)

## Authorization

### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header



### sessionIdHeaderAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: HTTP header



### sessionIdCookieAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: 


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@interserver.net

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `0.9.0`
    - Package version: `1.0.0`
    - Generator version: `7.24.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
