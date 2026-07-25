# InterServer Management API API Client


# Overview\n\nThe InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.\n\nThe API covers the following service categories:\n- [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management\n- [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting\n- [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers\n- [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html)\n- [Backups](https://www.interserver.net/storage/) — storage and backup services\n- Licenses — control panel and software licenses\n- [Mail](https://www.mail.baby/) — mail delivery services\n- SSL — certificate provisioning\n- Billing — invoices, payment methods, and account management\n\nFor interactive testing, see the [API documentation](/api-docs/).\n\n# Authentication\n\nMost endpoints require authentication. Two methods are supported:\n\n## API Key (Preferred)\n\nGenerate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the `X-API-KEY` request header:\n\n```\nX-API-KEY: your-api-key-here\n```\n\n## Session-Based Authentication\n\nAlternatively, authenticate by creating a session:\n\n1. **Log in** — Send a `POST` request to `/login` with your account credentials. The response includes a session identifier.\n2. **Pass the session ID** — Include the session identifier in the `sessionid` header on subsequent requests:\n\n```\nsessionid: your-session-id-here\n```\n\nAPI key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.\n\n

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
IntServerAccountApi api = new IntServerAccountApi();
IntServer_Client client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'name' => 'null'
};

try {
    // cross your fingers
    IntServerSuccessTextResponse result = api.deleteAccountOauthName(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://my.interserver.net/apiv2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IntServerAccountApi* | [**deleteAccountOauthName**](IntServerAccountApi.md#deleteAccountOauthName) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
*IntServerAccountApi* | [**deleteAccountTfa**](IntServerAccountApi.md#deleteAccountTfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
*IntServerAccountApi* | [**deleteIpLimit**](IntServerAccountApi.md#deleteIpLimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
*IntServerAccountApi* | [**getAccountInfo**](IntServerAccountApi.md#getAccountInfo) | **GET** /account | Read full account profile, billing address, and security settings
*IntServerAccountApi* | [**getAccountTfaSetup**](IntServerAccountApi.md#getAccountTfaSetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
*IntServerAccountApi* | [**getHome**](IntServerAccountApi.md#getHome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
*IntServerAccountApi* | [**getSearch**](IntServerAccountApi.md#getSearch) | **GET** /search | Global autocomplete across the caller\&#39;s services, domains, and records
*IntServerAccountApi* | [**logout**](IntServerAccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
*IntServerAccountApi* | [**logoutAccountOauth**](IntServerAccountApi.md#logoutAccountOauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
*IntServerAccountApi* | [**updateAccountApiKey**](IntServerAccountApi.md#updateAccountApiKey) | **POST** /account/apikey | Rotate the account\&#39;s REST/MCP API key — old key is invalidated immediately
*IntServerAccountApi* | [**updateAccountFeatures**](IntServerAccountApi.md#updateAccountFeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
*IntServerAccountApi* | [**updateAccountInfo**](IntServerAccountApi.md#updateAccountInfo) | **POST** /account | Update contact and billing-address fields on the customer profile
*IntServerAccountApi* | [**updateAccountIpLimits**](IntServerAccountApi.md#updateAccountIpLimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account\&#39;s API+web allow-list (lockout-safe)
*IntServerAccountApi* | [**updateAccountPassword**](IntServerAccountApi.md#updateAccountPassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
*IntServerAccountApi* | [**updateAccountSshKey**](IntServerAccountApi.md#updateAccountSshKey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
*IntServerAccountApi* | [**updateAccountTfa**](IntServerAccountApi.md#updateAccountTfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account
*IntServerBackupsApi* | [**addBackup**](IntServerBackupsApi.md#addBackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
*IntServerBackupsApi* | [**cancelBackup**](IntServerBackupsApi.md#cancelBackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
*IntServerBackupsApi* | [**getBackupInfo**](IntServerBackupsApi.md#getBackupInfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
*IntServerBackupsApi* | [**getBackupInvoices**](IntServerBackupsApi.md#getBackupInvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
*IntServerBackupsApi* | [**getBackupLogin**](IntServerBackupsApi.md#getBackupLogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
*IntServerBackupsApi* | [**getBackupsList**](IntServerBackupsApi.md#getBackupsList) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
*IntServerBackupsApi* | [**getBackupsWelcomeEmail**](IntServerBackupsApi.md#getBackupsWelcomeEmail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
*IntServerBackupsApi* | [**getNewBackup**](IntServerBackupsApi.md#getNewBackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
*IntServerBackupsApi* | [**updateBackupInfo**](IntServerBackupsApi.md#updateBackupInfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
*IntServerBackupsApi* | [**validateBackupOrder**](IntServerBackupsApi.md#validateBackupOrder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging
*IntServerBillingApi* | [**addBillingCreditCard**](IntServerBillingApi.md#addBillingCreditCard) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow
*IntServerBillingApi* | [**addBillingPrepay**](IntServerBillingApi.md#addBillingPrepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
*IntServerBillingApi* | [**deleteBillingCreditCard**](IntServerBillingApi.md#deleteBillingCreditCard) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account
*IntServerBillingApi* | [**deleteBillingInvoice**](IntServerBillingApi.md#deleteBillingInvoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
*IntServerBillingApi* | [**deleteBillingPrepay**](IntServerBillingApi.md#deleteBillingPrepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
*IntServerBillingApi* | [**getAffiliateBanners**](IntServerBillingApi.md#getAffiliateBanners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions
*IntServerBillingApi* | [**getAffiliateDownload**](IntServerBillingApi.md#getAffiliateDownload) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
*IntServerBillingApi* | [**getAffiliateRichReport**](IntServerBillingApi.md#getAffiliateRichReport) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
*IntServerBillingApi* | [**getAffiliateSalesGraph**](IntServerBillingApi.md#getAffiliateSalesGraph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
*IntServerBillingApi* | [**getAffiliateSignups**](IntServerBillingApi.md#getAffiliateSignups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
*IntServerBillingApi* | [**getAffiliateTrafficGraph**](IntServerBillingApi.md#getAffiliateTrafficGraph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
*IntServerBillingApi* | [**getAffiliateWebTraffic**](IntServerBillingApi.md#getAffiliateWebTraffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
*IntServerBillingApi* | [**getBillingCart**](IntServerBillingApi.md#getBillingCart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
*IntServerBillingApi* | [**getBillingCreditCardVerify**](IntServerBillingApi.md#getBillingCreditCardVerify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
*IntServerBillingApi* | [**getBillingInvoice**](IntServerBillingApi.md#getBillingInvoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
*IntServerBillingApi* | [**getBillingInvoices**](IntServerBillingApi.md#getBillingInvoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
*IntServerBillingApi* | [**getBillingPrePays**](IntServerBillingApi.md#getBillingPrePays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
*IntServerBillingApi* | [**initiatePayment**](IntServerBillingApi.md#initiatePayment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
*IntServerBillingApi* | [**patchBillingCreditCardVerify**](IntServerBillingApi.md#patchBillingCreditCardVerify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
*IntServerBillingApi* | [**postBillingCreditCardVerify**](IntServerBillingApi.md#postBillingCreditCardVerify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
*IntServerBillingApi* | [**updateAffiliateDockSetup**](IntServerBillingApi.md#updateAffiliateDockSetup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
*IntServerBillingApi* | [**updateAffiliatePaymentSetup**](IntServerBillingApi.md#updateAffiliatePaymentSetup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
*IntServerBillingApi* | [**updateBillingCreditCard**](IntServerBillingApi.md#updateBillingCreditCard) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
*IntServerBillingApi* | [**updateBillingPaymentMethod**](IntServerBillingApi.md#updateBillingPaymentMethod) | **POST** /billing/payment_method | Set the account\&#39;s default payment method for recurring/auto charges
*IntServerDNSApi* | [**addDnsDomain**](IntServerDNSApi.md#addDnsDomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
*IntServerDNSApi* | [**addDnsRecord**](IntServerDNSApi.md#addDnsRecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
*IntServerDNSApi* | [**deleteDnsDomain**](IntServerDNSApi.md#deleteDnsDomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
*IntServerDNSApi* | [**deleteDnsRecord**](IntServerDNSApi.md#deleteDnsRecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
*IntServerDNSApi* | [**getDnsDomain**](IntServerDNSApi.md#getDnsDomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
*IntServerDNSApi* | [**getDnsList**](IntServerDNSApi.md#getDnsList) | **GET** /dns | List DNS zones hosted on the account with each zone\&#39;s apex A-record IP
*IntServerDNSApi* | [**updateDnsRecord**](IntServerDNSApi.md#updateDnsRecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)
*IntServerDomainsApi* | [**addDomain**](IntServerDomainsApi.md#addDomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice
*IntServerDomainsApi* | [**addDomainDnssec**](IntServerDomainsApi.md#addDomainDnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS
*IntServerDomainsApi* | [**addDomainNameserver**](IntServerDomainsApi.md#addDomainNameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver)
*IntServerDomainsApi* | [**cancelDomain**](IntServerDomainsApi.md#cancelDomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals
*IntServerDomainsApi* | [**deleteDomainDnssec**](IntServerDomainsApi.md#deleteDomainDnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
*IntServerDomainsApi* | [**deleteDomainNameserver**](IntServerDomainsApi.md#deleteDomainNameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain
*IntServerDomainsApi* | [**getDomainContact**](IntServerDomainsApi.md#getDomainContact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain
*IntServerDomainsApi* | [**getDomainDnssec**](IntServerDomainsApi.md#getDomainDnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar
*IntServerDomainsApi* | [**getDomainInfo**](IntServerDomainsApi.md#getDomainInfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain
*IntServerDomainsApi* | [**getDomainInvoices**](IntServerDomainsApi.md#getDomainInvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order
*IntServerDomainsApi* | [**getDomainLookup**](IntServerDomainsApi.md#getDomainLookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain
*IntServerDomainsApi* | [**getDomainNameservers**](IntServerDomainsApi.md#getDomainNameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain
*IntServerDomainsApi* | [**getDomainRenewal**](IntServerDomainsApi.md#getDomainRenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists
*IntServerDomainsApi* | [**getDomainSearch**](IntServerDomainsApi.md#getDomainSearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term
*IntServerDomainsApi* | [**getDomainTransfer**](IntServerDomainsApi.md#getDomainTransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order
*IntServerDomainsApi* | [**getDomainWhoisPrivacy**](IntServerDomainsApi.md#getDomainWhoisPrivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain
*IntServerDomainsApi* | [**getDomainsList**](IntServerDomainsApi.md#getDomainsList) | **GET** /domains | List every domain registration on the account with billing and registration metadata
*IntServerDomainsApi* | [**getDomainsWelcomeEmail**](IntServerDomainsApi.md#getDomainsWelcomeEmail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions
*IntServerDomainsApi* | [**getNewDomain**](IntServerDomainsApi.md#getNewDomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing
*IntServerDomainsApi* | [**patchDomains**](IntServerDomainsApi.md#patchDomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run
*IntServerDomainsApi* | [**postDomainRenewal**](IntServerDomainsApi.md#postDomainRenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice
*IntServerDomainsApi* | [**postDomainSearch**](IntServerDomainsApi.md#postDomainSearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview)
*IntServerDomainsApi* | [**postDomainTransfer**](IntServerDomainsApi.md#postDomainTransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST
*IntServerDomainsApi* | [**putDomains**](IntServerDomainsApi.md#putDomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit
*IntServerDomainsApi* | [**updateDomainContact**](IntServerDomainsApi.md#updateDomainContact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS
*IntServerDomainsApi* | [**updateDomainInfo**](IntServerDomainsApi.md#updateDomainInfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible)
*IntServerDomainsApi* | [**updateDomainNameservers**](IntServerDomainsApi.md#updateDomainNameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar
*IntServerDomainsApi* | [**updateDomainWhoisPrivacy**](IntServerDomainsApi.md#updateDomainWhoisPrivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain
*IntServerFloatingIPsApi* | [**addFloatingIp**](IntServerFloatingIPsApi.md#addFloatingIp) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service
*IntServerFloatingIPsApi* | [**floatingIpsCancel**](IntServerFloatingIPsApi.md#floatingIpsCancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops
*IntServerFloatingIPsApi* | [**getFloatingIpInfo**](IntServerFloatingIPsApi.md#getFloatingIpInfo) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP
*IntServerFloatingIPsApi* | [**getFloatingIpInvoices**](IntServerFloatingIPsApi.md#getFloatingIpInvoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service
*IntServerFloatingIPsApi* | [**getFloatingIpsList**](IntServerFloatingIPsApi.md#getFloatingIpsList) | **GET** /floating_ips | List all Floating IP services on the authenticated customer\&#39;s account
*IntServerFloatingIPsApi* | [**getFloatingIpsWelcomeEmail**](IntServerFloatingIPsApi.md#getFloatingIpsWelcomeEmail) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact
*IntServerFloatingIPsApi* | [**getNewFloatingIp**](IntServerFloatingIPsApi.md#getNewFloatingIp) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP
*IntServerFloatingIPsApi* | [**postFloatingIpsChangeIp**](IntServerFloatingIPsApi.md#postFloatingIpsChangeIp) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer\&#39;s services
*IntServerFloatingIPsApi* | [**putFloatingIps**](IntServerFloatingIPsApi.md#putFloatingIps) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer
*IntServerFloatingIPsApi* | [**updateFloatingIpInfo**](IntServerFloatingIPsApi.md#updateFloatingIpInfo) | **POST** /floating_ips/{id} | Update a Floating IP service\&#39;s editable settings (label / metadata)
*IntServerLicensesApi* | [**addLicense**](IntServerLicensesApi.md#addLicense) | **POST** /licenses/order | Order a new software license and create the recurring invoice
*IntServerLicensesApi* | [**getLicenseInfo**](IntServerLicensesApi.md#getLicenseInfo) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links
*IntServerLicensesApi* | [**getLicenseInvoices**](IntServerLicensesApi.md#getLicenseInvoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service
*IntServerLicensesApi* | [**getLicenseList**](IntServerLicensesApi.md#getLicenseList) | **GET** /licenses | List all software licenses owned by the authenticated customer
*IntServerLicensesApi* | [**getLicensesWelcomeEmail**](IntServerLicensesApi.md#getLicensesWelcomeEmail) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps
*IntServerLicensesApi* | [**getNewLicense**](IntServerLicensesApi.md#getNewLicense) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering
*IntServerLicensesApi* | [**licensesCancel**](IntServerLicensesApi.md#licensesCancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible)
*IntServerLicensesApi* | [**postLicenseChangeIp**](IntServerLicensesApi.md#postLicenseChangeIp) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee)
*IntServerLicensesApi* | [**putLicenses**](IntServerLicensesApi.md#putLicenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview)
*IntServerLicensesApi* | [**updateLicenseInfo**](IntServerLicensesApi.md#updateLicenseInfo) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP)
*IntServerMailApi* | [**addMail**](IntServerMailApi.md#addMail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
*IntServerMailApi* | [**addRule**](IntServerMailApi.md#addRule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
*IntServerMailApi* | [**createMailAlert**](IntServerMailApi.md#createMailAlert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
*IntServerMailApi* | [**deleteMailAlert**](IntServerMailApi.md#deleteMailAlert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
*IntServerMailApi* | [**deleteRule**](IntServerMailApi.md#deleteRule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
*IntServerMailApi* | [**delistBlock**](IntServerMailApi.md#delistBlock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
*IntServerMailApi* | [**getMailAlerts**](IntServerMailApi.md#getMailAlerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
*IntServerMailApi* | [**getMailBlocks**](IntServerMailApi.md#getMailBlocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
*IntServerMailApi* | [**getMailDelist**](IntServerMailApi.md#getMailDelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
*IntServerMailApi* | [**getMailDeliverability**](IntServerMailApi.md#getMailDeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
*IntServerMailApi* | [**getMailInfo**](IntServerMailApi.md#getMailInfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
*IntServerMailApi* | [**getMailInvoices**](IntServerMailApi.md#getMailInvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
*IntServerMailApi* | [**getMailList**](IntServerMailApi.md#getMailList) | **GET** /mail | List every Mail Baby SMTP relay service on the account
*IntServerMailApi* | [**getMailWelcomeEmail**](IntServerMailApi.md#getMailWelcomeEmail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
*IntServerMailApi* | [**getNewMail**](IntServerMailApi.md#getNewMail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
*IntServerMailApi* | [**getRules**](IntServerMailApi.md#getRules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
*IntServerMailApi* | [**getStats**](IntServerMailApi.md#getStats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
*IntServerMailApi* | [**mailCancel**](IntServerMailApi.md#mailCancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
*IntServerMailApi* | [**postMailDelist**](IntServerMailApi.md#postMailDelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
*IntServerMailApi* | [**putMail**](IntServerMailApi.md#putMail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
*IntServerMailApi* | [**resetMailPassword**](IntServerMailApi.md#resetMailPassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
*IntServerMailApi* | [**sendAdvMail**](IntServerMailApi.md#sendAdvMail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
*IntServerMailApi* | [**sendMail**](IntServerMailApi.md#sendMail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
*IntServerMailApi* | [**updateMailAlert**](IntServerMailApi.md#updateMailAlert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
*IntServerMailApi* | [**updateMailInfo**](IntServerMailApi.md#updateMailInfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
*IntServerMailApi* | [**updateRule**](IntServerMailApi.md#updateRule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule\&#39;s type and match data
*IntServerMailApi* | [**viewMailLog**](IntServerMailApi.md#viewMailLog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries
*IntServerPublicApi* | [**getAccountCurrencies**](IntServerPublicApi.md#getAccountCurrencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences
*IntServerPublicApi* | [**getAccountLocales**](IntServerPublicApi.md#getAccountLocales) | **GET** /account/locales | List supported UI locales with English and native display names
*IntServerPublicApi* | [**getCaptcha**](IntServerPublicApi.md#getCaptcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification
*IntServerPublicApi* | [**getCountries**](IntServerPublicApi.md#getCountries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code
*IntServerPublicApi* | [**getInfo**](IntServerPublicApi.md#getInfo) | **GET** /info | Discover available modules, service packages, categories, and types
*IntServerPublicApi* | [**getLoginInfo**](IntServerPublicApi.md#getLoginInfo) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page
*IntServerPublicApi* | [**getMPServers**](IntServerPublicApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*IntServerPublicApi* | [**getOauthRedirect**](IntServerPublicApi.md#getOauthRedirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication
*IntServerPublicApi* | [**getTimezones**](IntServerPublicApi.md#getTimezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services
*IntServerPublicApi* | [**patchOauthTwoFactor**](IntServerPublicApi.md#patchOauthTwoFactor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled
*IntServerPublicApi* | [**pingServer**](IntServerPublicApi.md#pingServer) | **GET** /ping | Liveness check — returns the JSON string &quot;pong&quot; to confirm API is up
*IntServerPublicApi* | [**postOauthCallback**](IntServerPublicApi.md#postOauthCallback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account
*IntServerPublicApi* | [**submitLogin**](IntServerPublicApi.md#submitLogin) | **POST** /login | Authenticate with email + password and return a session token
*IntServerPublicApi* | [**submitSignup**](IntServerPublicApi.md#submitSignup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS)
*IntServerQuickServersApi* | [**addQs**](IntServerQuickServersApi.md#addQs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
*IntServerQuickServersApi* | [**deleteQsBackup**](IntServerQuickServersApi.md#deleteQsBackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
*IntServerQuickServersApi* | [**doQsBlockSmtp**](IntServerQuickServersApi.md#doQsBlockSmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
*IntServerQuickServersApi* | [**doQsDisableCd**](IntServerQuickServersApi.md#doQsDisableCd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
*IntServerQuickServersApi* | [**doQsDisableQuota**](IntServerQuickServersApi.md#doQsDisableQuota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
*IntServerQuickServersApi* | [**doQsEjectCd**](IntServerQuickServersApi.md#doQsEjectCd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer\&#39;s virtual CD drive
*IntServerQuickServersApi* | [**doQsEnableQuota**](IntServerQuickServersApi.md#doQsEnableQuota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
*IntServerQuickServersApi* | [**doQsRestart**](IntServerQuickServersApi.md#doQsRestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
*IntServerQuickServersApi* | [**doQsStart**](IntServerQuickServersApi.md#doQsStart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
*IntServerQuickServersApi* | [**doQsStop**](IntServerQuickServersApi.md#doQsStop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
*IntServerQuickServersApi* | [**downloadQsBackup**](IntServerQuickServersApi.md#downloadQsBackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
*IntServerQuickServersApi* | [**getNewQs**](IntServerQuickServersApi.md#getNewQs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
*IntServerQuickServersApi* | [**getQsBackup**](IntServerQuickServersApi.md#getQsBackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
*IntServerQuickServersApi* | [**getQsBackups**](IntServerQuickServersApi.md#getQsBackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
*IntServerQuickServersApi* | [**getQsChangeHostname**](IntServerQuickServersApi.md#getQsChangeHostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
*IntServerQuickServersApi* | [**getQsChangeRootPassword**](IntServerQuickServersApi.md#getQsChangeRootPassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
*IntServerQuickServersApi* | [**getQsChangeTimezone**](IntServerQuickServersApi.md#getQsChangeTimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
*IntServerQuickServersApi* | [**getQsChangeWebuzoPassword**](IntServerQuickServersApi.md#getQsChangeWebuzoPassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
*IntServerQuickServersApi* | [**getQsInfo**](IntServerQuickServersApi.md#getQsInfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
*IntServerQuickServersApi* | [**getQsInsertCd**](IntServerQuickServersApi.md#getQsInsertCd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer\&#39;s virtual CD
*IntServerQuickServersApi* | [**getQsInvoices**](IntServerQuickServersApi.md#getQsInvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
*IntServerQuickServersApi* | [**getQsList**](IntServerQuickServersApi.md#getQsList) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
*IntServerQuickServersApi* | [**getQsReinstallOs**](IntServerQuickServersApi.md#getQsReinstallOs) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
*IntServerQuickServersApi* | [**getQsResetPassword**](IntServerQuickServersApi.md#getQsResetPassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
*IntServerQuickServersApi* | [**getQsReverseDns**](IntServerQuickServersApi.md#getQsReverseDns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer\&#39;s IPs
*IntServerQuickServersApi* | [**getQsSetupVnc**](IntServerQuickServersApi.md#getQsSetupVnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
*IntServerQuickServersApi* | [**getQsTrafficUsage**](IntServerQuickServersApi.md#getQsTrafficUsage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer\&#39;s current billing period
*IntServerQuickServersApi* | [**getQsViewDesktop**](IntServerQuickServersApi.md#getQsViewDesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
*IntServerQuickServersApi* | [**getQsWelcomeEmail**](IntServerQuickServersApi.md#getQsWelcomeEmail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
*IntServerQuickServersApi* | [**postQsChangeHostname**](IntServerQuickServersApi.md#postQsChangeHostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer\&#39;s system hostname (OpenVZ/Virtuozzo only)
*IntServerQuickServersApi* | [**postQsChangeRootPassword**](IntServerQuickServersApi.md#postQsChangeRootPassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
*IntServerQuickServersApi* | [**postQsChangeTimezone**](IntServerQuickServersApi.md#postQsChangeTimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
*IntServerQuickServersApi* | [**postQsChangeWebuzoPassword**](IntServerQuickServersApi.md#postQsChangeWebuzoPassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
*IntServerQuickServersApi* | [**postQsInsertCd**](IntServerQuickServersApi.md#postQsInsertCd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer\&#39;s virtual CD via URL
*IntServerQuickServersApi* | [**postQsReinstallOs**](IntServerQuickServersApi.md#postQsReinstallOs) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
*IntServerQuickServersApi* | [**postQsResetPassword**](IntServerQuickServersApi.md#postQsResetPassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
*IntServerQuickServersApi* | [**postQsReverseDns**](IntServerQuickServersApi.md#postQsReverseDns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer\&#39;s IPs
*IntServerQuickServersApi* | [**postQsSetupVnc**](IntServerQuickServersApi.md#postQsSetupVnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer\&#39;s VNC console
*IntServerQuickServersApi* | [**postQsTrafficUsage**](IntServerQuickServersApi.md#postQsTrafficUsage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
*IntServerQuickServersApi* | [**postQsViewDesktop**](IntServerQuickServersApi.md#postQsViewDesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
*IntServerQuickServersApi* | [**postQuickServerRestore**](IntServerQuickServersApi.md#postQuickServerRestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
*IntServerQuickServersApi* | [**putQs**](IntServerQuickServersApi.md#putQs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
*IntServerQuickServersApi* | [**quickserversCancel**](IntServerQuickServersApi.md#quickserversCancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
*IntServerQuickServersApi* | [**updateQsInfo**](IntServerQuickServersApi.md#updateQsInfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact
*IntServerSSLCertificatesApi* | [**addSsl**](IntServerSSLCertificatesApi.md#addSsl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance
*IntServerSSLCertificatesApi* | [**getNewSsl**](IntServerSSLCertificatesApi.md#getNewSsl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order
*IntServerSSLCertificatesApi* | [**getSslInfo**](IntServerSSLCertificatesApi.md#getSslInfo) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links
*IntServerSSLCertificatesApi* | [**getSslInvoices**](IntServerSSLCertificatesApi.md#getSslInvoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id
*IntServerSSLCertificatesApi* | [**getSslList**](IntServerSSLCertificatesApi.md#getSslList) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname
*IntServerSSLCertificatesApi* | [**getSslWelcomeEmail**](IntServerSSLCertificatesApi.md#getSslWelcomeEmail) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions
*IntServerSSLCertificatesApi* | [**putSsl**](IntServerSSLCertificatesApi.md#putSsl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl
*IntServerSSLCertificatesApi* | [**sslCancel**](IntServerSSLCertificatesApi.md#sslCancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle
*IntServerSSLCertificatesApi* | [**updateSslInfo**](IntServerSSLCertificatesApi.md#updateSslInfo) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id
*IntServerScrubIpsApi* | [**cancelScrubIp**](IntServerScrubIpsApi.md#cancelScrubIp) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
*IntServerScrubIpsApi* | [**createFilter**](IntServerScrubIpsApi.md#createFilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
*IntServerScrubIpsApi* | [**createGeoRule**](IntServerScrubIpsApi.md#createGeoRule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
*IntServerScrubIpsApi* | [**createRule**](IntServerScrubIpsApi.md#createRule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
*IntServerScrubIpsApi* | [**deleteFilter**](IntServerScrubIpsApi.md#deleteFilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
*IntServerScrubIpsApi* | [**disableScrub**](IntServerScrubIpsApi.md#disableScrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
*IntServerScrubIpsApi* | [**enableScrub**](IntServerScrubIpsApi.md#enableScrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service\&#39;s protected IP
*IntServerScrubIpsApi* | [**getOrderDetail**](IntServerScrubIpsApi.md#getOrderDetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
*IntServerScrubIpsApi* | [**getScrubIpDetails**](IntServerScrubIpsApi.md#getScrubIpDetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
*IntServerScrubIpsApi* | [**getScrubIpFilterTypes**](IntServerScrubIpsApi.md#getScrubIpFilterTypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
*IntServerScrubIpsApi* | [**getScrubIpInvoices**](IntServerScrubIpsApi.md#getScrubIpInvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
*IntServerScrubIpsApi* | [**getScrubIpLogs**](IntServerScrubIpsApi.md#getScrubIpLogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
*IntServerScrubIpsApi* | [**getScrubIpsList**](IntServerScrubIpsApi.md#getScrubIpsList) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
*IntServerScrubIpsApi* | [**placeScrubOrder**](IntServerScrubIpsApi.md#placeScrubOrder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
*IntServerScrubIpsApi* | [**putScrubIps**](IntServerScrubIpsApi.md#putScrubIps) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
*IntServerScrubIpsApi* | [**scrubIpsDeleteGeoRule**](IntServerScrubIpsApi.md#scrubIpsDeleteGeoRule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
*IntServerScrubIpsApi* | [**scrubIpsDeleteRule**](IntServerScrubIpsApi.md#scrubIpsDeleteRule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
*IntServerServersApi* | [**addServer**](IntServerServersApi.md#addServer) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
*IntServerServersApi* | [**buyItNowServerOrder**](IntServerServersApi.md#buyItNowServerOrder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
*IntServerServersApi* | [**getMPServers**](IntServerServersApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*IntServerServersApi* | [**getNewServer**](IntServerServersApi.md#getNewServer) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
*IntServerServersApi* | [**getServerInfo**](IntServerServersApi.md#getServerInfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
*IntServerServersApi* | [**getServerInvoices**](IntServerServersApi.md#getServerInvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
*IntServerServersApi* | [**getServerList**](IntServerServersApi.md#getServerList) | **GET** /servers | List all dedicated servers owned by the authenticated customer
*IntServerServersApi* | [**getServerReverseDns**](IntServerServersApi.md#getServerReverseDns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server\&#39;s IPs
*IntServerServersApi* | [**getServersWelcomeEmail**](IntServerServersApi.md#getServersWelcomeEmail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
*IntServerServersApi* | [**placeBuyNowServer**](IntServerServersApi.md#placeBuyNowServer) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
*IntServerServersApi* | [**postServerReverseDns**](IntServerServersApi.md#postServerReverseDns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server\&#39;s IPs
*IntServerServersApi* | [**serverBulkIpmiPowerGet**](IntServerServersApi.md#serverBulkIpmiPowerGet) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
*IntServerServersApi* | [**serverIpmiLiveGet**](IntServerServersApi.md#serverIpmiLiveGet) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
*IntServerServersApi* | [**serverIpmiLivePost**](IntServerServersApi.md#serverIpmiLivePost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
*IntServerServersApi* | [**serverIpmiPowerGet**](IntServerServersApi.md#serverIpmiPowerGet) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
*IntServerServersApi* | [**serverIpmiPowerPost**](IntServerServersApi.md#serverIpmiPowerPost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
*IntServerServersApi* | [**serversCancel**](IntServerServersApi.md#serversCancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
*IntServerServersApi* | [**updateServerInfo**](IntServerServersApi.md#updateServerInfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)
*IntServerTicketsApi* | [**addNewTicket**](IntServerTicketsApi.md#addNewTicket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
*IntServerTicketsApi* | [**closeTicket**](IntServerTicketsApi.md#closeTicket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
*IntServerTicketsApi* | [**deleteTicketInfo**](IntServerTicketsApi.md#deleteTicketInfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
*IntServerTicketsApi* | [**getNewTicket**](IntServerTicketsApi.md#getNewTicket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
*IntServerTicketsApi* | [**getTicketInfo**](IntServerTicketsApi.md#getTicketInfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
*IntServerTicketsApi* | [**getTicketsList**](IntServerTicketsApi.md#getTicketsList) | **GET** /tickets | List the authenticated account\&#39;s support tickets with status and date filters
*IntServerTicketsApi* | [**postTicketInfo**](IntServerTicketsApi.md#postTicketInfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
*IntServerTicketsApi* | [**postTicketsList**](IntServerTicketsApi.md#postTicketsList) | **POST** /tickets | Search the authenticated account\&#39;s tickets by subject, email, or mask ID
*IntServerTicketsApi* | [**putTicketInfo**](IntServerTicketsApi.md#putTicketInfo) | **PUT** /tickets/{id} | Update a ticket\&#39;s properties such as subject or status (stub, not implemented)
*IntServerTicketsApi* | [**replyTicket**](IntServerTicketsApi.md#replyTicket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
*IntServerTicketsApi* | [**updateTicketInfo**](IntServerTicketsApi.md#updateTicketInfo) | **POST** /tickets/{id}/update | Update a ticket\&#39;s custom field values (server-access details, etc.)
*IntServerVPSApi* | [**addVps**](IntServerVPSApi.md#addVps) | **POST** /vps/order | Place a new VPS order, create the invoice, and queue provisioning
*IntServerVPSApi* | [**deleteVpsBackup**](IntServerVPSApi.md#deleteVpsBackup) | **DELETE** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible)
*IntServerVPSApi* | [**doVpsBlockSmtp**](IntServerVPSApi.md#doVpsBlockSmtp) | **GET** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
*IntServerVPSApi* | [**doVpsDisableCd**](IntServerVPSApi.md#doVpsDisableCd) | **GET** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration
*IntServerVPSApi* | [**doVpsDisableQuota**](IntServerVPSApi.md#doVpsDisableQuota) | **GET** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS
*IntServerVPSApi* | [**doVpsEjectCd**](IntServerVPSApi.md#doVpsEjectCd) | **GET** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
*IntServerVPSApi* | [**doVpsEnableQuota**](IntServerVPSApi.md#doVpsEnableQuota) | **GET** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS
*IntServerVPSApi* | [**doVpsRestart**](IntServerVPSApi.md#doVpsRestart) | **GET** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes
*IntServerVPSApi* | [**doVpsStart**](IntServerVPSApi.md#doVpsStart) | **GET** /vps/{id}/start | Power on a stopped VPS instance
*IntServerVPSApi* | [**doVpsStop**](IntServerVPSApi.md#doVpsStop) | **GET** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation
*IntServerVPSApi* | [**downloadVpsBackup**](IntServerVPSApi.md#downloadVpsBackup) | **PATCH** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
*IntServerVPSApi* | [**getNewVps**](IntServerVPSApi.md#getNewVps) | **GET** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing
*IntServerVPSApi* | [**getVpsBackup**](IntServerVPSApi.md#getVpsBackup) | **GET** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS
*IntServerVPSApi* | [**getVpsBackups**](IntServerVPSApi.md#getVpsBackups) | **GET** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS
*IntServerVPSApi* | [**getVpsBuyHdSpace**](IntServerVPSApi.md#getVpsBuyHdSpace) | **GET** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS
*IntServerVPSApi* | [**getVpsBuyIp**](IntServerVPSApi.md#getVpsBuyIp) | **GET** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS
*IntServerVPSApi* | [**getVpsChangeHostname**](IntServerVPSApi.md#getVpsChangeHostname) | **GET** /vps/{id}/change_hostname | Read the VPS\&#39;s current hostname before changing it
*IntServerVPSApi* | [**getVpsChangeRootPassword**](IntServerVPSApi.md#getVpsChangeRootPassword) | **GET** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password
*IntServerVPSApi* | [**getVpsChangeTimezone**](IntServerVPSApi.md#getVpsChangeTimezone) | **GET** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS
*IntServerVPSApi* | [**getVpsInfo**](IntServerVPSApi.md#getVpsInfo) | **GET** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons
*IntServerVPSApi* | [**getVpsInsertCd**](IntServerVPSApi.md#getVpsInsertCd) | **GET** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive
*IntServerVPSApi* | [**getVpsInvoices**](IntServerVPSApi.md#getVpsInvoices) | **GET** /vps/{id}/invoices | List all billing invoices associated with this specific VPS
*IntServerVPSApi* | [**getVpsList**](IntServerVPSApi.md#getVpsList) | **GET** /vps | List all VPS services on the customer\&#39;s account
*IntServerVPSApi* | [**getVpsReinstallOs**](IntServerVPSApi.md#getVpsReinstallOs) | **GET** /vps/{id}/reinstall_os | List OS templates compatible with this VPS\&#39;s hypervisor for reinstall
*IntServerVPSApi* | [**getVpsResetPassword**](IntServerVPSApi.md#getVpsResetPassword) | **GET** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value
*IntServerVPSApi* | [**getVpsReverseDns**](IntServerVPSApi.md#getVpsReverseDns) | **GET** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS
*IntServerVPSApi* | [**getVpsSetupVnc**](IntServerVPSApi.md#getVpsSetupVnc) | **GET** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS
*IntServerVPSApi* | [**getVpsSlices**](IntServerVPSApi.md#getVpsSlices) | **GET** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost
*IntServerVPSApi* | [**getVpsTrafficUsage**](IntServerVPSApi.md#getVpsTrafficUsage) | **GET** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS
*IntServerVPSApi* | [**getVpsViewDesktop**](IntServerVPSApi.md#getVpsViewDesktop) | **GET** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
*IntServerVPSApi* | [**getVpsWelcomeEmail**](IntServerVPSApi.md#getVpsWelcomeEmail) | **GET** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials
*IntServerVPSApi* | [**postVpsBuyHdSpace**](IntServerVPSApi.md#postVpsBuyHdSpace) | **POST** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice
*IntServerVPSApi* | [**postVpsBuyIp**](IntServerVPSApi.md#postVpsBuyIp) | **POST** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice
*IntServerVPSApi* | [**postVpsChangeHostname**](IntServerVPSApi.md#postVpsChangeHostname) | **POST** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
*IntServerVPSApi* | [**postVpsChangeRootPassword**](IntServerVPSApi.md#postVpsChangeRootPassword) | **POST** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS
*IntServerVPSApi* | [**postVpsChangeTimezone**](IntServerVPSApi.md#postVpsChangeTimezone) | **POST** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS
*IntServerVPSApi* | [**postVpsChangeWebuzoPassword**](IntServerVPSApi.md#postVpsChangeWebuzoPassword) | **POST** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required)
*IntServerVPSApi* | [**postVpsInsertCd**](IntServerVPSApi.md#postVpsInsertCd) | **POST** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL
*IntServerVPSApi* | [**postVpsReinstallOs**](IntServerVPSApi.md#postVpsReinstallOs) | **POST** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
*IntServerVPSApi* | [**postVpsResetPassword**](IntServerVPSApi.md#postVpsResetPassword) | **POST** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value
*IntServerVPSApi* | [**postVpsRestore**](IntServerVPSApi.md#postVpsRestore) | **POST** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
*IntServerVPSApi* | [**postVpsReverseDns**](IntServerVPSApi.md#postVpsReverseDns) | **POST** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
*IntServerVPSApi* | [**postVpsSetupVnc**](IntServerVPSApi.md#postVpsSetupVnc) | **POST** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS
*IntServerVPSApi* | [**postVpsSlices**](IntServerVPSApi.md#postVpsSlices) | **POST** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
*IntServerVPSApi* | [**postVpsTrafficUsage**](IntServerVPSApi.md#postVpsTrafficUsage) | **POST** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved)
*IntServerVPSApi* | [**postVpsViewDesktop**](IntServerVPSApi.md#postVpsViewDesktop) | **POST** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes
*IntServerVPSApi* | [**putVps**](IntServerVPSApi.md#putVps) | **PUT** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge
*IntServerVPSApi* | [**putVpsBuyHdSpace**](IntServerVPSApi.md#putVpsBuyHdSpace) | **PUT** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run
*IntServerVPSApi* | [**updateVpsInfo**](IntServerVPSApi.md#updateVpsInfo) | **POST** /vps/{id} | Update editable settings on a VPS service record
*IntServerVPSApi* | [**vPSCancel**](IntServerVPSApi.md#vPSCancel) | **DELETE** /vps/{id} | Cancel a VPS service at the end of the current billing cycle
*IntServerWebhostingApi* | [**addWebsite**](IntServerWebhostingApi.md#addWebsite) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning
*IntServerWebhostingApi* | [**getNewWebsite**](IntServerWebhostingApi.md#getNewWebsite) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing
*IntServerWebhostingApi* | [**getWebsiteBuyIp**](IntServerWebhostingApi.md#getWebsiteBuyIp) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing
*IntServerWebhostingApi* | [**getWebsiteInfo**](IntServerWebhostingApi.md#getWebsiteInfo) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service
*IntServerWebhostingApi* | [**getWebsiteInvoices**](IntServerWebhostingApi.md#getWebsiteInvoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website
*IntServerWebhostingApi* | [**getWebsiteList**](IntServerWebhostingApi.md#getWebsiteList) | **GET** /websites | List the caller\&#39;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
*IntServerWebhostingApi* | [**getWebsitesBackups**](IntServerWebhostingApi.md#getWebsitesBackups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive
*IntServerWebhostingApi* | [**getWebsitesLogin**](IntServerWebhostingApi.md#getWebsitesLogin) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website\&#39;s control panel
*IntServerWebhostingApi* | [**getWebsitesWelcomeEmail**](IntServerWebhostingApi.md#getWebsitesWelcomeEmail) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL
*IntServerWebhostingApi* | [**gettWebsiteReverseDns**](IntServerWebhostingApi.md#gettWebsiteReverseDns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website\&#39;s IPs
*IntServerWebhostingApi* | [**postWebsiteBuyIp**](IntServerWebhostingApi.md#postWebsiteBuyIp) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records
*IntServerWebhostingApi* | [**postWebsiteMigration**](IntServerWebhostingApi.md#postWebsiteMigration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host
*IntServerWebhostingApi* | [**postWebsitesReverseDns**](IntServerWebhostingApi.md#postWebsitesReverseDns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs
*IntServerWebhostingApi* | [**putWebsites**](IntServerWebhostingApi.md#putWebsites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge
*IntServerWebhostingApi* | [**updateWebsiteInfo**](IntServerWebhostingApi.md#updateWebsiteInfo) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible)
*IntServerWebhostingApi* | [**webhostingCancel**](IntServerWebhostingApi.md#webhostingCancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end


## Documentation for Models

 - [IntServerAccountFeatures](IntServerAccountFeatures.md)
 - [IntServerAccountInfo](IntServerAccountInfo.md)
 - [IntServerAccountInfoCountryCurrencie](IntServerAccountInfoCountryCurrencie.md)
 - [IntServerAccountInfoData](IntServerAccountInfoData.md)
 - [IntServerAccountInfoDataCc](IntServerAccountInfoDataCc.md)
 - [IntServerAccountInfoDataCcs](IntServerAccountInfoDataCcs.md)
 - [IntServerAccountInfoDataEmailSetting](IntServerAccountInfoDataEmailSetting.md)
 - [IntServerAccountInfoDataExtra](IntServerAccountInfoDataExtra.md)
 - [IntServerAccountInfoDataFraudrecord](IntServerAccountInfoDataFraudrecord.md)
 - [IntServerAccountInfoLimits](IntServerAccountInfoLimits.md)
 - [IntServerAccountInfoLimitsInner](IntServerAccountInfoLimitsInner.md)
 - [IntServerAccountInfoMaxMindResponse](IntServerAccountInfoMaxMindResponse.md)
 - [IntServerAccountInfoMaxMindResponseR](IntServerAccountInfoMaxMindResponseR.md)
 - [IntServerAccountInfoOauthConfig](IntServerAccountInfoOauthConfig.md)
 - [IntServerAccountInfoOauthConfigProvi](IntServerAccountInfoOauthConfigProvi.md)
 - [IntServerAccountInfoOauthproviders](IntServerAccountInfoOauthproviders.md)
 - [IntServerAccountInfoPost](IntServerAccountInfoPost.md)
 - [IntServerAccountSshKey](IntServerAccountSshKey.md)
 - [IntServerAddServer200Response](IntServerAddServer200Response.md)
 - [IntServerAffiliateBannerRow](IntServerAffiliateBannerRow.md)
 - [IntServerAffiliateDockSetup](IntServerAffiliateDockSetup.md)
 - [IntServerAffiliatePaymentSetup](IntServerAffiliatePaymentSetup.md)
 - [IntServerAffiliateTrafficRow](IntServerAffiliateTrafficRow.md)
 - [IntServerBackup](IntServerBackup.md)
 - [IntServerBackupBillingDetails](IntServerBackupBillingDetails.md)
 - [IntServerBackupClientLink](IntServerBackupClientLink.md)
 - [IntServerBackupExtraInfoTables](IntServerBackupExtraInfoTables.md)
 - [IntServerBackupIPInfo](IntServerBackupIPInfo.md)
 - [IntServerBackupIPInfoRow](IntServerBackupIPInfoRow.md)
 - [IntServerBackupLoginResponse](IntServerBackupLoginResponse.md)
 - [IntServerBackupOrderPostResponse](IntServerBackupOrderPostResponse.md)
 - [IntServerBackupOrderPostResponseCjPa](IntServerBackupOrderPostResponseCjPa.md)
 - [IntServerBackupOrderPutRequest](IntServerBackupOrderPutRequest.md)
 - [IntServerBackupOrderPutResponse](IntServerBackupOrderPutResponse.md)
 - [IntServerBackupRow](IntServerBackupRow.md)
 - [IntServerBackupServiceInfo](IntServerBackupServiceInfo.md)
 - [IntServerBackupServiceMaster](IntServerBackupServiceMaster.md)
 - [IntServerBackupsOrder](IntServerBackupsOrder.md)
 - [IntServerBackupsOrderPackageCosts](IntServerBackupsOrderPackageCosts.md)
 - [IntServerBackupsOrderServiceTypes](IntServerBackupsOrderServiceTypes.md)
 - [IntServerBillingAddCcRequest](IntServerBillingAddCcRequest.md)
 - [IntServerBillingInvoiceDetail](IntServerBillingInvoiceDetail.md)
 - [IntServerBillingInvoiceList](IntServerBillingInvoiceList.md)
 - [IntServerBillingPaymentMethodRequest](IntServerBillingPaymentMethodRequest.md)
 - [IntServerBillingPrepayRequest](IntServerBillingPrepayRequest.md)
 - [IntServerBillingVerifyCcRequest](IntServerBillingVerifyCcRequest.md)
 - [IntServerBuyItNowList](IntServerBuyItNowList.md)
 - [IntServerBuyItNowRow](IntServerBuyItNowRow.md)
 - [IntServerBuyItNowRowCpuInner](IntServerBuyItNowRowCpuInner.md)
 - [IntServerBuyItNowRowCpuInnerOneOf](IntServerBuyItNowRowCpuInnerOneOf.md)
 - [IntServerBuyItNowServerOrder200Respo](IntServerBuyItNowServerOrder200Respo.md)
 - [IntServerCancelBackup200Response](IntServerCancelBackup200Response.md)
 - [IntServerCancelDomain200Response](IntServerCancelDomain200Response.md)
 - [IntServerCancelScrubIp200Response](IntServerCancelScrubIp200Response.md)
 - [IntServerCaptchaResponse](IntServerCaptchaResponse.md)
 - [IntServerChargeInvoiceRows](IntServerChargeInvoiceRows.md)
 - [IntServerChargeInvoiceRowsInvoicesVa](IntServerChargeInvoiceRowsInvoicesVa.md)
 - [IntServerCloseTicketResponseSchema](IntServerCloseTicketResponseSchema.md)
 - [IntServerCreateFilter](IntServerCreateFilter.md)
 - [IntServerCreateFilter201Response](IntServerCreateFilter201Response.md)
 - [IntServerCreateFilter400Response](IntServerCreateFilter400Response.md)
 - [IntServerCreateFilter500Response](IntServerCreateFilter500Response.md)
 - [IntServerCreateFirewallRule](IntServerCreateFirewallRule.md)
 - [IntServerCreateGeoFirewallRule](IntServerCreateGeoFirewallRule.md)
 - [IntServerCreateGeoRule400Response](IntServerCreateGeoRule400Response.md)
 - [IntServerCreateRule201Response](IntServerCreateRule201Response.md)
 - [IntServerCreateRule400Response](IntServerCreateRule400Response.md)
 - [IntServerCreateRule500Response](IntServerCreateRule500Response.md)
 - [IntServerDeleteFilter200Response](IntServerDeleteFilter200Response.md)
 - [IntServerDeleteFilter400Response](IntServerDeleteFilter400Response.md)
 - [IntServerDeleteFilter500Response](IntServerDeleteFilter500Response.md)
 - [IntServerDeleteFirewallRule](IntServerDeleteFirewallRule.md)
 - [IntServerDeleteGeoFirewallRule](IntServerDeleteGeoFirewallRule.md)
 - [IntServerDeleteMailAlertRequest](IntServerDeleteMailAlertRequest.md)
 - [IntServerDenyRuleNew](IntServerDenyRuleNew.md)
 - [IntServerDenyRuleRecord](IntServerDenyRuleRecord.md)
 - [IntServerDisableScrub200Response](IntServerDisableScrub200Response.md)
 - [IntServerDisableScrub400Response](IntServerDisableScrub400Response.md)
 - [IntServerDisableScrub500Response](IntServerDisableScrub500Response.md)
 - [IntServerDnsListItem](IntServerDnsListItem.md)
 - [IntServerDnsNewDomain](IntServerDnsNewDomain.md)
 - [IntServerDnsNewRecord](IntServerDnsNewRecord.md)
 - [IntServerDnsRecord](IntServerDnsRecord.md)
 - [IntServerDnsRecordType](IntServerDnsRecordType.md)
 - [IntServerDnsUpdateRecord](IntServerDnsUpdateRecord.md)
 - [IntServerDomain](IntServerDomain.md)
 - [IntServerDomainAdminContact](IntServerDomainAdminContact.md)
 - [IntServerDomainAllInfo](IntServerDomainAllInfo.md)
 - [IntServerDomainAllInfoAttributes](IntServerDomainAllInfoAttributes.md)
 - [IntServerDomainAllInfoAttributesCont](IntServerDomainAllInfoAttributesCont.md)
 - [IntServerDomainBillingDetails](IntServerDomainBillingDetails.md)
 - [IntServerDomainBillingExtra](IntServerDomainBillingExtra.md)
 - [IntServerDomainClientLink](IntServerDomainClientLink.md)
 - [IntServerDomainContactDetails](IntServerDomainContactDetails.md)
 - [IntServerDomainDnssecRecords](IntServerDomainDnssecRecords.md)
 - [IntServerDomainDnssecRecordsInner](IntServerDomainDnssecRecordsInner.md)
 - [IntServerDomainDnssecRequest](IntServerDomainDnssecRequest.md)
 - [IntServerDomainLookupResponse](IntServerDomainLookupResponse.md)
 - [IntServerDomainNameServer](IntServerDomainNameServer.md)
 - [IntServerDomainNameserverGetResponse](IntServerDomainNameserverGetResponse.md)
 - [IntServerDomainNameserverPostRequest](IntServerDomainNameserverPostRequest.md)
 - [IntServerDomainNameserverPutRequest](IntServerDomainNameserverPutRequest.md)
 - [IntServerDomainOrder](IntServerDomainOrder.md)
 - [IntServerDomainOrderRequest](IntServerDomainOrderRequest.md)
 - [IntServerDomainOrderResponse](IntServerDomainOrderResponse.md)
 - [IntServerDomainOrderResponseAttribut](IntServerDomainOrderResponseAttribut.md)
 - [IntServerDomainOrderServices](IntServerDomainOrderServices.md)
 - [IntServerDomainOrderServices10001](IntServerDomainOrderServices10001.md)
 - [IntServerDomainOwnerContact](IntServerDomainOwnerContact.md)
 - [IntServerDomainProvProcessPending](IntServerDomainProvProcessPending.md)
 - [IntServerDomainProvProcessPendingAtt](IntServerDomainProvProcessPendingAtt.md)
 - [IntServerDomainRow](IntServerDomainRow.md)
 - [IntServerDomainSearchResponse](IntServerDomainSearchResponse.md)
 - [IntServerDomainServiceInfo](IntServerDomainServiceInfo.md)
 - [IntServerDomainServiceType](IntServerDomainServiceType.md)
 - [IntServerDomainTechContact](IntServerDomainTechContact.md)
 - [IntServerDomainWhoisPrivacyRequest](IntServerDomainWhoisPrivacyRequest.md)
 - [IntServerDownloadQsBackup200Response](IntServerDownloadQsBackup200Response.md)
 - [IntServerDownloadQsBackupRequest](IntServerDownloadQsBackupRequest.md)
 - [IntServerEmailAddress](IntServerEmailAddress.md)
 - [IntServerEmailAddressName](IntServerEmailAddressName.md)
 - [IntServerEnableScrub200Response](IntServerEnableScrub200Response.md)
 - [IntServerEnableScrub500Response](IntServerEnableScrub500Response.md)
 - [IntServerFloatingIpOrderRequest](IntServerFloatingIpOrderRequest.md)
 - [IntServerFloatingIpsCancel200Respons](IntServerFloatingIpsCancel200Respons.md)
 - [IntServerGenericResponse](IntServerGenericResponse.md)
 - [IntServerGetAccountInfo401Response](IntServerGetAccountInfo401Response.md)
 - [IntServerGetAccountLocales200Respons](IntServerGetAccountLocales200Respons.md)
 - [IntServerGetAccountTfaSetup200Respon](IntServerGetAccountTfaSetup200Respon.md)
 - [IntServerGetAffiliateSignups200Respo](IntServerGetAffiliateSignups200Respo.md)
 - [IntServerGetOauthRedirect200Response](IntServerGetOauthRedirect200Response.md)
 - [IntServerGetOrderDetail200Response](IntServerGetOrderDetail200Response.md)
 - [IntServerGetOrderDetail200ResponseIp](IntServerGetOrderDetail200ResponseIp.md)
 - [IntServerGetOrderDetail200ResponsePa](IntServerGetOrderDetail200ResponsePa.md)
 - [IntServerGetOrderDetail200ResponseSe](IntServerGetOrderDetail200ResponseSe.md)
 - [IntServerGetScrubIpDetails200Respons](IntServerGetScrubIpDetails200Respons.md)
 - [IntServerGetWebsiteBuyIp200Response](IntServerGetWebsiteBuyIp200Response.md)
 - [IntServerHome](IntServerHome.md)
 - [IntServerHomeDetails](IntServerHomeDetails.md)
 - [IntServerHomeDetailsModules](IntServerHomeDetailsModules.md)
 - [IntServerHomeDetailsModulesBackups](IntServerHomeDetailsModulesBackups.md)
 - [IntServerHomeDetailsModulesDomains](IntServerHomeDetailsModulesDomains.md)
 - [IntServerHomeDetailsModulesLicenses](IntServerHomeDetailsModulesLicenses.md)
 - [IntServerHomeDetailsModulesQuickserv](IntServerHomeDetailsModulesQuickserv.md)
 - [IntServerHomeDetailsModulesServers](IntServerHomeDetailsModulesServers.md)
 - [IntServerHomeDetailsModulesVps](IntServerHomeDetailsModulesVps.md)
 - [IntServerHomeDetailsModulesWebhostin](IntServerHomeDetailsModulesWebhostin.md)
 - [IntServerHomeServices](IntServerHomeServices.md)
 - [IntServerHomeServicesBackups](IntServerHomeServicesBackups.md)
 - [IntServerHomeServicesDomains](IntServerHomeServicesDomains.md)
 - [IntServerHomeServicesDomainsLinks](IntServerHomeServicesDomainsLinks.md)
 - [IntServerHomeServicesLicenses](IntServerHomeServicesLicenses.md)
 - [IntServerHomeServicesLicensesLinks](IntServerHomeServicesLicensesLinks.md)
 - [IntServerHomeServicesServers](IntServerHomeServicesServers.md)
 - [IntServerHomeServicesServersLinks](IntServerHomeServicesServersLinks.md)
 - [IntServerHomeServicesVps](IntServerHomeServicesVps.md)
 - [IntServerHomeServicesVpsLinks](IntServerHomeServicesVpsLinks.md)
 - [IntServerHomeServicesWebhosting](IntServerHomeServicesWebhosting.md)
 - [IntServerHomeServicesWebhostingLinks](IntServerHomeServicesWebhostingLinks.md)
 - [IntServerHomeTicketStatus](IntServerHomeTicketStatus.md)
 - [IntServerHomeTicketStatusView](IntServerHomeTicketStatusView.md)
 - [IntServerHostnameObject](IntServerHostnameObject.md)
 - [IntServerInitiatePayment200Response](IntServerInitiatePayment200Response.md)
 - [IntServerIpLimitRange](IntServerIpLimitRange.md)
 - [IntServerIpObject](IntServerIpObject.md)
 - [IntServerLicense](IntServerLicense.md)
 - [IntServerLicenseBillingDetails](IntServerLicenseBillingDetails.md)
 - [IntServerLicenseClientLink](IntServerLicenseClientLink.md)
 - [IntServerLicenseExtraInfoTables](IntServerLicenseExtraInfoTables.md)
 - [IntServerLicenseIpInfo](IntServerLicenseIpInfo.md)
 - [IntServerLicenseIpInfoRow](IntServerLicenseIpInfoRow.md)
 - [IntServerLicenseOrderRequest](IntServerLicenseOrderRequest.md)
 - [IntServerLicenseRow](IntServerLicenseRow.md)
 - [IntServerLicenseServiceInfo](IntServerLicenseServiceInfo.md)
 - [IntServerLicenseServiceType](IntServerLicenseServiceType.md)
 - [IntServerLicensesCancel200Response](IntServerLicensesCancel200Response.md)
 - [IntServerLicensesOrder](IntServerLicensesOrder.md)
 - [IntServerLicensesOrderPackageCosts](IntServerLicensesOrderPackageCosts.md)
 - [IntServerLicensesOrderServiceCategor](IntServerLicensesOrderServiceCategor.md)
 - [IntServerLicensesOrderServiceTypes](IntServerLicensesOrderServiceTypes.md)
 - [IntServerLicensesOrderServiceTypes11](IntServerLicensesOrderServiceTypes11.md)
 - [IntServerLoginErrorResponse](IntServerLoginErrorResponse.md)
 - [IntServerLoginInfo](IntServerLoginInfo.md)
 - [IntServerLoginServiceCounts](IntServerLoginServiceCounts.md)
 - [IntServerLoginSubmissionExample](IntServerLoginSubmissionExample.md)
 - [IntServerLoginSubmissionExampleGReca](IntServerLoginSubmissionExampleGReca.md)
 - [IntServerLoginSuccessResponse](IntServerLoginSuccessResponse.md)
 - [IntServerMailAlertRequest](IntServerMailAlertRequest.md)
 - [IntServerMailAlertUpdateRequest](IntServerMailAlertUpdateRequest.md)
 - [IntServerMailAlertsResponse](IntServerMailAlertsResponse.md)
 - [IntServerMailAlertsResponseInner](IntServerMailAlertsResponseInner.md)
 - [IntServerMailAttachment](IntServerMailAttachment.md)
 - [IntServerMailBillingDetails](IntServerMailBillingDetails.md)
 - [IntServerMailBlockClickHouse](IntServerMailBlockClickHouse.md)
 - [IntServerMailBlockRspamd](IntServerMailBlockRspamd.md)
 - [IntServerMailBlocks](IntServerMailBlocks.md)
 - [IntServerMailCancel200Response](IntServerMailCancel200Response.md)
 - [IntServerMailClientLink](IntServerMailClientLink.md)
 - [IntServerMailDelistRequest](IntServerMailDelistRequest.md)
 - [IntServerMailDelistResponse](IntServerMailDelistResponse.md)
 - [IntServerMailDeliverabilityResponse](IntServerMailDeliverabilityResponse.md)
 - [IntServerMailExtraInfoTable](IntServerMailExtraInfoTable.md)
 - [IntServerMailExtraInfoTableRow](IntServerMailExtraInfoTableRow.md)
 - [IntServerMailLog](IntServerMailLog.md)
 - [IntServerMailLogEntry](IntServerMailLogEntry.md)
 - [IntServerMailOrder](IntServerMailOrder.md)
 - [IntServerMailOrderRequest](IntServerMailOrderRequest.md)
 - [IntServerMailRow](IntServerMailRow.md)
 - [IntServerMailSchema](IntServerMailSchema.md)
 - [IntServerMailSchemaExtraInfoTables](IntServerMailSchemaExtraInfoTables.md)
 - [IntServerMailServiceInfo](IntServerMailServiceInfo.md)
 - [IntServerMailServiceType](IntServerMailServiceType.md)
 - [IntServerMailStatsType](IntServerMailStatsType.md)
 - [IntServerMailStatsTypeVolume](IntServerMailStatsTypeVolume.md)
 - [IntServerMailStatsTypeVolumeFrom](IntServerMailStatsTypeVolumeFrom.md)
 - [IntServerMailStatsTypeVolumeIp](IntServerMailStatsTypeVolumeIp.md)
 - [IntServerMailStatsTypeVolumeTo](IntServerMailStatsTypeVolumeTo.md)
 - [IntServerMailTutorialsTable](IntServerMailTutorialsTable.md)
 - [IntServerMailTutorialsTableRow](IntServerMailTutorialsTableRow.md)
 - [IntServerModuleSettings](IntServerModuleSettings.md)
 - [IntServerModules](IntServerModules.md)
 - [IntServerMonthlyCounts](IntServerMonthlyCounts.md)
 - [IntServerPasswordRequest](IntServerPasswordRequest.md)
 - [IntServerPatchBillingCreditCardVerif](IntServerPatchBillingCreditCardVerif.md)
 - [IntServerPatchOauthTwoFactor200Respo](IntServerPatchOauthTwoFactor200Respo.md)
 - [IntServerPatchOauthTwoFactorRequest](IntServerPatchOauthTwoFactorRequest.md)
 - [IntServerPlaceBuyNowServerRequest](IntServerPlaceBuyNowServerRequest.md)
 - [IntServerPlaceScrubOrder201Response](IntServerPlaceScrubOrder201Response.md)
 - [IntServerPlaceScrubOrder201ResponseO](IntServerPlaceScrubOrder201ResponseO.md)
 - [IntServerPostOauthCallback200Respons](IntServerPostOauthCallback200Respons.md)
 - [IntServerPostOauthCallbackRequest](IntServerPostOauthCallbackRequest.md)
 - [IntServerPostWebsiteBuyIp200Response](IntServerPostWebsiteBuyIp200Response.md)
 - [IntServerPostWebsiteBuyIpRequest](IntServerPostWebsiteBuyIpRequest.md)
 - [IntServerPostWebsiteMigration200Resp](IntServerPostWebsiteMigration200Resp.md)
 - [IntServerPostWebsiteMigrationRequest](IntServerPostWebsiteMigrationRequest.md)
 - [IntServerPutScrubIps200Response](IntServerPutScrubIps200Response.md)
 - [IntServerQsOrderRequest](IntServerQsOrderRequest.md)
 - [IntServerQueueResponse](IntServerQueueResponse.md)
 - [IntServerQuickserver](IntServerQuickserver.md)
 - [IntServerQuickserverAddons](IntServerQuickserverAddons.md)
 - [IntServerQuickserverAddonsRow](IntServerQuickserverAddonsRow.md)
 - [IntServerQuickserverBillingDetails](IntServerQuickserverBillingDetails.md)
 - [IntServerQuickserverClientLink](IntServerQuickserverClientLink.md)
 - [IntServerQuickserverExtraInfoTables](IntServerQuickserverExtraInfoTables.md)
 - [IntServerQuickserverIpInfo](IntServerQuickserverIpInfo.md)
 - [IntServerQuickserverIpTableRow](IntServerQuickserverIpTableRow.md)
 - [IntServerQuickserverOrder](IntServerQuickserverOrder.md)
 - [IntServerQuickserverOrderDistroSel](IntServerQuickserverOrderDistroSel.md)
 - [IntServerQuickserverOrderDistroSelUb](IntServerQuickserverOrderDistroSelUb.md)
 - [IntServerQuickserverOrderServerDetai](IntServerQuickserverOrderServerDetai.md)
 - [IntServerQuickserverOrderTemplates](IntServerQuickserverOrderTemplates.md)
 - [IntServerQuickserverOrderTemplatesUb](IntServerQuickserverOrderTemplatesUb.md)
 - [IntServerQuickserverOrderVersion](IntServerQuickserverOrderVersion.md)
 - [IntServerQuickserverOrderVersionCent](IntServerQuickserverOrderVersionCent.md)
 - [IntServerQuickserverRow](IntServerQuickserverRow.md)
 - [IntServerQuickserverServiceExtra](IntServerQuickserverServiceExtra.md)
 - [IntServerQuickserverServiceInfo](IntServerQuickserverServiceInfo.md)
 - [IntServerQuickserverServiceMaster](IntServerQuickserverServiceMaster.md)
 - [IntServerQuickserversCancel200Respon](IntServerQuickserversCancel200Respon.md)
 - [IntServerReplyTicketRequest](IntServerReplyTicketRequest.md)
 - [IntServerReplyTicketResponseSchema](IntServerReplyTicketResponseSchema.md)
 - [IntServerRestoreRequest](IntServerRestoreRequest.md)
 - [IntServerReverseDnsEntries](IntServerReverseDnsEntries.md)
 - [IntServerScrubIpFilterTypes](IntServerScrubIpFilterTypes.md)
 - [IntServerScrubIpFilterTypesFiltersVa](IntServerScrubIpFilterTypesFiltersVa.md)
 - [IntServerScrubIpPlaceOrder](IntServerScrubIpPlaceOrder.md)
 - [IntServerScrubIpsDeleteRule200Respon](IntServerScrubIpsDeleteRule200Respon.md)
 - [IntServerScrubIpsDeleteRule400Respon](IntServerScrubIpsDeleteRule400Respon.md)
 - [IntServerScrubIpsDeleteRule500Respon](IntServerScrubIpsDeleteRule500Respon.md)
 - [IntServerScrubIpsLogRowSchema](IntServerScrubIpsLogRowSchema.md)
 - [IntServerScrubIpsRowSchema](IntServerScrubIpsRowSchema.md)
 - [IntServerSearchAutocompleteResponse](IntServerSearchAutocompleteResponse.md)
 - [IntServerSendMail](IntServerSendMail.md)
 - [IntServerSendMailAdv](IntServerSendMailAdv.md)
 - [IntServerServer](IntServerServer.md)
 - [IntServerServerAsset](IntServerServerAsset.md)
 - [IntServerServerAssets](IntServerServerAssets.md)
 - [IntServerServerBillingDetails](IntServerServerBillingDetails.md)
 - [IntServerServerBulkIpmiPowerResponse](IntServerServerBulkIpmiPowerResponse.md)
 - [IntServerServerClientLink](IntServerServerClientLink.md)
 - [IntServerServerExtraInfoTables](IntServerServerExtraInfoTables.md)
 - [IntServerServerIpmiLiveInfo](IntServerServerIpmiLiveInfo.md)
 - [IntServerServerIpmiLiveRequest](IntServerServerIpmiLiveRequest.md)
 - [IntServerServerIpmiPowerRequest](IntServerServerIpmiPowerRequest.md)
 - [IntServerServerLease](IntServerServerLease.md)
 - [IntServerServerLocation1](IntServerServerLocation1.md)
 - [IntServerServerLocations](IntServerServerLocations.md)
 - [IntServerServerNetworkInfo](IntServerServerNetworkInfo.md)
 - [IntServerServerNetworkInfoAssets](IntServerServerNetworkInfoAssets.md)
 - [IntServerServerNetworkInfoSwitchport](IntServerServerNetworkInfoSwitchport.md)
 - [IntServerServerOrder](IntServerServerOrder.md)
 - [IntServerServerOrderBandwidth](IntServerServerOrderBandwidth.md)
 - [IntServerServerOrderBandwidthLi](IntServerServerOrderBandwidthLi.md)
 - [IntServerServerOrderCPU](IntServerServerOrderCPU.md)
 - [IntServerServerOrderConfigIds](IntServerServerOrderConfigIds.md)
 - [IntServerServerOrderControlPanel](IntServerServerOrderControlPanel.md)
 - [IntServerServerOrderCpLi](IntServerServerOrderCpLi.md)
 - [IntServerServerOrderCpuLi](IntServerServerOrderCpuLi.md)
 - [IntServerServerOrderFieldLabel](IntServerServerOrderFieldLabel.md)
 - [IntServerServerOrderFieldLabels](IntServerServerOrderFieldLabels.md)
 - [IntServerServerOrderFormValues](IntServerServerOrderFormValues.md)
 - [IntServerServerOrderIP](IntServerServerOrderIP.md)
 - [IntServerServerOrderIpsLi](IntServerServerOrderIpsLi.md)
 - [IntServerServerOrderMemory](IntServerServerOrderMemory.md)
 - [IntServerServerOrderMemoryLi](IntServerServerOrderMemoryLi.md)
 - [IntServerServerOrderMemoryLi254](IntServerServerOrderMemoryLi254.md)
 - [IntServerServerOrderOS](IntServerServerOrderOS.md)
 - [IntServerServerOrderOsLi](IntServerServerOrderOsLi.md)
 - [IntServerServerOrderPostRequest](IntServerServerOrderPostRequest.md)
 - [IntServerServerOrderPostRequestHd](IntServerServerOrderPostRequestHd.md)
 - [IntServerServerOrderRAID](IntServerServerOrderRAID.md)
 - [IntServerServerRow](IntServerServerRow.md)
 - [IntServerServerServiceInfo](IntServerServerServiceInfo.md)
 - [IntServerServerSwitchport](IntServerServerSwitchport.md)
 - [IntServerServersBuyNowError](IntServerServersBuyNowError.md)
 - [IntServerServersBuyNowResponse](IntServerServersBuyNowResponse.md)
 - [IntServerServersBuyNowResponseOrderD](IntServerServersBuyNowResponseOrderD.md)
 - [IntServerServersCancel200Response](IntServerServersCancel200Response.md)
 - [IntServerService](IntServerService.md)
 - [IntServerServiceCategories](IntServerServiceCategories.md)
 - [IntServerServiceCategory](IntServerServiceCategory.md)
 - [IntServerServiceOrderPostResponse](IntServerServiceOrderPostResponse.md)
 - [IntServerServiceType](IntServerServiceType.md)
 - [IntServerServiceTypes](IntServerServiceTypes.md)
 - [IntServerServices](IntServerServices.md)
 - [IntServerServicesInfo](IntServerServicesInfo.md)
 - [IntServerSslCancel200Response](IntServerSslCancel200Response.md)
 - [IntServerSslOrderRequest](IntServerSslOrderRequest.md)
 - [IntServerStatusMonthlyBreakdown](IntServerStatusMonthlyBreakdown.md)
 - [IntServerSuccessTextResponse](IntServerSuccessTextResponse.md)
 - [IntServerTemplateRequest](IntServerTemplateRequest.md)
 - [IntServerTextResponse](IntServerTextResponse.md)
 - [IntServerTicketCustomFieldDetails](IntServerTicketCustomFieldDetails.md)
 - [IntServerTicketDetails](IntServerTicketDetails.md)
 - [IntServerTicketNew](IntServerTicketNew.md)
 - [IntServerTicketNewResponse](IntServerTicketNewResponse.md)
 - [IntServerTicketPostDetails](IntServerTicketPostDetails.md)
 - [IntServerTicketPostDetailsInner](IntServerTicketPostDetailsInner.md)
 - [IntServerTickets](IntServerTickets.md)
 - [IntServerTicketsCountArray](IntServerTicketsCountArray.md)
 - [IntServerTicketsRow](IntServerTicketsRow.md)
 - [IntServerTimezoneUpdate](IntServerTimezoneUpdate.md)
 - [IntServerUpdateAccountTfaRequest](IntServerUpdateAccountTfaRequest.md)
 - [IntServerUpdateTicket](IntServerUpdateTicket.md)
 - [IntServerUpdateTicketResponseSchema](IntServerUpdateTicketResponseSchema.md)
 - [IntServerUrlRequest](IntServerUrlRequest.md)
 - [IntServerVPSCancel200Response](IntServerVPSCancel200Response.md)
 - [IntServerVPSTrafficDataDataSectionRe](IntServerVPSTrafficDataDataSectionRe.md)
 - [IntServerViewMailLogStartDateParamet](IntServerViewMailLogStartDateParamet.md)
 - [IntServerViewTicketResponse](IntServerViewTicketResponse.md)
 - [IntServerVps](IntServerVps.md)
 - [IntServerVpsBackupRow](IntServerVpsBackupRow.md)
 - [IntServerVpsBackupRows](IntServerVpsBackupRows.md)
 - [IntServerVpsBillingDetails](IntServerVpsBillingDetails.md)
 - [IntServerVpsCPData](IntServerVpsCPData.md)
 - [IntServerVpsClientLink](IntServerVpsClientLink.md)
 - [IntServerVpsDAData](IntServerVpsDAData.md)
 - [IntServerVpsDALicense](IntServerVpsDALicense.md)
 - [IntServerVpsExtraInfoTables](IntServerVpsExtraInfoTables.md)
 - [IntServerVpsIPInfo](IntServerVpsIPInfo.md)
 - [IntServerVpsIPInfoRow](IntServerVpsIPInfoRow.md)
 - [IntServerVpsOrder](IntServerVpsOrder.md)
 - [IntServerVpsOrderLocationNames](IntServerVpsOrderLocationNames.md)
 - [IntServerVpsOrderLocationStock](IntServerVpsOrderLocationStock.md)
 - [IntServerVpsOrderLocationStock1](IntServerVpsOrderLocationStock1.md)
 - [IntServerVpsOrderOsNames](IntServerVpsOrderOsNames.md)
 - [IntServerVpsOrderPackageCosts](IntServerVpsOrderPackageCosts.md)
 - [IntServerVpsOrderPlatformNames](IntServerVpsOrderPlatformNames.md)
 - [IntServerVpsOrderPlatformPackages](IntServerVpsOrderPlatformPackages.md)
 - [IntServerVpsOrderPostRequest](IntServerVpsOrderPostRequest.md)
 - [IntServerVpsOrderPutRequest](IntServerVpsOrderPutRequest.md)
 - [IntServerVpsOrderPutResponse](IntServerVpsOrderPutResponse.md)
 - [IntServerVpsOrderServiceTypes](IntServerVpsOrderServiceTypes.md)
 - [IntServerVpsOrderServiceTypes32](IntServerVpsOrderServiceTypes32.md)
 - [IntServerVpsOrderTemplates](IntServerVpsOrderTemplates.md)
 - [IntServerVpsOrderTemplatesHyperv](IntServerVpsOrderTemplatesHyperv.md)
 - [IntServerVpsOrderTemplatesHypervWind](IntServerVpsOrderTemplatesHypervWind.md)
 - [IntServerVpsPlesk12Data](IntServerVpsPlesk12Data.md)
 - [IntServerVpsPleskLicense](IntServerVpsPleskLicense.md)
 - [IntServerVpsRow](IntServerVpsRow.md)
 - [IntServerVpsServiceAddons](IntServerVpsServiceAddons.md)
 - [IntServerVpsServiceExtra](IntServerVpsServiceExtra.md)
 - [IntServerVpsServiceInfo](IntServerVpsServiceInfo.md)
 - [IntServerVpsServiceMaster](IntServerVpsServiceMaster.md)
 - [IntServerVpsSnapshot](IntServerVpsSnapshot.md)
 - [IntServerVpsTemplateRow](IntServerVpsTemplateRow.md)
 - [IntServerVpsTemplatesList](IntServerVpsTemplatesList.md)
 - [IntServerVpsTrafficDataSectionRespon](IntServerVpsTrafficDataSectionRespon.md)
 - [IntServerVpsTrafficHistoryResponse](IntServerVpsTrafficHistoryResponse.md)
 - [IntServerVpsTrafficHistorySectionDat](IntServerVpsTrafficHistorySectionDat.md)
 - [IntServerVpsTrafficHistorySectionRes](IntServerVpsTrafficHistorySectionRes.md)
 - [IntServerVpsTrafficResponse](IntServerVpsTrafficResponse.md)
 - [IntServerVpsTrafficTotalsResposne](IntServerVpsTrafficTotalsResposne.md)
 - [IntServerVpsTrafficTotalsSectionResp](IntServerVpsTrafficTotalsSectionResp.md)
 - [IntServerVpsTrafficUsageAverageRespo](IntServerVpsTrafficUsageAverageRespo.md)
 - [IntServerVpsTrafficUsageAverageSecti](IntServerVpsTrafficUsageAverageSecti.md)
 - [IntServerVpsTrafficUsageResponse](IntServerVpsTrafficUsageResponse.md)
 - [IntServerWebhostingCancel200Response](IntServerWebhostingCancel200Response.md)
 - [IntServerWebsite](IntServerWebsite.md)
 - [IntServerWebsiteBackups](IntServerWebsiteBackups.md)
 - [IntServerWebsiteBackupsInner](IntServerWebsiteBackupsInner.md)
 - [IntServerWebsiteBillingDetails](IntServerWebsiteBillingDetails.md)
 - [IntServerWebsiteClientLink](IntServerWebsiteClientLink.md)
 - [IntServerWebsiteExtraInfoTables](IntServerWebsiteExtraInfoTables.md)
 - [IntServerWebsiteLoginResponse](IntServerWebsiteLoginResponse.md)
 - [IntServerWebsiteOrderPostRequest](IntServerWebsiteOrderPostRequest.md)
 - [IntServerWebsiteOrderPutRequest](IntServerWebsiteOrderPutRequest.md)
 - [IntServerWebsiteRow](IntServerWebsiteRow.md)
 - [IntServerWebsiteServiceInfo](IntServerWebsiteServiceInfo.md)
 - [IntServerWebsiteServiceMaster](IntServerWebsiteServiceMaster.md)
 - [IntServerWebsiteTable](IntServerWebsiteTable.md)
 - [IntServerWebsiteTableRow](IntServerWebsiteTableRow.md)
 - [IntServerWebsitesOrder](IntServerWebsitesOrder.md)
 - [IntServerWebsitesOrderJsonServiceOff](IntServerWebsitesOrderJsonServiceOff.md)
 - [IntServerWebsitesOrderJsonServices](IntServerWebsitesOrderJsonServices.md)
 - [IntServerWebsitesOrderPackages](IntServerWebsitesOrderPackages.md)
 - [IntServerWebsitesOrderPackagesInfo](IntServerWebsitesOrderPackagesInfo.md)
 - [IntServerWebsitesOrderPackges](IntServerWebsitesOrderPackges.md)
 - [IntServerWebsitesOrderServiceOffer](IntServerWebsitesOrderServiceOffer.md)
 - [IntServerWebsitesOrderServiceOffers](IntServerWebsitesOrderServiceOffers.md)
 - [IntServerWebsitesOrderServiceTypes](IntServerWebsitesOrderServiceTypes.md)


## Documentation for Authorization


Authentication schemes defined for the API:
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


## Author

support@interserver.net

