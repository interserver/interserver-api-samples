## @interserver/myadmin-client@1.0.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @interserver/myadmin-client@1.0.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://my.interserver.net/apiv2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccountOauthName**](docs/AccountApi.md#deleteaccountoauthname) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
*AccountApi* | [**deleteAccountTfa**](docs/AccountApi.md#deleteaccounttfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
*AccountApi* | [**deleteIpLimit**](docs/AccountApi.md#deleteiplimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
*AccountApi* | [**getAccountInfo**](docs/AccountApi.md#getaccountinfo) | **GET** /account | Read full account profile, billing address, and security settings
*AccountApi* | [**getAccountTfaSetup**](docs/AccountApi.md#getaccounttfasetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
*AccountApi* | [**getHome**](docs/AccountApi.md#gethome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
*AccountApi* | [**getSearch**](docs/AccountApi.md#getsearch) | **GET** /search | Global autocomplete across the caller\&#39;s services, domains, and records
*AccountApi* | [**logout**](docs/AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
*AccountApi* | [**logoutAccountOauth**](docs/AccountApi.md#logoutaccountoauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
*AccountApi* | [**updateAccountApiKey**](docs/AccountApi.md#updateaccountapikey) | **POST** /account/apikey | Rotate the account\&#39;s REST/MCP API key — old key is invalidated immediately
*AccountApi* | [**updateAccountFeatures**](docs/AccountApi.md#updateaccountfeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
*AccountApi* | [**updateAccountInfo**](docs/AccountApi.md#updateaccountinfo) | **POST** /account | Update contact and billing-address fields on the customer profile
*AccountApi* | [**updateAccountIpLimits**](docs/AccountApi.md#updateaccountiplimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account\&#39;s API+web allow-list (lockout-safe)
*AccountApi* | [**updateAccountPassword**](docs/AccountApi.md#updateaccountpassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
*AccountApi* | [**updateAccountSshKey**](docs/AccountApi.md#updateaccountsshkey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
*AccountApi* | [**updateAccountTfa**](docs/AccountApi.md#updateaccounttfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account
*BackupsApi* | [**addBackup**](docs/BackupsApi.md#addbackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
*BackupsApi* | [**cancelBackup**](docs/BackupsApi.md#cancelbackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
*BackupsApi* | [**getBackupInfo**](docs/BackupsApi.md#getbackupinfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
*BackupsApi* | [**getBackupInvoices**](docs/BackupsApi.md#getbackupinvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
*BackupsApi* | [**getBackupLogin**](docs/BackupsApi.md#getbackuplogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
*BackupsApi* | [**getBackupsList**](docs/BackupsApi.md#getbackupslist) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
*BackupsApi* | [**getBackupsWelcomeEmail**](docs/BackupsApi.md#getbackupswelcomeemail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
*BackupsApi* | [**getNewBackup**](docs/BackupsApi.md#getnewbackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
*BackupsApi* | [**updateBackupInfo**](docs/BackupsApi.md#updatebackupinfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
*BackupsApi* | [**validateBackupOrder**](docs/BackupsApi.md#validatebackuporder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging
*BillingApi* | [**addBillingCreditCard**](docs/BillingApi.md#addbillingcreditcard) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow
*BillingApi* | [**addBillingPrepay**](docs/BillingApi.md#addbillingprepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
*BillingApi* | [**deleteBillingCreditCard**](docs/BillingApi.md#deletebillingcreditcard) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account
*BillingApi* | [**deleteBillingInvoice**](docs/BillingApi.md#deletebillinginvoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
*BillingApi* | [**deleteBillingPrepay**](docs/BillingApi.md#deletebillingprepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
*BillingApi* | [**getAffiliateBanners**](docs/BillingApi.md#getaffiliatebanners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions
*BillingApi* | [**getAffiliateDownload**](docs/BillingApi.md#getaffiliatedownload) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
*BillingApi* | [**getAffiliateRichReport**](docs/BillingApi.md#getaffiliaterichreport) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
*BillingApi* | [**getAffiliateSalesGraph**](docs/BillingApi.md#getaffiliatesalesgraph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
*BillingApi* | [**getAffiliateSignups**](docs/BillingApi.md#getaffiliatesignups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
*BillingApi* | [**getAffiliateTrafficGraph**](docs/BillingApi.md#getaffiliatetrafficgraph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
*BillingApi* | [**getAffiliateWebTraffic**](docs/BillingApi.md#getaffiliatewebtraffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
*BillingApi* | [**getBillingCart**](docs/BillingApi.md#getbillingcart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
*BillingApi* | [**getBillingCreditCardVerify**](docs/BillingApi.md#getbillingcreditcardverify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
*BillingApi* | [**getBillingInvoice**](docs/BillingApi.md#getbillinginvoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
*BillingApi* | [**getBillingInvoices**](docs/BillingApi.md#getbillinginvoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
*BillingApi* | [**getBillingPrePays**](docs/BillingApi.md#getbillingprepays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
*BillingApi* | [**initiatePayment**](docs/BillingApi.md#initiatepayment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
*BillingApi* | [**patchBillingCreditCardVerify**](docs/BillingApi.md#patchbillingcreditcardverify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
*BillingApi* | [**postBillingCreditCardVerify**](docs/BillingApi.md#postbillingcreditcardverify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
*BillingApi* | [**updateAffiliateDockSetup**](docs/BillingApi.md#updateaffiliatedocksetup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
*BillingApi* | [**updateAffiliatePaymentSetup**](docs/BillingApi.md#updateaffiliatepaymentsetup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
*BillingApi* | [**updateBillingCreditCard**](docs/BillingApi.md#updatebillingcreditcard) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
*BillingApi* | [**updateBillingPaymentMethod**](docs/BillingApi.md#updatebillingpaymentmethod) | **POST** /billing/payment_method | Set the account\&#39;s default payment method for recurring/auto charges
*DNSApi* | [**addDnsDomain**](docs/DNSApi.md#adddnsdomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
*DNSApi* | [**addDnsRecord**](docs/DNSApi.md#adddnsrecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
*DNSApi* | [**deleteDnsDomain**](docs/DNSApi.md#deletednsdomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
*DNSApi* | [**deleteDnsRecord**](docs/DNSApi.md#deletednsrecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
*DNSApi* | [**getDnsDomain**](docs/DNSApi.md#getdnsdomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
*DNSApi* | [**getDnsList**](docs/DNSApi.md#getdnslist) | **GET** /dns | List DNS zones hosted on the account with each zone\&#39;s apex A-record IP
*DNSApi* | [**updateDnsRecord**](docs/DNSApi.md#updatednsrecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)
*DomainsApi* | [**addDomain**](docs/DomainsApi.md#adddomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice
*DomainsApi* | [**addDomainDnssec**](docs/DomainsApi.md#adddomaindnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS
*DomainsApi* | [**addDomainNameserver**](docs/DomainsApi.md#adddomainnameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver)
*DomainsApi* | [**cancelDomain**](docs/DomainsApi.md#canceldomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals
*DomainsApi* | [**deleteDomainDnssec**](docs/DomainsApi.md#deletedomaindnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
*DomainsApi* | [**deleteDomainNameserver**](docs/DomainsApi.md#deletedomainnameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain
*DomainsApi* | [**getDomainContact**](docs/DomainsApi.md#getdomaincontact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain
*DomainsApi* | [**getDomainDnssec**](docs/DomainsApi.md#getdomaindnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar
*DomainsApi* | [**getDomainInfo**](docs/DomainsApi.md#getdomaininfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain
*DomainsApi* | [**getDomainInvoices**](docs/DomainsApi.md#getdomaininvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order
*DomainsApi* | [**getDomainLookup**](docs/DomainsApi.md#getdomainlookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain
*DomainsApi* | [**getDomainNameservers**](docs/DomainsApi.md#getdomainnameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain
*DomainsApi* | [**getDomainRenewal**](docs/DomainsApi.md#getdomainrenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists
*DomainsApi* | [**getDomainSearch**](docs/DomainsApi.md#getdomainsearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term
*DomainsApi* | [**getDomainTransfer**](docs/DomainsApi.md#getdomaintransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order
*DomainsApi* | [**getDomainWhoisPrivacy**](docs/DomainsApi.md#getdomainwhoisprivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain
*DomainsApi* | [**getDomainsList**](docs/DomainsApi.md#getdomainslist) | **GET** /domains | List every domain registration on the account with billing and registration metadata
*DomainsApi* | [**getDomainsWelcomeEmail**](docs/DomainsApi.md#getdomainswelcomeemail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions
*DomainsApi* | [**getNewDomain**](docs/DomainsApi.md#getnewdomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing
*DomainsApi* | [**patchDomains**](docs/DomainsApi.md#patchdomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run
*DomainsApi* | [**postDomainRenewal**](docs/DomainsApi.md#postdomainrenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice
*DomainsApi* | [**postDomainSearch**](docs/DomainsApi.md#postdomainsearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview)
*DomainsApi* | [**postDomainTransfer**](docs/DomainsApi.md#postdomaintransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST
*DomainsApi* | [**putDomains**](docs/DomainsApi.md#putdomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit
*DomainsApi* | [**updateDomainContact**](docs/DomainsApi.md#updatedomaincontact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS
*DomainsApi* | [**updateDomainInfo**](docs/DomainsApi.md#updatedomaininfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible)
*DomainsApi* | [**updateDomainNameservers**](docs/DomainsApi.md#updatedomainnameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar
*DomainsApi* | [**updateDomainWhoisPrivacy**](docs/DomainsApi.md#updatedomainwhoisprivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain
*FloatingIPsApi* | [**addFloatingIp**](docs/FloatingIPsApi.md#addfloatingip) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service
*FloatingIPsApi* | [**floatingIpsCancel**](docs/FloatingIPsApi.md#floatingipscancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops
*FloatingIPsApi* | [**getFloatingIpInfo**](docs/FloatingIPsApi.md#getfloatingipinfo) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP
*FloatingIPsApi* | [**getFloatingIpInvoices**](docs/FloatingIPsApi.md#getfloatingipinvoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service
*FloatingIPsApi* | [**getFloatingIpsList**](docs/FloatingIPsApi.md#getfloatingipslist) | **GET** /floating_ips | List all Floating IP services on the authenticated customer\&#39;s account
*FloatingIPsApi* | [**getFloatingIpsWelcomeEmail**](docs/FloatingIPsApi.md#getfloatingipswelcomeemail) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact
*FloatingIPsApi* | [**getNewFloatingIp**](docs/FloatingIPsApi.md#getnewfloatingip) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP
*FloatingIPsApi* | [**postFloatingIpsChangeIp**](docs/FloatingIPsApi.md#postfloatingipschangeip) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer\&#39;s services
*FloatingIPsApi* | [**putFloatingIps**](docs/FloatingIPsApi.md#putfloatingips) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer
*FloatingIPsApi* | [**updateFloatingIpInfo**](docs/FloatingIPsApi.md#updatefloatingipinfo) | **POST** /floating_ips/{id} | Update a Floating IP service\&#39;s editable settings (label / metadata)
*LicensesApi* | [**addLicense**](docs/LicensesApi.md#addlicense) | **POST** /licenses/order | Order a new software license and create the recurring invoice
*LicensesApi* | [**getLicenseInfo**](docs/LicensesApi.md#getlicenseinfo) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links
*LicensesApi* | [**getLicenseInvoices**](docs/LicensesApi.md#getlicenseinvoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service
*LicensesApi* | [**getLicenseList**](docs/LicensesApi.md#getlicenselist) | **GET** /licenses | List all software licenses owned by the authenticated customer
*LicensesApi* | [**getLicensesWelcomeEmail**](docs/LicensesApi.md#getlicenseswelcomeemail) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps
*LicensesApi* | [**getNewLicense**](docs/LicensesApi.md#getnewlicense) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering
*LicensesApi* | [**licensesCancel**](docs/LicensesApi.md#licensescancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible)
*LicensesApi* | [**postLicenseChangeIp**](docs/LicensesApi.md#postlicensechangeip) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee)
*LicensesApi* | [**putLicenses**](docs/LicensesApi.md#putlicenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview)
*LicensesApi* | [**updateLicenseInfo**](docs/LicensesApi.md#updatelicenseinfo) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP)
*MailApi* | [**addMail**](docs/MailApi.md#addmail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
*MailApi* | [**addRule**](docs/MailApi.md#addrule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
*MailApi* | [**createMailAlert**](docs/MailApi.md#createmailalert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
*MailApi* | [**deleteMailAlert**](docs/MailApi.md#deletemailalert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
*MailApi* | [**deleteRule**](docs/MailApi.md#deleterule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
*MailApi* | [**delistBlock**](docs/MailApi.md#delistblock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**getMailAlerts**](docs/MailApi.md#getmailalerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
*MailApi* | [**getMailBlocks**](docs/MailApi.md#getmailblocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
*MailApi* | [**getMailDelist**](docs/MailApi.md#getmaildelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
*MailApi* | [**getMailDeliverability**](docs/MailApi.md#getmaildeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
*MailApi* | [**getMailInfo**](docs/MailApi.md#getmailinfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
*MailApi* | [**getMailInvoices**](docs/MailApi.md#getmailinvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
*MailApi* | [**getMailList**](docs/MailApi.md#getmaillist) | **GET** /mail | List every Mail Baby SMTP relay service on the account
*MailApi* | [**getMailWelcomeEmail**](docs/MailApi.md#getmailwelcomeemail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
*MailApi* | [**getNewMail**](docs/MailApi.md#getnewmail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
*MailApi* | [**getRules**](docs/MailApi.md#getrules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
*MailApi* | [**getStats**](docs/MailApi.md#getstats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
*MailApi* | [**mailCancel**](docs/MailApi.md#mailcancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
*MailApi* | [**postMailDelist**](docs/MailApi.md#postmaildelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**putMail**](docs/MailApi.md#putmail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
*MailApi* | [**resetMailPassword**](docs/MailApi.md#resetmailpassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
*MailApi* | [**sendAdvMail**](docs/MailApi.md#sendadvmail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
*MailApi* | [**sendMail**](docs/MailApi.md#sendmail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
*MailApi* | [**updateMailAlert**](docs/MailApi.md#updatemailalert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
*MailApi* | [**updateMailInfo**](docs/MailApi.md#updatemailinfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
*MailApi* | [**updateRule**](docs/MailApi.md#updaterule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule\&#39;s type and match data
*MailApi* | [**viewMailLog**](docs/MailApi.md#viewmaillog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries
*PublicApi* | [**getAccountCurrencies**](docs/PublicApi.md#getaccountcurrencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences
*PublicApi* | [**getAccountLocales**](docs/PublicApi.md#getaccountlocales) | **GET** /account/locales | List supported UI locales with English and native display names
*PublicApi* | [**getCaptcha**](docs/PublicApi.md#getcaptcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification
*PublicApi* | [**getCountries**](docs/PublicApi.md#getcountries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code
*PublicApi* | [**getInfo**](docs/PublicApi.md#getinfo) | **GET** /info | Discover available modules, service packages, categories, and types
*PublicApi* | [**getLoginInfo**](docs/PublicApi.md#getlogininfo) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page
*PublicApi* | [**getMPServers**](docs/PublicApi.md#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*PublicApi* | [**getOauthRedirect**](docs/PublicApi.md#getoauthredirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication
*PublicApi* | [**getTimezones**](docs/PublicApi.md#gettimezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services
*PublicApi* | [**patchOauthTwoFactor**](docs/PublicApi.md#patchoauthtwofactor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled
*PublicApi* | [**pingServer**](docs/PublicApi.md#pingserver) | **GET** /ping | Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up
*PublicApi* | [**postOauthCallback**](docs/PublicApi.md#postoauthcallback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account
*PublicApi* | [**submitLogin**](docs/PublicApi.md#submitlogin) | **POST** /login | Authenticate with email + password and return a session token
*PublicApi* | [**submitSignup**](docs/PublicApi.md#submitsignup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS)
*QuickServersApi* | [**addQs**](docs/QuickServersApi.md#addqs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
*QuickServersApi* | [**deleteQsBackup**](docs/QuickServersApi.md#deleteqsbackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
*QuickServersApi* | [**doQsBlockSmtp**](docs/QuickServersApi.md#doqsblocksmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
*QuickServersApi* | [**doQsDisableCd**](docs/QuickServersApi.md#doqsdisablecd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
*QuickServersApi* | [**doQsDisableQuota**](docs/QuickServersApi.md#doqsdisablequota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsEjectCd**](docs/QuickServersApi.md#doqsejectcd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer\&#39;s virtual CD drive
*QuickServersApi* | [**doQsEnableQuota**](docs/QuickServersApi.md#doqsenablequota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsRestart**](docs/QuickServersApi.md#doqsrestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
*QuickServersApi* | [**doQsStart**](docs/QuickServersApi.md#doqsstart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
*QuickServersApi* | [**doQsStop**](docs/QuickServersApi.md#doqsstop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
*QuickServersApi* | [**downloadQsBackup**](docs/QuickServersApi.md#downloadqsbackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
*QuickServersApi* | [**getNewQs**](docs/QuickServersApi.md#getnewqs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
*QuickServersApi* | [**getQsBackup**](docs/QuickServersApi.md#getqsbackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
*QuickServersApi* | [**getQsBackups**](docs/QuickServersApi.md#getqsbackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
*QuickServersApi* | [**getQsChangeHostname**](docs/QuickServersApi.md#getqschangehostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
*QuickServersApi* | [**getQsChangeRootPassword**](docs/QuickServersApi.md#getqschangerootpassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
*QuickServersApi* | [**getQsChangeTimezone**](docs/QuickServersApi.md#getqschangetimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
*QuickServersApi* | [**getQsChangeWebuzoPassword**](docs/QuickServersApi.md#getqschangewebuzopassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
*QuickServersApi* | [**getQsInfo**](docs/QuickServersApi.md#getqsinfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
*QuickServersApi* | [**getQsInsertCd**](docs/QuickServersApi.md#getqsinsertcd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer\&#39;s virtual CD
*QuickServersApi* | [**getQsInvoices**](docs/QuickServersApi.md#getqsinvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
*QuickServersApi* | [**getQsList**](docs/QuickServersApi.md#getqslist) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
*QuickServersApi* | [**getQsReinstallOs**](docs/QuickServersApi.md#getqsreinstallos) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
*QuickServersApi* | [**getQsResetPassword**](docs/QuickServersApi.md#getqsresetpassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
*QuickServersApi* | [**getQsReverseDns**](docs/QuickServersApi.md#getqsreversedns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer\&#39;s IPs
*QuickServersApi* | [**getQsSetupVnc**](docs/QuickServersApi.md#getqssetupvnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
*QuickServersApi* | [**getQsTrafficUsage**](docs/QuickServersApi.md#getqstrafficusage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer\&#39;s current billing period
*QuickServersApi* | [**getQsViewDesktop**](docs/QuickServersApi.md#getqsviewdesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
*QuickServersApi* | [**getQsWelcomeEmail**](docs/QuickServersApi.md#getqswelcomeemail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
*QuickServersApi* | [**postQsChangeHostname**](docs/QuickServersApi.md#postqschangehostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer\&#39;s system hostname (OpenVZ/Virtuozzo only)
*QuickServersApi* | [**postQsChangeRootPassword**](docs/QuickServersApi.md#postqschangerootpassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
*QuickServersApi* | [**postQsChangeTimezone**](docs/QuickServersApi.md#postqschangetimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
*QuickServersApi* | [**postQsChangeWebuzoPassword**](docs/QuickServersApi.md#postqschangewebuzopassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
*QuickServersApi* | [**postQsInsertCd**](docs/QuickServersApi.md#postqsinsertcd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer\&#39;s virtual CD via URL
*QuickServersApi* | [**postQsReinstallOs**](docs/QuickServersApi.md#postqsreinstallos) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
*QuickServersApi* | [**postQsResetPassword**](docs/QuickServersApi.md#postqsresetpassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
*QuickServersApi* | [**postQsReverseDns**](docs/QuickServersApi.md#postqsreversedns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer\&#39;s IPs
*QuickServersApi* | [**postQsSetupVnc**](docs/QuickServersApi.md#postqssetupvnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer\&#39;s VNC console
*QuickServersApi* | [**postQsTrafficUsage**](docs/QuickServersApi.md#postqstrafficusage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
*QuickServersApi* | [**postQsViewDesktop**](docs/QuickServersApi.md#postqsviewdesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
*QuickServersApi* | [**postQuickServerRestore**](docs/QuickServersApi.md#postquickserverrestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
*QuickServersApi* | [**putQs**](docs/QuickServersApi.md#putqs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
*QuickServersApi* | [**quickserversCancel**](docs/QuickServersApi.md#quickserverscancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
*QuickServersApi* | [**updateQsInfo**](docs/QuickServersApi.md#updateqsinfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact
*SSLCertificatesApi* | [**addSsl**](docs/SSLCertificatesApi.md#addssl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance
*SSLCertificatesApi* | [**getNewSsl**](docs/SSLCertificatesApi.md#getnewssl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order
*SSLCertificatesApi* | [**getSslInfo**](docs/SSLCertificatesApi.md#getsslinfo) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links
*SSLCertificatesApi* | [**getSslInvoices**](docs/SSLCertificatesApi.md#getsslinvoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id
*SSLCertificatesApi* | [**getSslList**](docs/SSLCertificatesApi.md#getssllist) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname
*SSLCertificatesApi* | [**getSslWelcomeEmail**](docs/SSLCertificatesApi.md#getsslwelcomeemail) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions
*SSLCertificatesApi* | [**putSsl**](docs/SSLCertificatesApi.md#putssl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl
*SSLCertificatesApi* | [**sslCancel**](docs/SSLCertificatesApi.md#sslcancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle
*SSLCertificatesApi* | [**updateSslInfo**](docs/SSLCertificatesApi.md#updatesslinfo) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id
*ScrubIpsApi* | [**cancelScrubIp**](docs/ScrubIpsApi.md#cancelscrubip) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
*ScrubIpsApi* | [**createFilter**](docs/ScrubIpsApi.md#createfilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
*ScrubIpsApi* | [**createGeoRule**](docs/ScrubIpsApi.md#creategeorule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
*ScrubIpsApi* | [**createRule**](docs/ScrubIpsApi.md#createrule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
*ScrubIpsApi* | [**deleteFilter**](docs/ScrubIpsApi.md#deletefilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
*ScrubIpsApi* | [**disableScrub**](docs/ScrubIpsApi.md#disablescrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
*ScrubIpsApi* | [**enableScrub**](docs/ScrubIpsApi.md#enablescrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service\&#39;s protected IP
*ScrubIpsApi* | [**getOrderDetail**](docs/ScrubIpsApi.md#getorderdetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
*ScrubIpsApi* | [**getScrubIpDetails**](docs/ScrubIpsApi.md#getscrubipdetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
*ScrubIpsApi* | [**getScrubIpFilterTypes**](docs/ScrubIpsApi.md#getscrubipfiltertypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
*ScrubIpsApi* | [**getScrubIpInvoices**](docs/ScrubIpsApi.md#getscrubipinvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
*ScrubIpsApi* | [**getScrubIpLogs**](docs/ScrubIpsApi.md#getscrubiplogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
*ScrubIpsApi* | [**getScrubIpsList**](docs/ScrubIpsApi.md#getscrubipslist) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
*ScrubIpsApi* | [**placeScrubOrder**](docs/ScrubIpsApi.md#placescruborder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
*ScrubIpsApi* | [**putScrubIps**](docs/ScrubIpsApi.md#putscrubips) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
*ScrubIpsApi* | [**scrubIpsDeleteGeoRule**](docs/ScrubIpsApi.md#scrubipsdeletegeorule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
*ScrubIpsApi* | [**scrubIpsDeleteRule**](docs/ScrubIpsApi.md#scrubipsdeleterule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
*ServersApi* | [**addServer**](docs/ServersApi.md#addserver) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
*ServersApi* | [**buyItNowServerOrder**](docs/ServersApi.md#buyitnowserverorder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
*ServersApi* | [**getMPServers**](docs/ServersApi.md#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*ServersApi* | [**getNewServer**](docs/ServersApi.md#getnewserver) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
*ServersApi* | [**getServerInfo**](docs/ServersApi.md#getserverinfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
*ServersApi* | [**getServerInvoices**](docs/ServersApi.md#getserverinvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
*ServersApi* | [**getServerList**](docs/ServersApi.md#getserverlist) | **GET** /servers | List all dedicated servers owned by the authenticated customer
*ServersApi* | [**getServerReverseDns**](docs/ServersApi.md#getserverreversedns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server\&#39;s IPs
*ServersApi* | [**getServersWelcomeEmail**](docs/ServersApi.md#getserverswelcomeemail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
*ServersApi* | [**placeBuyNowServer**](docs/ServersApi.md#placebuynowserver) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
*ServersApi* | [**postServerReverseDns**](docs/ServersApi.md#postserverreversedns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server\&#39;s IPs
*ServersApi* | [**serverBulkIpmiPowerGet**](docs/ServersApi.md#serverbulkipmipowerget) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
*ServersApi* | [**serverIpmiLiveGet**](docs/ServersApi.md#serveripmiliveget) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
*ServersApi* | [**serverIpmiLivePost**](docs/ServersApi.md#serveripmilivepost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
*ServersApi* | [**serverIpmiPowerGet**](docs/ServersApi.md#serveripmipowerget) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
*ServersApi* | [**serverIpmiPowerPost**](docs/ServersApi.md#serveripmipowerpost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
*ServersApi* | [**serversCancel**](docs/ServersApi.md#serverscancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
*ServersApi* | [**updateServerInfo**](docs/ServersApi.md#updateserverinfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)
*TicketsApi* | [**addNewTicket**](docs/TicketsApi.md#addnewticket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
*TicketsApi* | [**closeTicket**](docs/TicketsApi.md#closeticket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
*TicketsApi* | [**deleteTicketInfo**](docs/TicketsApi.md#deleteticketinfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
*TicketsApi* | [**getNewTicket**](docs/TicketsApi.md#getnewticket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
*TicketsApi* | [**getTicketInfo**](docs/TicketsApi.md#getticketinfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
*TicketsApi* | [**getTicketsList**](docs/TicketsApi.md#getticketslist) | **GET** /tickets | List the authenticated account\&#39;s support tickets with status and date filters
*TicketsApi* | [**postTicketInfo**](docs/TicketsApi.md#postticketinfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
*TicketsApi* | [**postTicketsList**](docs/TicketsApi.md#postticketslist) | **POST** /tickets | Search the authenticated account\&#39;s tickets by subject, email, or mask ID
*TicketsApi* | [**putTicketInfo**](docs/TicketsApi.md#putticketinfo) | **PUT** /tickets/{id} | Update a ticket\&#39;s properties such as subject or status (stub, not implemented)
*TicketsApi* | [**replyTicket**](docs/TicketsApi.md#replyticket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
*TicketsApi* | [**updateTicketInfo**](docs/TicketsApi.md#updateticketinfo) | **POST** /tickets/{id}/update | Update a ticket\&#39;s custom field values (server-access details, etc.)
*VPSApi* | [**addVps**](docs/VPSApi.md#addvps) | **POST** /vps/order | Place a new VPS order, create the invoice, and queue provisioning
*VPSApi* | [**deleteVpsBackup**](docs/VPSApi.md#deletevpsbackup) | **DELETE** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible)
*VPSApi* | [**doVpsBlockSmtp**](docs/VPSApi.md#dovpsblocksmtp) | **GET** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
*VPSApi* | [**doVpsDisableCd**](docs/VPSApi.md#dovpsdisablecd) | **GET** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration
*VPSApi* | [**doVpsDisableQuota**](docs/VPSApi.md#dovpsdisablequota) | **GET** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsEjectCd**](docs/VPSApi.md#dovpsejectcd) | **GET** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
*VPSApi* | [**doVpsEnableQuota**](docs/VPSApi.md#dovpsenablequota) | **GET** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsRestart**](docs/VPSApi.md#dovpsrestart) | **GET** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes
*VPSApi* | [**doVpsStart**](docs/VPSApi.md#dovpsstart) | **GET** /vps/{id}/start | Power on a stopped VPS instance
*VPSApi* | [**doVpsStop**](docs/VPSApi.md#dovpsstop) | **GET** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation
*VPSApi* | [**downloadVpsBackup**](docs/VPSApi.md#downloadvpsbackup) | **PATCH** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
*VPSApi* | [**getNewVps**](docs/VPSApi.md#getnewvps) | **GET** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing
*VPSApi* | [**getVpsBackup**](docs/VPSApi.md#getvpsbackup) | **GET** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS
*VPSApi* | [**getVpsBackups**](docs/VPSApi.md#getvpsbackups) | **GET** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS
*VPSApi* | [**getVpsBuyHdSpace**](docs/VPSApi.md#getvpsbuyhdspace) | **GET** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS
*VPSApi* | [**getVpsBuyIp**](docs/VPSApi.md#getvpsbuyip) | **GET** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS
*VPSApi* | [**getVpsChangeHostname**](docs/VPSApi.md#getvpschangehostname) | **GET** /vps/{id}/change_hostname | Read the VPS\&#39;s current hostname before changing it
*VPSApi* | [**getVpsChangeRootPassword**](docs/VPSApi.md#getvpschangerootpassword) | **GET** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password
*VPSApi* | [**getVpsChangeTimezone**](docs/VPSApi.md#getvpschangetimezone) | **GET** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS
*VPSApi* | [**getVpsInfo**](docs/VPSApi.md#getvpsinfo) | **GET** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons
*VPSApi* | [**getVpsInsertCd**](docs/VPSApi.md#getvpsinsertcd) | **GET** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive
*VPSApi* | [**getVpsInvoices**](docs/VPSApi.md#getvpsinvoices) | **GET** /vps/{id}/invoices | List all billing invoices associated with this specific VPS
*VPSApi* | [**getVpsList**](docs/VPSApi.md#getvpslist) | **GET** /vps | List all VPS services on the customer\&#39;s account
*VPSApi* | [**getVpsReinstallOs**](docs/VPSApi.md#getvpsreinstallos) | **GET** /vps/{id}/reinstall_os | List OS templates compatible with this VPS\&#39;s hypervisor for reinstall
*VPSApi* | [**getVpsResetPassword**](docs/VPSApi.md#getvpsresetpassword) | **GET** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value
*VPSApi* | [**getVpsReverseDns**](docs/VPSApi.md#getvpsreversedns) | **GET** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS
*VPSApi* | [**getVpsSetupVnc**](docs/VPSApi.md#getvpssetupvnc) | **GET** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS
*VPSApi* | [**getVpsSlices**](docs/VPSApi.md#getvpsslices) | **GET** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost
*VPSApi* | [**getVpsTrafficUsage**](docs/VPSApi.md#getvpstrafficusage) | **GET** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS
*VPSApi* | [**getVpsViewDesktop**](docs/VPSApi.md#getvpsviewdesktop) | **GET** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
*VPSApi* | [**getVpsWelcomeEmail**](docs/VPSApi.md#getvpswelcomeemail) | **GET** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials
*VPSApi* | [**postVpsBuyHdSpace**](docs/VPSApi.md#postvpsbuyhdspace) | **POST** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice
*VPSApi* | [**postVpsBuyIp**](docs/VPSApi.md#postvpsbuyip) | **POST** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice
*VPSApi* | [**postVpsChangeHostname**](docs/VPSApi.md#postvpschangehostname) | **POST** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
*VPSApi* | [**postVpsChangeRootPassword**](docs/VPSApi.md#postvpschangerootpassword) | **POST** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS
*VPSApi* | [**postVpsChangeTimezone**](docs/VPSApi.md#postvpschangetimezone) | **POST** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS
*VPSApi* | [**postVpsChangeWebuzoPassword**](docs/VPSApi.md#postvpschangewebuzopassword) | **POST** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required)
*VPSApi* | [**postVpsInsertCd**](docs/VPSApi.md#postvpsinsertcd) | **POST** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL
*VPSApi* | [**postVpsReinstallOs**](docs/VPSApi.md#postvpsreinstallos) | **POST** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
*VPSApi* | [**postVpsResetPassword**](docs/VPSApi.md#postvpsresetpassword) | **POST** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value
*VPSApi* | [**postVpsRestore**](docs/VPSApi.md#postvpsrestore) | **POST** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
*VPSApi* | [**postVpsReverseDns**](docs/VPSApi.md#postvpsreversedns) | **POST** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
*VPSApi* | [**postVpsSetupVnc**](docs/VPSApi.md#postvpssetupvnc) | **POST** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS
*VPSApi* | [**postVpsSlices**](docs/VPSApi.md#postvpsslices) | **POST** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
*VPSApi* | [**postVpsTrafficUsage**](docs/VPSApi.md#postvpstrafficusage) | **POST** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved)
*VPSApi* | [**postVpsViewDesktop**](docs/VPSApi.md#postvpsviewdesktop) | **POST** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes
*VPSApi* | [**putVps**](docs/VPSApi.md#putvps) | **PUT** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge
*VPSApi* | [**putVpsBuyHdSpace**](docs/VPSApi.md#putvpsbuyhdspace) | **PUT** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run
*VPSApi* | [**updateVpsInfo**](docs/VPSApi.md#updatevpsinfo) | **POST** /vps/{id} | Update editable settings on a VPS service record
*VPSApi* | [**vPSCancel**](docs/VPSApi.md#vpscancel) | **DELETE** /vps/{id} | Cancel a VPS service at the end of the current billing cycle
*WebhostingApi* | [**addWebsite**](docs/WebhostingApi.md#addwebsite) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning
*WebhostingApi* | [**getNewWebsite**](docs/WebhostingApi.md#getnewwebsite) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing
*WebhostingApi* | [**getWebsiteBuyIp**](docs/WebhostingApi.md#getwebsitebuyip) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing
*WebhostingApi* | [**getWebsiteInfo**](docs/WebhostingApi.md#getwebsiteinfo) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service
*WebhostingApi* | [**getWebsiteInvoices**](docs/WebhostingApi.md#getwebsiteinvoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website
*WebhostingApi* | [**getWebsiteList**](docs/WebhostingApi.md#getwebsitelist) | **GET** /websites | List the caller\&#39;s webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
*WebhostingApi* | [**getWebsitesBackups**](docs/WebhostingApi.md#getwebsitesbackups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive
*WebhostingApi* | [**getWebsitesLogin**](docs/WebhostingApi.md#getwebsiteslogin) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website\&#39;s control panel
*WebhostingApi* | [**getWebsitesWelcomeEmail**](docs/WebhostingApi.md#getwebsiteswelcomeemail) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL
*WebhostingApi* | [**gettWebsiteReverseDns**](docs/WebhostingApi.md#gettwebsitereversedns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website\&#39;s IPs
*WebhostingApi* | [**postWebsiteBuyIp**](docs/WebhostingApi.md#postwebsitebuyip) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records
*WebhostingApi* | [**postWebsiteMigration**](docs/WebhostingApi.md#postwebsitemigration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host
*WebhostingApi* | [**postWebsitesReverseDns**](docs/WebhostingApi.md#postwebsitesreversedns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs
*WebhostingApi* | [**putWebsites**](docs/WebhostingApi.md#putwebsites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge
*WebhostingApi* | [**updateWebsiteInfo**](docs/WebhostingApi.md#updatewebsiteinfo) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible)
*WebhostingApi* | [**webhostingCancel**](docs/WebhostingApi.md#webhostingcancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end


### Documentation For Models

 - [AccountFeatures](docs/AccountFeatures.md)
 - [AccountInfo](docs/AccountInfo.md)
 - [AccountInfoCountryCurrencies](docs/AccountInfoCountryCurrencies.md)
 - [AccountInfoData](docs/AccountInfoData.md)
 - [AccountInfoDataCc](docs/AccountInfoDataCc.md)
 - [AccountInfoDataCcs](docs/AccountInfoDataCcs.md)
 - [AccountInfoDataEmailSettings](docs/AccountInfoDataEmailSettings.md)
 - [AccountInfoDataExtra](docs/AccountInfoDataExtra.md)
 - [AccountInfoDataFraudrecord](docs/AccountInfoDataFraudrecord.md)
 - [AccountInfoLimits](docs/AccountInfoLimits.md)
 - [AccountInfoLimitsInner](docs/AccountInfoLimitsInner.md)
 - [AccountInfoMaxMindResponse](docs/AccountInfoMaxMindResponse.md)
 - [AccountInfoMaxMindResponseRiskScore](docs/AccountInfoMaxMindResponseRiskScore.md)
 - [AccountInfoOauthConfig](docs/AccountInfoOauthConfig.md)
 - [AccountInfoOauthConfigProviders](docs/AccountInfoOauthConfigProviders.md)
 - [AccountInfoOauthConfigProvidersValue](docs/AccountInfoOauthConfigProvidersValue.md)
 - [AccountInfoOauthproviders](docs/AccountInfoOauthproviders.md)
 - [AccountInfoPost](docs/AccountInfoPost.md)
 - [AccountSshKey](docs/AccountSshKey.md)
 - [AddServer200Response](docs/AddServer200Response.md)
 - [AffiliateBannerRow](docs/AffiliateBannerRow.md)
 - [AffiliateDockSetup](docs/AffiliateDockSetup.md)
 - [AffiliatePaymentSetup](docs/AffiliatePaymentSetup.md)
 - [AffiliateTrafficRow](docs/AffiliateTrafficRow.md)
 - [Backup](docs/Backup.md)
 - [BackupBillingDetails](docs/BackupBillingDetails.md)
 - [BackupClientLink](docs/BackupClientLink.md)
 - [BackupExtraInfoTables](docs/BackupExtraInfoTables.md)
 - [BackupIPInfo](docs/BackupIPInfo.md)
 - [BackupIPInfoRow](docs/BackupIPInfoRow.md)
 - [BackupLoginResponse](docs/BackupLoginResponse.md)
 - [BackupOrderPostResponse](docs/BackupOrderPostResponse.md)
 - [BackupOrderPostResponseCjParams](docs/BackupOrderPostResponseCjParams.md)
 - [BackupOrderPutRequest](docs/BackupOrderPutRequest.md)
 - [BackupOrderPutResponse](docs/BackupOrderPutResponse.md)
 - [BackupRow](docs/BackupRow.md)
 - [BackupServiceInfo](docs/BackupServiceInfo.md)
 - [BackupServiceMaster](docs/BackupServiceMaster.md)
 - [BackupsOrder](docs/BackupsOrder.md)
 - [BackupsOrderPackageCosts](docs/BackupsOrderPackageCosts.md)
 - [BackupsOrderServiceTypes](docs/BackupsOrderServiceTypes.md)
 - [BillingAddCcRequest](docs/BillingAddCcRequest.md)
 - [BillingInvoiceDetail](docs/BillingInvoiceDetail.md)
 - [BillingInvoiceList](docs/BillingInvoiceList.md)
 - [BillingPaymentMethodRequest](docs/BillingPaymentMethodRequest.md)
 - [BillingPrepayRequest](docs/BillingPrepayRequest.md)
 - [BillingVerifyCcRequest](docs/BillingVerifyCcRequest.md)
 - [BuyItNowList](docs/BuyItNowList.md)
 - [BuyItNowRow](docs/BuyItNowRow.md)
 - [BuyItNowRowCpuInner](docs/BuyItNowRowCpuInner.md)
 - [BuyItNowRowCpuInnerOneOf](docs/BuyItNowRowCpuInnerOneOf.md)
 - [BuyItNowServerOrder200Response](docs/BuyItNowServerOrder200Response.md)
 - [BuyItNowServerOrder200ResponseBandwidthInner](docs/BuyItNowServerOrder200ResponseBandwidthInner.md)
 - [BuyItNowServerOrder200ResponseCpInner](docs/BuyItNowServerOrder200ResponseCpInner.md)
 - [BuyItNowServerOrder200ResponseIpsInner](docs/BuyItNowServerOrder200ResponseIpsInner.md)
 - [BuyItNowServerOrder200ResponseOsInner](docs/BuyItNowServerOrder200ResponseOsInner.md)
 - [BuyItNowServerOrder200ResponseRaidInner](docs/BuyItNowServerOrder200ResponseRaidInner.md)
 - [CancelBackup200Response](docs/CancelBackup200Response.md)
 - [CancelDomain200Response](docs/CancelDomain200Response.md)
 - [CancelScrubIp200Response](docs/CancelScrubIp200Response.md)
 - [CaptchaResponse](docs/CaptchaResponse.md)
 - [ChargeInvoiceRows](docs/ChargeInvoiceRows.md)
 - [ChargeInvoiceRowsInvoicesValue](docs/ChargeInvoiceRowsInvoicesValue.md)
 - [ChargeInvoiceRowsInvoicesValuePaidInvoicesValue](docs/ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md)
 - [ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue](docs/ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md)
 - [CloseTicketResponseSchema](docs/CloseTicketResponseSchema.md)
 - [CreateFilter](docs/CreateFilter.md)
 - [CreateFilter201Response](docs/CreateFilter201Response.md)
 - [CreateFilter400Response](docs/CreateFilter400Response.md)
 - [CreateFilter500Response](docs/CreateFilter500Response.md)
 - [CreateFirewallRule](docs/CreateFirewallRule.md)
 - [CreateGeoFirewallRule](docs/CreateGeoFirewallRule.md)
 - [CreateGeoRule400Response](docs/CreateGeoRule400Response.md)
 - [CreateRule201Response](docs/CreateRule201Response.md)
 - [CreateRule400Response](docs/CreateRule400Response.md)
 - [CreateRule500Response](docs/CreateRule500Response.md)
 - [DeleteFilter200Response](docs/DeleteFilter200Response.md)
 - [DeleteFilter400Response](docs/DeleteFilter400Response.md)
 - [DeleteFilter500Response](docs/DeleteFilter500Response.md)
 - [DeleteFirewallRule](docs/DeleteFirewallRule.md)
 - [DeleteGeoFirewallRule](docs/DeleteGeoFirewallRule.md)
 - [DeleteMailAlertRequest](docs/DeleteMailAlertRequest.md)
 - [DenyRuleNew](docs/DenyRuleNew.md)
 - [DenyRuleRecord](docs/DenyRuleRecord.md)
 - [DisableScrub200Response](docs/DisableScrub200Response.md)
 - [DisableScrub400Response](docs/DisableScrub400Response.md)
 - [DisableScrub500Response](docs/DisableScrub500Response.md)
 - [DnsListItem](docs/DnsListItem.md)
 - [DnsNewDomain](docs/DnsNewDomain.md)
 - [DnsNewRecord](docs/DnsNewRecord.md)
 - [DnsRecord](docs/DnsRecord.md)
 - [DnsRecordType](docs/DnsRecordType.md)
 - [DnsUpdateRecord](docs/DnsUpdateRecord.md)
 - [Domain](docs/Domain.md)
 - [DomainAdminContact](docs/DomainAdminContact.md)
 - [DomainAllInfo](docs/DomainAllInfo.md)
 - [DomainAllInfoAttributes](docs/DomainAllInfoAttributes.md)
 - [DomainAllInfoAttributesContactSet](docs/DomainAllInfoAttributesContactSet.md)
 - [DomainBillingDetails](docs/DomainBillingDetails.md)
 - [DomainBillingExtra](docs/DomainBillingExtra.md)
 - [DomainClientLink](docs/DomainClientLink.md)
 - [DomainContactDetails](docs/DomainContactDetails.md)
 - [DomainDnssecRecords](docs/DomainDnssecRecords.md)
 - [DomainDnssecRecordsInner](docs/DomainDnssecRecordsInner.md)
 - [DomainDnssecRequest](docs/DomainDnssecRequest.md)
 - [DomainLookupResponse](docs/DomainLookupResponse.md)
 - [DomainNameServer](docs/DomainNameServer.md)
 - [DomainNameserverGetResponse](docs/DomainNameserverGetResponse.md)
 - [DomainNameserverGetResponseInner](docs/DomainNameserverGetResponseInner.md)
 - [DomainNameserverPostRequest](docs/DomainNameserverPostRequest.md)
 - [DomainNameserverPutRequest](docs/DomainNameserverPutRequest.md)
 - [DomainOrder](docs/DomainOrder.md)
 - [DomainOrderRequest](docs/DomainOrderRequest.md)
 - [DomainOrderResponse](docs/DomainOrderResponse.md)
 - [DomainOrderResponseAttributes](docs/DomainOrderResponseAttributes.md)
 - [DomainOrderServices](docs/DomainOrderServices.md)
 - [DomainOrderServices10001](docs/DomainOrderServices10001.md)
 - [DomainOwnerContact](docs/DomainOwnerContact.md)
 - [DomainProvProcessPending](docs/DomainProvProcessPending.md)
 - [DomainProvProcessPendingAttributes](docs/DomainProvProcessPendingAttributes.md)
 - [DomainRow](docs/DomainRow.md)
 - [DomainSearchResponse](docs/DomainSearchResponse.md)
 - [DomainServiceInfo](docs/DomainServiceInfo.md)
 - [DomainServiceType](docs/DomainServiceType.md)
 - [DomainTechContact](docs/DomainTechContact.md)
 - [DomainWhoisPrivacyRequest](docs/DomainWhoisPrivacyRequest.md)
 - [DownloadQsBackup200Response](docs/DownloadQsBackup200Response.md)
 - [DownloadQsBackupRequest](docs/DownloadQsBackupRequest.md)
 - [EmailAddress](docs/EmailAddress.md)
 - [EmailAddressName](docs/EmailAddressName.md)
 - [EnableScrub200Response](docs/EnableScrub200Response.md)
 - [EnableScrub500Response](docs/EnableScrub500Response.md)
 - [FloatingIpOrderRequest](docs/FloatingIpOrderRequest.md)
 - [FloatingIpsCancel200Response](docs/FloatingIpsCancel200Response.md)
 - [GenericResponse](docs/GenericResponse.md)
 - [GetAccountInfo401Response](docs/GetAccountInfo401Response.md)
 - [GetAccountLocales200ResponseValue](docs/GetAccountLocales200ResponseValue.md)
 - [GetAccountTfaSetup200Response](docs/GetAccountTfaSetup200Response.md)
 - [GetAffiliateSignups200Response](docs/GetAffiliateSignups200Response.md)
 - [GetOauthRedirect200Response](docs/GetOauthRedirect200Response.md)
 - [GetOrderDetail200Response](docs/GetOrderDetail200Response.md)
 - [GetOrderDetail200ResponseIpsInner](docs/GetOrderDetail200ResponseIpsInner.md)
 - [GetOrderDetail200ResponsePackageCosts](docs/GetOrderDetail200ResponsePackageCosts.md)
 - [GetOrderDetail200ResponseServiceTypesInner](docs/GetOrderDetail200ResponseServiceTypesInner.md)
 - [GetScrubIpDetails200Response](docs/GetScrubIpDetails200Response.md)
 - [GetScrubIpDetails200ResponseBillingDetails](docs/GetScrubIpDetails200ResponseBillingDetails.md)
 - [GetScrubIpDetails200ResponseClientLinksInner](docs/GetScrubIpDetails200ResponseClientLinksInner.md)
 - [GetScrubIpDetails200ResponseExtraInfoTables](docs/GetScrubIpDetails200ResponseExtraInfoTables.md)
 - [GetScrubIpDetails200ResponseExtraInfoTablesScrubIps](docs/GetScrubIpDetails200ResponseExtraInfoTablesScrubIps.md)
 - [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner](docs/GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.md)
 - [GetScrubIpDetails200ResponseFilterFirewall](docs/GetScrubIpDetails200ResponseFilterFirewall.md)
 - [GetScrubIpDetails200ResponseFilterFirewallFiltersInner](docs/GetScrubIpDetails200ResponseFilterFirewallFiltersInner.md)
 - [GetScrubIpDetails200ResponseFilterFirewallRulesInner](docs/GetScrubIpDetails200ResponseFilterFirewallRulesInner.md)
 - [GetScrubIpDetails200ResponseServiceInfo](docs/GetScrubIpDetails200ResponseServiceInfo.md)
 - [GetWebsiteBuyIp200Response](docs/GetWebsiteBuyIp200Response.md)
 - [Home](docs/Home.md)
 - [HomeDetails](docs/HomeDetails.md)
 - [HomeDetailsModules](docs/HomeDetailsModules.md)
 - [HomeDetailsModulesBackups](docs/HomeDetailsModulesBackups.md)
 - [HomeDetailsModulesDomains](docs/HomeDetailsModulesDomains.md)
 - [HomeDetailsModulesLicenses](docs/HomeDetailsModulesLicenses.md)
 - [HomeDetailsModulesQuickservers](docs/HomeDetailsModulesQuickservers.md)
 - [HomeDetailsModulesServers](docs/HomeDetailsModulesServers.md)
 - [HomeDetailsModulesVps](docs/HomeDetailsModulesVps.md)
 - [HomeDetailsModulesWebhosting](docs/HomeDetailsModulesWebhosting.md)
 - [HomeServices](docs/HomeServices.md)
 - [HomeServicesBackups](docs/HomeServicesBackups.md)
 - [HomeServicesDomains](docs/HomeServicesDomains.md)
 - [HomeServicesDomainsLinks](docs/HomeServicesDomainsLinks.md)
 - [HomeServicesLicenses](docs/HomeServicesLicenses.md)
 - [HomeServicesLicensesLinks](docs/HomeServicesLicensesLinks.md)
 - [HomeServicesServers](docs/HomeServicesServers.md)
 - [HomeServicesServersLinks](docs/HomeServicesServersLinks.md)
 - [HomeServicesVps](docs/HomeServicesVps.md)
 - [HomeServicesVpsLinks](docs/HomeServicesVpsLinks.md)
 - [HomeServicesWebhosting](docs/HomeServicesWebhosting.md)
 - [HomeServicesWebhostingLinks](docs/HomeServicesWebhostingLinks.md)
 - [HomeTicketStatus](docs/HomeTicketStatus.md)
 - [HomeTicketStatusView](docs/HomeTicketStatusView.md)
 - [HostnameObject](docs/HostnameObject.md)
 - [InitiatePayment200Response](docs/InitiatePayment200Response.md)
 - [IpLimitRange](docs/IpLimitRange.md)
 - [IpObject](docs/IpObject.md)
 - [License](docs/License.md)
 - [LicenseBillingDetails](docs/LicenseBillingDetails.md)
 - [LicenseClientLink](docs/LicenseClientLink.md)
 - [LicenseExtraInfoTables](docs/LicenseExtraInfoTables.md)
 - [LicenseIpInfo](docs/LicenseIpInfo.md)
 - [LicenseIpInfoRow](docs/LicenseIpInfoRow.md)
 - [LicenseOrderRequest](docs/LicenseOrderRequest.md)
 - [LicenseRow](docs/LicenseRow.md)
 - [LicenseServiceInfo](docs/LicenseServiceInfo.md)
 - [LicenseServiceType](docs/LicenseServiceType.md)
 - [LicensesCancel200Response](docs/LicensesCancel200Response.md)
 - [LicensesOrder](docs/LicensesOrder.md)
 - [LicensesOrderPackageCosts](docs/LicensesOrderPackageCosts.md)
 - [LicensesOrderServiceCategories](docs/LicensesOrderServiceCategories.md)
 - [LicensesOrderServiceCategories509](docs/LicensesOrderServiceCategories509.md)
 - [LicensesOrderServiceTypes](docs/LicensesOrderServiceTypes.md)
 - [LicensesOrderServiceTypes11482](docs/LicensesOrderServiceTypes11482.md)
 - [LoginErrorResponse](docs/LoginErrorResponse.md)
 - [LoginInfo](docs/LoginInfo.md)
 - [LoginServiceCounts](docs/LoginServiceCounts.md)
 - [LoginSubmissionExample](docs/LoginSubmissionExample.md)
 - [LoginSubmissionExampleGRecaptchaResponse](docs/LoginSubmissionExampleGRecaptchaResponse.md)
 - [LoginSubmissionExampleGRecaptchaResponseDep](docs/LoginSubmissionExampleGRecaptchaResponseDep.md)
 - [LoginSuccessResponse](docs/LoginSuccessResponse.md)
 - [MailAlertRequest](docs/MailAlertRequest.md)
 - [MailAlertUpdateRequest](docs/MailAlertUpdateRequest.md)
 - [MailAlertsResponse](docs/MailAlertsResponse.md)
 - [MailAlertsResponseInner](docs/MailAlertsResponseInner.md)
 - [MailAttachment](docs/MailAttachment.md)
 - [MailBillingDetails](docs/MailBillingDetails.md)
 - [MailBlockClickHouse](docs/MailBlockClickHouse.md)
 - [MailBlockRspamd](docs/MailBlockRspamd.md)
 - [MailBlocks](docs/MailBlocks.md)
 - [MailCancel200Response](docs/MailCancel200Response.md)
 - [MailClientLink](docs/MailClientLink.md)
 - [MailDelistRequest](docs/MailDelistRequest.md)
 - [MailDelistResponse](docs/MailDelistResponse.md)
 - [MailDeliverabilityResponse](docs/MailDeliverabilityResponse.md)
 - [MailExtraInfoTable](docs/MailExtraInfoTable.md)
 - [MailExtraInfoTableRow](docs/MailExtraInfoTableRow.md)
 - [MailLog](docs/MailLog.md)
 - [MailLogEntry](docs/MailLogEntry.md)
 - [MailOrder](docs/MailOrder.md)
 - [MailOrderRequest](docs/MailOrderRequest.md)
 - [MailRow](docs/MailRow.md)
 - [MailSchema](docs/MailSchema.md)
 - [MailSchemaExtraInfoTables](docs/MailSchemaExtraInfoTables.md)
 - [MailServiceInfo](docs/MailServiceInfo.md)
 - [MailServiceType](docs/MailServiceType.md)
 - [MailStatsType](docs/MailStatsType.md)
 - [MailStatsTypeVolume](docs/MailStatsTypeVolume.md)
 - [MailStatsTypeVolumeFrom](docs/MailStatsTypeVolumeFrom.md)
 - [MailStatsTypeVolumeIp](docs/MailStatsTypeVolumeIp.md)
 - [MailStatsTypeVolumeTo](docs/MailStatsTypeVolumeTo.md)
 - [MailTutorialsTable](docs/MailTutorialsTable.md)
 - [MailTutorialsTableRow](docs/MailTutorialsTableRow.md)
 - [ModuleSettings](docs/ModuleSettings.md)
 - [Modules](docs/Modules.md)
 - [MonthlyCounts](docs/MonthlyCounts.md)
 - [PasswordRequest](docs/PasswordRequest.md)
 - [PatchBillingCreditCardVerifyRequest](docs/PatchBillingCreditCardVerifyRequest.md)
 - [PatchOauthTwoFactor200Response](docs/PatchOauthTwoFactor200Response.md)
 - [PatchOauthTwoFactorRequest](docs/PatchOauthTwoFactorRequest.md)
 - [PlaceBuyNowServerRequest](docs/PlaceBuyNowServerRequest.md)
 - [PlaceScrubOrder201Response](docs/PlaceScrubOrder201Response.md)
 - [PlaceScrubOrder201ResponseOrderDetails](docs/PlaceScrubOrder201ResponseOrderDetails.md)
 - [PlaceScrubOrder201ResponseOrderDetailsCjParams](docs/PlaceScrubOrder201ResponseOrderDetailsCjParams.md)
 - [PostOauthCallback200Response](docs/PostOauthCallback200Response.md)
 - [PostOauthCallbackRequest](docs/PostOauthCallbackRequest.md)
 - [PostWebsiteBuyIp200Response](docs/PostWebsiteBuyIp200Response.md)
 - [PostWebsiteBuyIpRequest](docs/PostWebsiteBuyIpRequest.md)
 - [PostWebsiteMigration200Response](docs/PostWebsiteMigration200Response.md)
 - [PostWebsiteMigrationRequest](docs/PostWebsiteMigrationRequest.md)
 - [PutScrubIps200Response](docs/PutScrubIps200Response.md)
 - [QsOrderRequest](docs/QsOrderRequest.md)
 - [QueueResponse](docs/QueueResponse.md)
 - [Quickserver](docs/Quickserver.md)
 - [QuickserverAddons](docs/QuickserverAddons.md)
 - [QuickserverAddonsRow](docs/QuickserverAddonsRow.md)
 - [QuickserverBillingDetails](docs/QuickserverBillingDetails.md)
 - [QuickserverClientLink](docs/QuickserverClientLink.md)
 - [QuickserverExtraInfoTables](docs/QuickserverExtraInfoTables.md)
 - [QuickserverIpInfo](docs/QuickserverIpInfo.md)
 - [QuickserverIpTableRow](docs/QuickserverIpTableRow.md)
 - [QuickserverOrder](docs/QuickserverOrder.md)
 - [QuickserverOrderDistroSel](docs/QuickserverOrderDistroSel.md)
 - [QuickserverOrderDistroSelUbuntu](docs/QuickserverOrderDistroSelUbuntu.md)
 - [QuickserverOrderServerDetails](docs/QuickserverOrderServerDetails.md)
 - [QuickserverOrderServerDetails381](docs/QuickserverOrderServerDetails381.md)
 - [QuickserverOrderTemplates](docs/QuickserverOrderTemplates.md)
 - [QuickserverOrderTemplatesUbuntu64](docs/QuickserverOrderTemplatesUbuntu64.md)
 - [QuickserverOrderVersion](docs/QuickserverOrderVersion.md)
 - [QuickserverOrderVersionCentosstream8](docs/QuickserverOrderVersionCentosstream8.md)
 - [QuickserverRow](docs/QuickserverRow.md)
 - [QuickserverServiceExtra](docs/QuickserverServiceExtra.md)
 - [QuickserverServiceInfo](docs/QuickserverServiceInfo.md)
 - [QuickserverServiceMaster](docs/QuickserverServiceMaster.md)
 - [QuickserversCancel200Response](docs/QuickserversCancel200Response.md)
 - [ReplyTicketRequest](docs/ReplyTicketRequest.md)
 - [ReplyTicketResponseSchema](docs/ReplyTicketResponseSchema.md)
 - [RestoreRequest](docs/RestoreRequest.md)
 - [ReverseDnsEntries](docs/ReverseDnsEntries.md)
 - [ScrubIpFilterTypes](docs/ScrubIpFilterTypes.md)
 - [ScrubIpFilterTypesFiltersValue](docs/ScrubIpFilterTypesFiltersValue.md)
 - [ScrubIpPlaceOrder](docs/ScrubIpPlaceOrder.md)
 - [ScrubIpsDeleteRule200Response](docs/ScrubIpsDeleteRule200Response.md)
 - [ScrubIpsDeleteRule400Response](docs/ScrubIpsDeleteRule400Response.md)
 - [ScrubIpsDeleteRule500Response](docs/ScrubIpsDeleteRule500Response.md)
 - [ScrubIpsLogRowSchema](docs/ScrubIpsLogRowSchema.md)
 - [ScrubIpsRowSchema](docs/ScrubIpsRowSchema.md)
 - [SearchAutocompleteResponse](docs/SearchAutocompleteResponse.md)
 - [SendMail](docs/SendMail.md)
 - [SendMailAdv](docs/SendMailAdv.md)
 - [Server](docs/Server.md)
 - [ServerAsset](docs/ServerAsset.md)
 - [ServerAssets](docs/ServerAssets.md)
 - [ServerBillingDetails](docs/ServerBillingDetails.md)
 - [ServerBulkIpmiPowerResponse](docs/ServerBulkIpmiPowerResponse.md)
 - [ServerBulkIpmiPowerResponseResultsInner](docs/ServerBulkIpmiPowerResponseResultsInner.md)
 - [ServerClientLink](docs/ServerClientLink.md)
 - [ServerExtraInfoTables](docs/ServerExtraInfoTables.md)
 - [ServerIpmiLiveInfo](docs/ServerIpmiLiveInfo.md)
 - [ServerIpmiLiveRequest](docs/ServerIpmiLiveRequest.md)
 - [ServerIpmiPowerRequest](docs/ServerIpmiPowerRequest.md)
 - [ServerLease](docs/ServerLease.md)
 - [ServerLocation1](docs/ServerLocation1.md)
 - [ServerLocations](docs/ServerLocations.md)
 - [ServerNetworkInfo](docs/ServerNetworkInfo.md)
 - [ServerNetworkInfoAssets](docs/ServerNetworkInfoAssets.md)
 - [ServerNetworkInfoSwitchports](docs/ServerNetworkInfoSwitchports.md)
 - [ServerOrder](docs/ServerOrder.md)
 - [ServerOrderBandwidth](docs/ServerOrderBandwidth.md)
 - [ServerOrderBandwidthLi](docs/ServerOrderBandwidthLi.md)
 - [ServerOrderCPU](docs/ServerOrderCPU.md)
 - [ServerOrderConfigIds](docs/ServerOrderConfigIds.md)
 - [ServerOrderControlPanel](docs/ServerOrderControlPanel.md)
 - [ServerOrderCpLi](docs/ServerOrderCpLi.md)
 - [ServerOrderCpuLi](docs/ServerOrderCpuLi.md)
 - [ServerOrderFieldLabel](docs/ServerOrderFieldLabel.md)
 - [ServerOrderFieldLabels](docs/ServerOrderFieldLabels.md)
 - [ServerOrderFormValues](docs/ServerOrderFormValues.md)
 - [ServerOrderIP](docs/ServerOrderIP.md)
 - [ServerOrderIpsLi](docs/ServerOrderIpsLi.md)
 - [ServerOrderMemory](docs/ServerOrderMemory.md)
 - [ServerOrderMemoryLi](docs/ServerOrderMemoryLi.md)
 - [ServerOrderMemoryLi254](docs/ServerOrderMemoryLi254.md)
 - [ServerOrderOS](docs/ServerOrderOS.md)
 - [ServerOrderOsLi](docs/ServerOrderOsLi.md)
 - [ServerOrderPostRequest](docs/ServerOrderPostRequest.md)
 - [ServerOrderPostRequestHd](docs/ServerOrderPostRequestHd.md)
 - [ServerOrderRAID](docs/ServerOrderRAID.md)
 - [ServerRow](docs/ServerRow.md)
 - [ServerServiceInfo](docs/ServerServiceInfo.md)
 - [ServerSwitchport](docs/ServerSwitchport.md)
 - [ServersBuyNowError](docs/ServersBuyNowError.md)
 - [ServersBuyNowResponse](docs/ServersBuyNowResponse.md)
 - [ServersBuyNowResponseOrderDetails](docs/ServersBuyNowResponseOrderDetails.md)
 - [ServersCancel200Response](docs/ServersCancel200Response.md)
 - [Service](docs/Service.md)
 - [ServiceCategories](docs/ServiceCategories.md)
 - [ServiceCategory](docs/ServiceCategory.md)
 - [ServiceOrderPostResponse](docs/ServiceOrderPostResponse.md)
 - [ServiceType](docs/ServiceType.md)
 - [ServiceTypes](docs/ServiceTypes.md)
 - [Services](docs/Services.md)
 - [ServicesInfo](docs/ServicesInfo.md)
 - [SslCancel200Response](docs/SslCancel200Response.md)
 - [SslOrderRequest](docs/SslOrderRequest.md)
 - [StatusMonthlyBreakdown](docs/StatusMonthlyBreakdown.md)
 - [SuccessTextResponse](docs/SuccessTextResponse.md)
 - [TemplateRequest](docs/TemplateRequest.md)
 - [TextResponse](docs/TextResponse.md)
 - [TicketCustomFieldDetails](docs/TicketCustomFieldDetails.md)
 - [TicketDetails](docs/TicketDetails.md)
 - [TicketNew](docs/TicketNew.md)
 - [TicketNewResponse](docs/TicketNewResponse.md)
 - [TicketPostDetails](docs/TicketPostDetails.md)
 - [TicketPostDetailsInner](docs/TicketPostDetailsInner.md)
 - [Tickets](docs/Tickets.md)
 - [TicketsCountArray](docs/TicketsCountArray.md)
 - [TicketsRow](docs/TicketsRow.md)
 - [TimezoneUpdate](docs/TimezoneUpdate.md)
 - [UpdateAccountTfaRequest](docs/UpdateAccountTfaRequest.md)
 - [UpdateTicket](docs/UpdateTicket.md)
 - [UpdateTicketResponseSchema](docs/UpdateTicketResponseSchema.md)
 - [UrlRequest](docs/UrlRequest.md)
 - [VPSCancel200Response](docs/VPSCancel200Response.md)
 - [VPSTrafficDataDataSectionResponse](docs/VPSTrafficDataDataSectionResponse.md)
 - [VPSTrafficDataDataSectionResponseInner](docs/VPSTrafficDataDataSectionResponseInner.md)
 - [ViewMailLogStartDateParameter](docs/ViewMailLogStartDateParameter.md)
 - [ViewTicketResponse](docs/ViewTicketResponse.md)
 - [Vps](docs/Vps.md)
 - [VpsBackupRow](docs/VpsBackupRow.md)
 - [VpsBackupRows](docs/VpsBackupRows.md)
 - [VpsBillingDetails](docs/VpsBillingDetails.md)
 - [VpsCPData](docs/VpsCPData.md)
 - [VpsClientLink](docs/VpsClientLink.md)
 - [VpsDAData](docs/VpsDAData.md)
 - [VpsDALicense](docs/VpsDALicense.md)
 - [VpsExtraInfoTables](docs/VpsExtraInfoTables.md)
 - [VpsIPInfo](docs/VpsIPInfo.md)
 - [VpsIPInfoRow](docs/VpsIPInfoRow.md)
 - [VpsOrder](docs/VpsOrder.md)
 - [VpsOrderLocationNames](docs/VpsOrderLocationNames.md)
 - [VpsOrderLocationStock](docs/VpsOrderLocationStock.md)
 - [VpsOrderLocationStock1](docs/VpsOrderLocationStock1.md)
 - [VpsOrderOsNames](docs/VpsOrderOsNames.md)
 - [VpsOrderPackageCosts](docs/VpsOrderPackageCosts.md)
 - [VpsOrderPlatformNames](docs/VpsOrderPlatformNames.md)
 - [VpsOrderPlatformPackages](docs/VpsOrderPlatformPackages.md)
 - [VpsOrderPostRequest](docs/VpsOrderPostRequest.md)
 - [VpsOrderPutRequest](docs/VpsOrderPutRequest.md)
 - [VpsOrderPutResponse](docs/VpsOrderPutResponse.md)
 - [VpsOrderServiceTypes](docs/VpsOrderServiceTypes.md)
 - [VpsOrderServiceTypes32](docs/VpsOrderServiceTypes32.md)
 - [VpsOrderTemplates](docs/VpsOrderTemplates.md)
 - [VpsOrderTemplatesHyperv](docs/VpsOrderTemplatesHyperv.md)
 - [VpsOrderTemplatesHypervWindows](docs/VpsOrderTemplatesHypervWindows.md)
 - [VpsPlesk12Data](docs/VpsPlesk12Data.md)
 - [VpsPleskLicense](docs/VpsPleskLicense.md)
 - [VpsRow](docs/VpsRow.md)
 - [VpsServiceAddons](docs/VpsServiceAddons.md)
 - [VpsServiceExtra](docs/VpsServiceExtra.md)
 - [VpsServiceInfo](docs/VpsServiceInfo.md)
 - [VpsServiceMaster](docs/VpsServiceMaster.md)
 - [VpsSnapshot](docs/VpsSnapshot.md)
 - [VpsTemplateRow](docs/VpsTemplateRow.md)
 - [VpsTemplatesList](docs/VpsTemplatesList.md)
 - [VpsTrafficDataSectionResponse](docs/VpsTrafficDataSectionResponse.md)
 - [VpsTrafficHistoryResponse](docs/VpsTrafficHistoryResponse.md)
 - [VpsTrafficHistorySectionDataResponse](docs/VpsTrafficHistorySectionDataResponse.md)
 - [VpsTrafficHistorySectionResponse](docs/VpsTrafficHistorySectionResponse.md)
 - [VpsTrafficResponse](docs/VpsTrafficResponse.md)
 - [VpsTrafficTotalsResposne](docs/VpsTrafficTotalsResposne.md)
 - [VpsTrafficTotalsSectionResponse](docs/VpsTrafficTotalsSectionResponse.md)
 - [VpsTrafficUsageAverageResponse](docs/VpsTrafficUsageAverageResponse.md)
 - [VpsTrafficUsageAverageSectionResponse](docs/VpsTrafficUsageAverageSectionResponse.md)
 - [VpsTrafficUsageResponse](docs/VpsTrafficUsageResponse.md)
 - [WebhostingCancel200Response](docs/WebhostingCancel200Response.md)
 - [Website](docs/Website.md)
 - [WebsiteBackups](docs/WebsiteBackups.md)
 - [WebsiteBackupsInner](docs/WebsiteBackupsInner.md)
 - [WebsiteBillingDetails](docs/WebsiteBillingDetails.md)
 - [WebsiteClientLink](docs/WebsiteClientLink.md)
 - [WebsiteExtraInfoTables](docs/WebsiteExtraInfoTables.md)
 - [WebsiteLoginResponse](docs/WebsiteLoginResponse.md)
 - [WebsiteOrderPostRequest](docs/WebsiteOrderPostRequest.md)
 - [WebsiteOrderPutRequest](docs/WebsiteOrderPutRequest.md)
 - [WebsiteRow](docs/WebsiteRow.md)
 - [WebsiteServiceInfo](docs/WebsiteServiceInfo.md)
 - [WebsiteServiceMaster](docs/WebsiteServiceMaster.md)
 - [WebsiteTable](docs/WebsiteTable.md)
 - [WebsiteTableRow](docs/WebsiteTableRow.md)
 - [WebsitesOrder](docs/WebsitesOrder.md)
 - [WebsitesOrderJsonServiceOffers](docs/WebsitesOrderJsonServiceOffers.md)
 - [WebsitesOrderJsonServiceOffersItem](docs/WebsitesOrderJsonServiceOffersItem.md)
 - [WebsitesOrderJsonServices](docs/WebsitesOrderJsonServices.md)
 - [WebsitesOrderPackages](docs/WebsitesOrderPackages.md)
 - [WebsitesOrderPackagesInfo](docs/WebsitesOrderPackagesInfo.md)
 - [WebsitesOrderPackges](docs/WebsitesOrderPackges.md)
 - [WebsitesOrderServiceOffer](docs/WebsitesOrderServiceOffer.md)
 - [WebsitesOrderServiceOffers](docs/WebsitesOrderServiceOffers.md)
 - [WebsitesOrderServiceTypes](docs/WebsitesOrderServiceTypes.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="apiKeyAuth"></a>
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

<a id="sessionIdHeaderAuth"></a>
### sessionIdHeaderAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: HTTP header

<a id="sessionIdCookieAuth"></a>
### sessionIdCookieAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: 

