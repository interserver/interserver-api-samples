# InterServer Management API - Jetbrains API Client

## General API description

# Overview  The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.  The API covers the following service categories: - [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management - [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting - [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers - [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html) - [Backups](https://www.interserver.net/storage/) — storage and backup services - Licenses — control panel and software licenses - [Mail](https://www.mail.baby/) — mail delivery services - SSL — certificate provisioning - Billing — invoices, payment methods, and account management  For interactive testing, see the [API documentation](/api-docs/).  # Authentication  Most endpoints require authentication. Two methods are supported:  ## API Key (Preferred)  Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the &#x60;X-API-KEY&#x60; request header:  &#x60;&#x60;&#x60; X-API-KEY: your-api-key-here &#x60;&#x60;&#x60;  ## Session-Based Authentication  Alternatively, authenticate by creating a session:  1. **Log in** — Send a &#x60;POST&#x60; request to &#x60;/login&#x60; with your account credentials. The response includes a session identifier. 2. **Pass the session ID** — Include the session identifier in the &#x60;sessionid&#x60; header on subsequent requests:  &#x60;&#x60;&#x60; sessionid: your-session-id-here &#x60;&#x60;&#x60;  API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.  

* API basepath : [https://my.interserver.net/apiv2](https://my.interserver.net/apiv2)
* Version : 0.9.0

## Documentation for API Endpoints

All URIs are relative to *https://my.interserver.net/apiv2*, but will link to the `.http` file that contains the endpoint definition.
There may be multiple requests for a single endpoint, one for each example described in the OpenAPI specification.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**deleteAccountOauthName**](Apis/AccountApi.http#deleteaccountoauthname) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
*AccountApi* | [**deleteAccountTfa**](Apis/AccountApi.http#deleteaccounttfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret
*AccountApi* | [**deleteIpLimit**](Apis/AccountApi.http#deleteiplimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits)
*AccountApi* | [**getAccountInfo**](Apis/AccountApi.http#getaccountinfo) | **GET** /account | Read full account profile, billing address, and security settings
*AccountApi* | [**getAccountTfaSetup**](Apis/AccountApi.http#getaccounttfasetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
*AccountApi* | [**getHome**](Apis/AccountApi.http#gethome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts
*AccountApi* | [**getSearch**](Apis/AccountApi.http#getsearch) | **GET** /search | Global autocomplete across the caller's services, domains, and records
*AccountApi* | [**logout**](Apis/AccountApi.http#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable
*AccountApi* | [**logoutAccountOauth**](Apis/AccountApi.http#logoutaccountoauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account)
*AccountApi* | [**updateAccountApiKey**](Apis/AccountApi.http#updateaccountapikey) | **POST** /account/apikey | Rotate the account's REST/MCP API key — old key is invalidated immediately
*AccountApi* | [**updateAccountFeatures**](Apis/AccountApi.http#updateaccountfeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall
*AccountApi* | [**updateAccountInfo**](Apis/AccountApi.http#updateaccountinfo) | **POST** /account | Update contact and billing-address fields on the customer profile
*AccountApi* | [**updateAccountIpLimits**](Apis/AccountApi.http#updateaccountiplimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
*AccountApi* | [**updateAccountPassword**](Apis/AccountApi.http#updateaccountpassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions)
*AccountApi* | [**updateAccountSshKey**](Apis/AccountApi.http#updateaccountsshkey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders
*AccountApi* | [**updateAccountTfa**](Apis/AccountApi.http#updateaccounttfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account
*BackupsApi* | [**addBackup**](Apis/BackupsApi.http#addbackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice
*BackupsApi* | [**cancelBackup**](Apis/BackupsApi.http#cancelbackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription
*BackupsApi* | [**getBackupInfo**](Apis/BackupsApi.http#getbackupinfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service
*BackupsApi* | [**getBackupInvoices**](Apis/BackupsApi.http#getbackupinvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription
*BackupsApi* | [**getBackupLogin**](Apis/BackupsApi.http#getbackuplogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel
*BackupsApi* | [**getBackupsList**](Apis/BackupsApi.http#getbackupslist) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account
*BackupsApi* | [**getBackupsWelcomeEmail**](Apis/BackupsApi.http#getbackupswelcomeemail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service
*BackupsApi* | [**getNewBackup**](Apis/BackupsApi.http#getnewbackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers
*BackupsApi* | [**updateBackupInfo**](Apis/BackupsApi.http#updatebackupinfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription
*BackupsApi* | [**validateBackupOrder**](Apis/BackupsApi.http#validatebackuporder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging
*BillingApi* | [**addBillingCreditCard**](Apis/BillingApi.http#addbillingcreditcard) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow
*BillingApi* | [**addBillingPrepay**](Apis/BillingApi.http#addbillingprepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
*BillingApi* | [**deleteBillingCreditCard**](Apis/BillingApi.http#deletebillingcreditcard) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account
*BillingApi* | [**deleteBillingInvoice**](Apis/BillingApi.http#deletebillinginvoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
*BillingApi* | [**deleteBillingPrepay**](Apis/BillingApi.http#deletebillingprepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
*BillingApi* | [**getAffiliateBanners**](Apis/BillingApi.http#getaffiliatebanners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions
*BillingApi* | [**getAffiliateDownload**](Apis/BillingApi.http#getaffiliatedownload) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
*BillingApi* | [**getAffiliateRichReport**](Apis/BillingApi.http#getaffiliaterichreport) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
*BillingApi* | [**getAffiliateSalesGraph**](Apis/BillingApi.http#getaffiliatesalesgraph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
*BillingApi* | [**getAffiliateSignups**](Apis/BillingApi.http#getaffiliatesignups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
*BillingApi* | [**getAffiliateTrafficGraph**](Apis/BillingApi.http#getaffiliatetrafficgraph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
*BillingApi* | [**getAffiliateWebTraffic**](Apis/BillingApi.http#getaffiliatewebtraffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
*BillingApi* | [**getBillingCart**](Apis/BillingApi.http#getbillingcart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
*BillingApi* | [**getBillingCreditCardVerify**](Apis/BillingApi.http#getbillingcreditcardverify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
*BillingApi* | [**getBillingInvoice**](Apis/BillingApi.http#getbillinginvoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
*BillingApi* | [**getBillingInvoices**](Apis/BillingApi.http#getbillinginvoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
*BillingApi* | [**getBillingPrePays**](Apis/BillingApi.http#getbillingprepays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
*BillingApi* | [**initiatePayment**](Apis/BillingApi.http#initiatepayment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
*BillingApi* | [**patchBillingCreditCardVerify**](Apis/BillingApi.http#patchbillingcreditcardverify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
*BillingApi* | [**postBillingCreditCardVerify**](Apis/BillingApi.http#postbillingcreditcardverify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
*BillingApi* | [**updateAffiliateDockSetup**](Apis/BillingApi.http#updateaffiliatedocksetup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
*BillingApi* | [**updateAffiliatePaymentSetup**](Apis/BillingApi.http#updateaffiliatepaymentsetup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
*BillingApi* | [**updateBillingCreditCard**](Apis/BillingApi.http#updatebillingcreditcard) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
*BillingApi* | [**updateBillingPaymentMethod**](Apis/BillingApi.http#updatebillingpaymentmethod) | **POST** /billing/payment_method | Set the account's default payment method for recurring/auto charges
*DNSApi* | [**addDnsDomain**](Apis/DNSApi.http#adddnsdomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
*DNSApi* | [**addDnsRecord**](Apis/DNSApi.http#adddnsrecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
*DNSApi* | [**deleteDnsDomain**](Apis/DNSApi.http#deletednsdomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains
*DNSApi* | [**deleteDnsRecord**](Apis/DNSApi.http#deletednsrecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
*DNSApi* | [**getDnsDomain**](Apis/DNSApi.http#getdnsdomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
*DNSApi* | [**getDnsList**](Apis/DNSApi.http#getdnslist) | **GET** /dns | List DNS zones hosted on the account with each zone's apex A-record IP
*DNSApi* | [**updateDnsRecord**](Apis/DNSApi.http#updatednsrecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)
*DomainsApi* | [**addDomain**](Apis/DomainsApi.http#adddomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice
*DomainsApi* | [**addDomainDnssec**](Apis/DomainsApi.http#adddomaindnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS
*DomainsApi* | [**addDomainNameserver**](Apis/DomainsApi.http#adddomainnameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver)
*DomainsApi* | [**cancelDomain**](Apis/DomainsApi.http#canceldomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals
*DomainsApi* | [**deleteDomainDnssec**](Apis/DomainsApi.http#deletedomaindnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
*DomainsApi* | [**deleteDomainNameserver**](Apis/DomainsApi.http#deletedomainnameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain
*DomainsApi* | [**getDomainContact**](Apis/DomainsApi.http#getdomaincontact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain
*DomainsApi* | [**getDomainDnssec**](Apis/DomainsApi.http#getdomaindnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar
*DomainsApi* | [**getDomainInfo**](Apis/DomainsApi.http#getdomaininfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain
*DomainsApi* | [**getDomainInvoices**](Apis/DomainsApi.http#getdomaininvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order
*DomainsApi* | [**getDomainLookup**](Apis/DomainsApi.http#getdomainlookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain
*DomainsApi* | [**getDomainNameservers**](Apis/DomainsApi.http#getdomainnameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain
*DomainsApi* | [**getDomainRenewal**](Apis/DomainsApi.http#getdomainrenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists
*DomainsApi* | [**getDomainSearch**](Apis/DomainsApi.http#getdomainsearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term
*DomainsApi* | [**getDomainTransfer**](Apis/DomainsApi.http#getdomaintransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order
*DomainsApi* | [**getDomainWhoisPrivacy**](Apis/DomainsApi.http#getdomainwhoisprivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain
*DomainsApi* | [**getDomainsList**](Apis/DomainsApi.http#getdomainslist) | **GET** /domains | List every domain registration on the account with billing and registration metadata
*DomainsApi* | [**getDomainsWelcomeEmail**](Apis/DomainsApi.http#getdomainswelcomeemail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions
*DomainsApi* | [**getNewDomain**](Apis/DomainsApi.http#getnewdomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing
*DomainsApi* | [**patchDomains**](Apis/DomainsApi.http#patchdomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run
*DomainsApi* | [**postDomainRenewal**](Apis/DomainsApi.http#postdomainrenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice
*DomainsApi* | [**postDomainSearch**](Apis/DomainsApi.http#postdomainsearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview)
*DomainsApi* | [**postDomainTransfer**](Apis/DomainsApi.http#postdomaintransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST
*DomainsApi* | [**putDomains**](Apis/DomainsApi.http#putdomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit
*DomainsApi* | [**updateDomainContact**](Apis/DomainsApi.http#updatedomaincontact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS
*DomainsApi* | [**updateDomainInfo**](Apis/DomainsApi.http#updatedomaininfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible)
*DomainsApi* | [**updateDomainNameservers**](Apis/DomainsApi.http#updatedomainnameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar
*DomainsApi* | [**updateDomainWhoisPrivacy**](Apis/DomainsApi.http#updatedomainwhoisprivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain
*FloatingIPsApi* | [**addFloatingIp**](Apis/FloatingIPsApi.http#addfloatingip) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service
*FloatingIPsApi* | [**floatingIpsCancel**](Apis/FloatingIPsApi.http#floatingipscancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops
*FloatingIPsApi* | [**getFloatingIpInfo**](Apis/FloatingIPsApi.http#getfloatingipinfo) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP
*FloatingIPsApi* | [**getFloatingIpInvoices**](Apis/FloatingIPsApi.http#getfloatingipinvoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service
*FloatingIPsApi* | [**getFloatingIpsList**](Apis/FloatingIPsApi.http#getfloatingipslist) | **GET** /floating_ips | List all Floating IP services on the authenticated customer's account
*FloatingIPsApi* | [**getFloatingIpsWelcomeEmail**](Apis/FloatingIPsApi.http#getfloatingipswelcomeemail) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact
*FloatingIPsApi* | [**getNewFloatingIp**](Apis/FloatingIPsApi.http#getnewfloatingip) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP
*FloatingIPsApi* | [**postFloatingIpsChangeIp**](Apis/FloatingIPsApi.http#postfloatingipschangeip) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer's services
*FloatingIPsApi* | [**putFloatingIps**](Apis/FloatingIPsApi.http#putfloatingips) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer
*FloatingIPsApi* | [**updateFloatingIpInfo**](Apis/FloatingIPsApi.http#updatefloatingipinfo) | **POST** /floating_ips/{id} | Update a Floating IP service's editable settings (label / metadata)
*LicensesApi* | [**addLicense**](Apis/LicensesApi.http#addlicense) | **POST** /licenses/order | Order a new software license and create the recurring invoice
*LicensesApi* | [**getLicenseInfo**](Apis/LicensesApi.http#getlicenseinfo) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links
*LicensesApi* | [**getLicenseInvoices**](Apis/LicensesApi.http#getlicenseinvoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service
*LicensesApi* | [**getLicenseList**](Apis/LicensesApi.http#getlicenselist) | **GET** /licenses | List all software licenses owned by the authenticated customer
*LicensesApi* | [**getLicensesWelcomeEmail**](Apis/LicensesApi.http#getlicenseswelcomeemail) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps
*LicensesApi* | [**getNewLicense**](Apis/LicensesApi.http#getnewlicense) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering
*LicensesApi* | [**licensesCancel**](Apis/LicensesApi.http#licensescancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible)
*LicensesApi* | [**postLicenseChangeIp**](Apis/LicensesApi.http#postlicensechangeip) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee)
*LicensesApi* | [**putLicenses**](Apis/LicensesApi.http#putlicenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview)
*LicensesApi* | [**updateLicenseInfo**](Apis/LicensesApi.http#updatelicenseinfo) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP)
*MailApi* | [**addMail**](Apis/MailApi.http#addmail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning
*MailApi* | [**addRule**](Apis/MailApi.http#addrule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions
*MailApi* | [**createMailAlert**](Apis/MailApi.http#createmailalert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events
*MailApi* | [**deleteMailAlert**](Apis/MailApi.http#deletemailalert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
*MailApi* | [**deleteRule**](Apis/MailApi.http#deleterule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
*MailApi* | [**delistBlock**](Apis/MailApi.http#delistblock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**getMailAlerts**](Apis/MailApi.http#getmailalerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service
*MailApi* | [**getMailBlocks**](Apis/MailApi.http#getmailblocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user
*MailApi* | [**getMailDelist**](Apis/MailApi.http#getmaildelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting
*MailApi* | [**getMailDeliverability**](Apis/MailApi.http#getmaildeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain)
*MailApi* | [**getMailInfo**](Apis/MailApi.http#getmailinfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials
*MailApi* | [**getMailInvoices**](Apis/MailApi.http#getmailinvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service
*MailApi* | [**getMailList**](Apis/MailApi.http#getmaillist) | **GET** /mail | List every Mail Baby SMTP relay service on the account
*MailApi* | [**getMailWelcomeEmail**](Apis/MailApi.http#getmailwelcomeemail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info
*MailApi* | [**getNewMail**](Apis/MailApi.http#getnewmail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata
*MailApi* | [**getRules**](Apis/MailApi.http#getrules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service
*MailApi* | [**getStats**](Apis/MailApi.http#getstats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
*MailApi* | [**mailCancel**](Apis/MailApi.http#mailcancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice
*MailApi* | [**postMailDelist**](Apis/MailApi.http#postmaildelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists
*MailApi* | [**putMail**](Apis/MailApi.http#putmail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge
*MailApi* | [**resetMailPassword**](Apis/MailApi.http#resetmailpassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner
*MailApi* | [**sendAdvMail**](Apis/MailApi.http#sendadvmail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
*MailApi* | [**sendMail**](Apis/MailApi.http#sendmail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay
*MailApi* | [**updateMailAlert**](Apis/MailApi.http#updatemailalert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id
*MailApi* | [**updateMailInfo**](Apis/MailApi.http#updatemailinfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page
*MailApi* | [**updateRule**](Apis/MailApi.http#updaterule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule's type and match data
*MailApi* | [**viewMailLog**](Apis/MailApi.http#viewmaillog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries
*PublicApi* | [**getAccountCurrencies**](Apis/PublicApi.http#getaccountcurrencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences
*PublicApi* | [**getAccountLocales**](Apis/PublicApi.http#getaccountlocales) | **GET** /account/locales | List supported UI locales with English and native display names
*PublicApi* | [**getCaptcha**](Apis/PublicApi.http#getcaptcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification
*PublicApi* | [**getCountries**](Apis/PublicApi.http#getcountries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code
*PublicApi* | [**getInfo**](Apis/PublicApi.http#getinfo) | **GET** /info | Discover available modules, service packages, categories, and types
*PublicApi* | [**getLoginInfo**](Apis/PublicApi.http#getlogininfo) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page
*PublicApi* | [**getMPServers**](Apis/PublicApi.http#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*PublicApi* | [**getOauthRedirect**](Apis/PublicApi.http#getoauthredirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication
*PublicApi* | [**getTimezones**](Apis/PublicApi.http#gettimezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services
*PublicApi* | [**patchOauthTwoFactor**](Apis/PublicApi.http#patchoauthtwofactor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled
*PublicApi* | [**pingServer**](Apis/PublicApi.http#pingserver) | **GET** /ping | Liveness check — returns the JSON string \"pong\" to confirm API is up
*PublicApi* | [**postOauthCallback**](Apis/PublicApi.http#postoauthcallback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account
*PublicApi* | [**submitLogin**](Apis/PublicApi.http#submitlogin) | **POST** /login | Authenticate with email + password and return a session token
*PublicApi* | [**submitSignup**](Apis/PublicApi.http#submitsignup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS)
*QuickServersApi* | [**addQs**](Apis/QuickServersApi.http#addqs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
*QuickServersApi* | [**deleteQsBackup**](Apis/QuickServersApi.http#deleteqsbackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
*QuickServersApi* | [**doQsBlockSmtp**](Apis/QuickServersApi.http#doqsblocksmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
*QuickServersApi* | [**doQsDisableCd**](Apis/QuickServersApi.http#doqsdisablecd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
*QuickServersApi* | [**doQsDisableQuota**](Apis/QuickServersApi.http#doqsdisablequota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsEjectCd**](Apis/QuickServersApi.http#doqsejectcd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer's virtual CD drive
*QuickServersApi* | [**doQsEnableQuota**](Apis/QuickServersApi.http#doqsenablequota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
*QuickServersApi* | [**doQsRestart**](Apis/QuickServersApi.http#doqsrestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
*QuickServersApi* | [**doQsStart**](Apis/QuickServersApi.http#doqsstart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
*QuickServersApi* | [**doQsStop**](Apis/QuickServersApi.http#doqsstop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
*QuickServersApi* | [**downloadQsBackup**](Apis/QuickServersApi.http#downloadqsbackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
*QuickServersApi* | [**getNewQs**](Apis/QuickServersApi.http#getnewqs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
*QuickServersApi* | [**getQsBackup**](Apis/QuickServersApi.http#getqsbackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
*QuickServersApi* | [**getQsBackups**](Apis/QuickServersApi.http#getqsbackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
*QuickServersApi* | [**getQsChangeHostname**](Apis/QuickServersApi.http#getqschangehostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
*QuickServersApi* | [**getQsChangeRootPassword**](Apis/QuickServersApi.http#getqschangerootpassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
*QuickServersApi* | [**getQsChangeTimezone**](Apis/QuickServersApi.http#getqschangetimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
*QuickServersApi* | [**getQsChangeWebuzoPassword**](Apis/QuickServersApi.http#getqschangewebuzopassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
*QuickServersApi* | [**getQsInfo**](Apis/QuickServersApi.http#getqsinfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
*QuickServersApi* | [**getQsInsertCd**](Apis/QuickServersApi.http#getqsinsertcd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer's virtual CD
*QuickServersApi* | [**getQsInvoices**](Apis/QuickServersApi.http#getqsinvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
*QuickServersApi* | [**getQsList**](Apis/QuickServersApi.http#getqslist) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
*QuickServersApi* | [**getQsReinstallOs**](Apis/QuickServersApi.http#getqsreinstallos) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
*QuickServersApi* | [**getQsResetPassword**](Apis/QuickServersApi.http#getqsresetpassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
*QuickServersApi* | [**getQsReverseDns**](Apis/QuickServersApi.http#getqsreversedns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer's IPs
*QuickServersApi* | [**getQsSetupVnc**](Apis/QuickServersApi.http#getqssetupvnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
*QuickServersApi* | [**getQsTrafficUsage**](Apis/QuickServersApi.http#getqstrafficusage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer's current billing period
*QuickServersApi* | [**getQsViewDesktop**](Apis/QuickServersApi.http#getqsviewdesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
*QuickServersApi* | [**getQsWelcomeEmail**](Apis/QuickServersApi.http#getqswelcomeemail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
*QuickServersApi* | [**postQsChangeHostname**](Apis/QuickServersApi.http#postqschangehostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
*QuickServersApi* | [**postQsChangeRootPassword**](Apis/QuickServersApi.http#postqschangerootpassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
*QuickServersApi* | [**postQsChangeTimezone**](Apis/QuickServersApi.http#postqschangetimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
*QuickServersApi* | [**postQsChangeWebuzoPassword**](Apis/QuickServersApi.http#postqschangewebuzopassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
*QuickServersApi* | [**postQsInsertCd**](Apis/QuickServersApi.http#postqsinsertcd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer's virtual CD via URL
*QuickServersApi* | [**postQsReinstallOs**](Apis/QuickServersApi.http#postqsreinstallos) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
*QuickServersApi* | [**postQsResetPassword**](Apis/QuickServersApi.http#postqsresetpassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
*QuickServersApi* | [**postQsReverseDns**](Apis/QuickServersApi.http#postqsreversedns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer's IPs
*QuickServersApi* | [**postQsSetupVnc**](Apis/QuickServersApi.http#postqssetupvnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer's VNC console
*QuickServersApi* | [**postQsTrafficUsage**](Apis/QuickServersApi.http#postqstrafficusage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
*QuickServersApi* | [**postQsViewDesktop**](Apis/QuickServersApi.http#postqsviewdesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
*QuickServersApi* | [**postQuickServerRestore**](Apis/QuickServersApi.http#postquickserverrestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
*QuickServersApi* | [**putQs**](Apis/QuickServersApi.http#putqs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
*QuickServersApi* | [**quickserversCancel**](Apis/QuickServersApi.http#quickserverscancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
*QuickServersApi* | [**updateQsInfo**](Apis/QuickServersApi.http#updateqsinfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact
*SSLCertificatesApi* | [**addSsl**](Apis/SSLCertificatesApi.http#addssl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance
*SSLCertificatesApi* | [**getNewSsl**](Apis/SSLCertificatesApi.http#getnewssl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order
*SSLCertificatesApi* | [**getSslInfo**](Apis/SSLCertificatesApi.http#getsslinfo) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links
*SSLCertificatesApi* | [**getSslInvoices**](Apis/SSLCertificatesApi.http#getsslinvoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id
*SSLCertificatesApi* | [**getSslList**](Apis/SSLCertificatesApi.http#getssllist) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname
*SSLCertificatesApi* | [**getSslWelcomeEmail**](Apis/SSLCertificatesApi.http#getsslwelcomeemail) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions
*SSLCertificatesApi* | [**putSsl**](Apis/SSLCertificatesApi.http#putssl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl
*SSLCertificatesApi* | [**sslCancel**](Apis/SSLCertificatesApi.http#sslcancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle
*SSLCertificatesApi* | [**updateSslInfo**](Apis/SSLCertificatesApi.http#updatesslinfo) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id
*ScrubIpsApi* | [**cancelScrubIp**](Apis/ScrubIpsApi.http#cancelscrubip) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
*ScrubIpsApi* | [**createFilter**](Apis/ScrubIpsApi.http#createfilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
*ScrubIpsApi* | [**createGeoRule**](Apis/ScrubIpsApi.http#creategeorule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
*ScrubIpsApi* | [**createRule**](Apis/ScrubIpsApi.http#createrule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
*ScrubIpsApi* | [**deleteFilter**](Apis/ScrubIpsApi.http#deletefilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
*ScrubIpsApi* | [**disableScrub**](Apis/ScrubIpsApi.http#disablescrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
*ScrubIpsApi* | [**enableScrub**](Apis/ScrubIpsApi.http#enablescrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service's protected IP
*ScrubIpsApi* | [**getOrderDetail**](Apis/ScrubIpsApi.http#getorderdetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
*ScrubIpsApi* | [**getScrubIpDetails**](Apis/ScrubIpsApi.http#getscrubipdetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
*ScrubIpsApi* | [**getScrubIpFilterTypes**](Apis/ScrubIpsApi.http#getscrubipfiltertypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
*ScrubIpsApi* | [**getScrubIpInvoices**](Apis/ScrubIpsApi.http#getscrubipinvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
*ScrubIpsApi* | [**getScrubIpLogs**](Apis/ScrubIpsApi.http#getscrubiplogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
*ScrubIpsApi* | [**getScrubIpsList**](Apis/ScrubIpsApi.http#getscrubipslist) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
*ScrubIpsApi* | [**placeScrubOrder**](Apis/ScrubIpsApi.http#placescruborder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
*ScrubIpsApi* | [**putScrubIps**](Apis/ScrubIpsApi.http#putscrubips) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
*ScrubIpsApi* | [**scrubIpsDeleteGeoRule**](Apis/ScrubIpsApi.http#scrubipsdeletegeorule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
*ScrubIpsApi* | [**scrubIpsDeleteRule**](Apis/ScrubIpsApi.http#scrubipsdeleterule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
*ServersApi* | [**addServer**](Apis/ServersApi.http#addserver) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice
*ServersApi* | [**buyItNowServerOrder**](Apis/ServersApi.http#buyitnowserverorder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server
*ServersApi* | [**getMPServers**](Apis/ServersApi.http#getmpservers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
*ServersApi* | [**getNewServer**](Apis/ServersApi.http#getnewserver) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing
*ServersApi* | [**getServerInfo**](Apis/ServersApi.http#getserverinfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server
*ServersApi* | [**getServerInvoices**](Apis/ServersApi.http#getserverinvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server
*ServersApi* | [**getServerList**](Apis/ServersApi.http#getserverlist) | **GET** /servers | List all dedicated servers owned by the authenticated customer
*ServersApi* | [**getServerReverseDns**](Apis/ServersApi.http#getserverreversedns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server's IPs
*ServersApi* | [**getServersWelcomeEmail**](Apis/ServersApi.http#getserverswelcomeemail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials
*ServersApi* | [**placeBuyNowServer**](Apis/ServersApi.http#placebuynowserver) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice
*ServersApi* | [**postServerReverseDns**](Apis/ServersApi.http#postserverreversedns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server's IPs
*ServersApi* | [**serverBulkIpmiPowerGet**](Apis/ServersApi.http#serverbulkipmipowerget) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call
*ServersApi* | [**serverIpmiLiveGet**](Apis/ServersApi.http#serveripmiliveget) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
*ServersApi* | [**serverIpmiLivePost**](Apis/ServersApi.http#serveripmilivepost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
*ServersApi* | [**serverIpmiPowerGet**](Apis/ServersApi.http#serveripmipowerget) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single)
*ServersApi* | [**serverIpmiPowerPost**](Apis/ServersApi.http#serveripmipowerpost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server
*ServersApi* | [**serversCancel**](Apis/ServersApi.http#serverscancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle
*ServersApi* | [**updateServerInfo**](Apis/ServersApi.http#updateserverinfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view)
*TicketsApi* | [**addNewTicket**](Apis/TicketsApi.http#addnewticket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
*TicketsApi* | [**closeTicket**](Apis/TicketsApi.http#closeticket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
*TicketsApi* | [**deleteTicketInfo**](Apis/TicketsApi.http#deleteticketinfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
*TicketsApi* | [**getNewTicket**](Apis/TicketsApi.http#getnewticket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
*TicketsApi* | [**getTicketInfo**](Apis/TicketsApi.http#getticketinfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
*TicketsApi* | [**getTicketsList**](Apis/TicketsApi.http#getticketslist) | **GET** /tickets | List the authenticated account's support tickets with status and date filters
*TicketsApi* | [**postTicketInfo**](Apis/TicketsApi.http#postticketinfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
*TicketsApi* | [**postTicketsList**](Apis/TicketsApi.http#postticketslist) | **POST** /tickets | Search the authenticated account's tickets by subject, email, or mask ID
*TicketsApi* | [**putTicketInfo**](Apis/TicketsApi.http#putticketinfo) | **PUT** /tickets/{id} | Update a ticket's properties such as subject or status (stub, not implemented)
*TicketsApi* | [**replyTicket**](Apis/TicketsApi.http#replyticket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
*TicketsApi* | [**updateTicketInfo**](Apis/TicketsApi.http#updateticketinfo) | **POST** /tickets/{id}/update | Update a ticket's custom field values (server-access details, etc.)
*VPSApi* | [**addVps**](Apis/VPSApi.http#addvps) | **POST** /vps/order | Place a new VPS order, create the invoice, and queue provisioning
*VPSApi* | [**deleteVpsBackup**](Apis/VPSApi.http#deletevpsbackup) | **DELETE** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible)
*VPSApi* | [**doVpsBlockSmtp**](Apis/VPSApi.http#dovpsblocksmtp) | **GET** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
*VPSApi* | [**doVpsDisableCd**](Apis/VPSApi.http#dovpsdisablecd) | **GET** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration
*VPSApi* | [**doVpsDisableQuota**](Apis/VPSApi.http#dovpsdisablequota) | **GET** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsEjectCd**](Apis/VPSApi.http#dovpsejectcd) | **GET** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
*VPSApi* | [**doVpsEnableQuota**](Apis/VPSApi.http#dovpsenablequota) | **GET** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS
*VPSApi* | [**doVpsRestart**](Apis/VPSApi.http#dovpsrestart) | **GET** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes
*VPSApi* | [**doVpsStart**](Apis/VPSApi.http#dovpsstart) | **GET** /vps/{id}/start | Power on a stopped VPS instance
*VPSApi* | [**doVpsStop**](Apis/VPSApi.http#dovpsstop) | **GET** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation
*VPSApi* | [**downloadVpsBackup**](Apis/VPSApi.http#downloadvpsbackup) | **PATCH** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
*VPSApi* | [**getNewVps**](Apis/VPSApi.http#getnewvps) | **GET** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing
*VPSApi* | [**getVpsBackup**](Apis/VPSApi.http#getvpsbackup) | **GET** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS
*VPSApi* | [**getVpsBackups**](Apis/VPSApi.http#getvpsbackups) | **GET** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS
*VPSApi* | [**getVpsBuyHdSpace**](Apis/VPSApi.http#getvpsbuyhdspace) | **GET** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS
*VPSApi* | [**getVpsBuyIp**](Apis/VPSApi.http#getvpsbuyip) | **GET** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS
*VPSApi* | [**getVpsChangeHostname**](Apis/VPSApi.http#getvpschangehostname) | **GET** /vps/{id}/change_hostname | Read the VPS's current hostname before changing it
*VPSApi* | [**getVpsChangeRootPassword**](Apis/VPSApi.http#getvpschangerootpassword) | **GET** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password
*VPSApi* | [**getVpsChangeTimezone**](Apis/VPSApi.http#getvpschangetimezone) | **GET** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS
*VPSApi* | [**getVpsInfo**](Apis/VPSApi.http#getvpsinfo) | **GET** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons
*VPSApi* | [**getVpsInsertCd**](Apis/VPSApi.http#getvpsinsertcd) | **GET** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive
*VPSApi* | [**getVpsInvoices**](Apis/VPSApi.http#getvpsinvoices) | **GET** /vps/{id}/invoices | List all billing invoices associated with this specific VPS
*VPSApi* | [**getVpsList**](Apis/VPSApi.http#getvpslist) | **GET** /vps | List all VPS services on the customer's account
*VPSApi* | [**getVpsReinstallOs**](Apis/VPSApi.http#getvpsreinstallos) | **GET** /vps/{id}/reinstall_os | List OS templates compatible with this VPS's hypervisor for reinstall
*VPSApi* | [**getVpsResetPassword**](Apis/VPSApi.http#getvpsresetpassword) | **GET** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value
*VPSApi* | [**getVpsReverseDns**](Apis/VPSApi.http#getvpsreversedns) | **GET** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS
*VPSApi* | [**getVpsSetupVnc**](Apis/VPSApi.http#getvpssetupvnc) | **GET** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS
*VPSApi* | [**getVpsSlices**](Apis/VPSApi.http#getvpsslices) | **GET** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost
*VPSApi* | [**getVpsTrafficUsage**](Apis/VPSApi.http#getvpstrafficusage) | **GET** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS
*VPSApi* | [**getVpsViewDesktop**](Apis/VPSApi.http#getvpsviewdesktop) | **GET** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
*VPSApi* | [**getVpsWelcomeEmail**](Apis/VPSApi.http#getvpswelcomeemail) | **GET** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials
*VPSApi* | [**postVpsBuyHdSpace**](Apis/VPSApi.http#postvpsbuyhdspace) | **POST** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice
*VPSApi* | [**postVpsBuyIp**](Apis/VPSApi.http#postvpsbuyip) | **POST** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice
*VPSApi* | [**postVpsChangeHostname**](Apis/VPSApi.http#postvpschangehostname) | **POST** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
*VPSApi* | [**postVpsChangeRootPassword**](Apis/VPSApi.http#postvpschangerootpassword) | **POST** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS
*VPSApi* | [**postVpsChangeTimezone**](Apis/VPSApi.http#postvpschangetimezone) | **POST** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS
*VPSApi* | [**postVpsChangeWebuzoPassword**](Apis/VPSApi.http#postvpschangewebuzopassword) | **POST** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required)
*VPSApi* | [**postVpsInsertCd**](Apis/VPSApi.http#postvpsinsertcd) | **POST** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL
*VPSApi* | [**postVpsReinstallOs**](Apis/VPSApi.http#postvpsreinstallos) | **POST** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
*VPSApi* | [**postVpsResetPassword**](Apis/VPSApi.http#postvpsresetpassword) | **POST** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value
*VPSApi* | [**postVpsRestore**](Apis/VPSApi.http#postvpsrestore) | **POST** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
*VPSApi* | [**postVpsReverseDns**](Apis/VPSApi.http#postvpsreversedns) | **POST** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
*VPSApi* | [**postVpsSetupVnc**](Apis/VPSApi.http#postvpssetupvnc) | **POST** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS
*VPSApi* | [**postVpsSlices**](Apis/VPSApi.http#postvpsslices) | **POST** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
*VPSApi* | [**postVpsTrafficUsage**](Apis/VPSApi.http#postvpstrafficusage) | **POST** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved)
*VPSApi* | [**postVpsViewDesktop**](Apis/VPSApi.http#postvpsviewdesktop) | **POST** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes
*VPSApi* | [**putVps**](Apis/VPSApi.http#putvps) | **PUT** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge
*VPSApi* | [**putVpsBuyHdSpace**](Apis/VPSApi.http#putvpsbuyhdspace) | **PUT** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run
*VPSApi* | [**updateVpsInfo**](Apis/VPSApi.http#updatevpsinfo) | **POST** /vps/{id} | Update editable settings on a VPS service record
*VPSApi* | [**vPSCancel**](Apis/VPSApi.http#vpscancel) | **DELETE** /vps/{id} | Cancel a VPS service at the end of the current billing cycle
*WebhostingApi* | [**addWebsite**](Apis/WebhostingApi.http#addwebsite) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning
*WebhostingApi* | [**getNewWebsite**](Apis/WebhostingApi.http#getnewwebsite) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing
*WebhostingApi* | [**getWebsiteBuyIp**](Apis/WebhostingApi.http#getwebsitebuyip) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing
*WebhostingApi* | [**getWebsiteInfo**](Apis/WebhostingApi.http#getwebsiteinfo) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service
*WebhostingApi* | [**getWebsiteInvoices**](Apis/WebhostingApi.http#getwebsiteinvoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website
*WebhostingApi* | [**getWebsiteList**](Apis/WebhostingApi.http#getwebsitelist) | **GET** /websites | List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
*WebhostingApi* | [**getWebsitesBackups**](Apis/WebhostingApi.http#getwebsitesbackups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive
*WebhostingApi* | [**getWebsitesLogin**](Apis/WebhostingApi.http#getwebsiteslogin) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website's control panel
*WebhostingApi* | [**getWebsitesWelcomeEmail**](Apis/WebhostingApi.http#getwebsiteswelcomeemail) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL
*WebhostingApi* | [**gettWebsiteReverseDns**](Apis/WebhostingApi.http#gettwebsitereversedns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website's IPs
*WebhostingApi* | [**postWebsiteBuyIp**](Apis/WebhostingApi.http#postwebsitebuyip) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records
*WebhostingApi* | [**postWebsiteMigration**](Apis/WebhostingApi.http#postwebsitemigration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host
*WebhostingApi* | [**postWebsitesReverseDns**](Apis/WebhostingApi.http#postwebsitesreversedns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs
*WebhostingApi* | [**putWebsites**](Apis/WebhostingApi.http#putwebsites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge
*WebhostingApi* | [**updateWebsiteInfo**](Apis/WebhostingApi.http#updatewebsiteinfo) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible)
*WebhostingApi* | [**webhostingCancel**](Apis/WebhostingApi.http#webhostingcancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end


## Usage

### Prerequisites

You need [IntelliJ](https://www.jetbrains.com/idea/) to be able to run those queries. More information can be found [here](https://www.jetbrains.com/help/idea/http-client-in-product-code-editor.html).
You may have some luck running queries using the [Code REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) as well, but your mileage may vary.

### Variables and Environment files

* Generally speaking, you want queries to be specific using custom variables. All variables in the `.http` files have the `` format.
* You can create [public or private environment files](https://www.jetbrains.com/help/idea/exploring-http-syntax.html#environment-variables) to dynamically replace the variables at runtime.

_Note: don't commit private environment files! They typically will contain sensitive information like API Keys._

### Customizations

If you have control over the generation of the files here, there are two main things you can do

* Select elements to replace as variables during generation. The process is case-sensitive. For example, API_KEY -> 
    * For this, run the generation with the `bodyVariables` property, followed by a "-" separated list of variables
    * Example: `--additional-properties bodyVariables=YOUR_MERCHANT_ACCOUNT-YOUR_COMPANY_ACCOUNT-YOUR_BALANCE_PLATFORM`
* Add custom headers to _all_ requests. This can be useful for example if your specifications are missing [security schemes](https://github.com/github/rest-api-description/issues/237).
    * For this, run the generation with the `customHeaders` property, followed by a "&" separated list of variables
    * Example : `--additional-properties=customHeaders="Cookie:X-API-KEY="&"Accept-Encoding=gzip"`

_This client was generated by the [jetbrains-http-client](https://openapi-generator.tech/docs/generators/jetbrains-http-client) generator of OpenAPI Generator_