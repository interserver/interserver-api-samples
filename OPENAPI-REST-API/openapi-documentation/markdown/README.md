# Documentation for InterServer Management API

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://my.interserver.net/apiv2*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *AccountApi* | [**deleteAccountOauthName**](Apis/AccountApi.md#deleteAccountOauthName) | **DELETE** /account/oauth/{name} | Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account |
*AccountApi* | [**deleteAccountTfa**](Apis/AccountApi.md#deleteAccountTfa) | **DELETE** /account/2fa | Disable two-factor authentication and remove the TOTP secret |
*AccountApi* | [**deleteIpLimit**](Apis/AccountApi.md#deleteIpLimit) | **PATCH** /account/iplimits | Remove one IP range from the account allow-list (PATCH on /account/iplimits) |
*AccountApi* | [**getAccountInfo**](Apis/AccountApi.md#getAccountInfo) | **GET** /account | Read full account profile, billing address, and security settings |
*AccountApi* | [**getAccountTfaSetup**](Apis/AccountApi.md#getAccountTfaSetup) | **GET** /account/2fa | Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.) |
*AccountApi* | [**getHome**](Apis/AccountApi.md#getHome) | **GET** /home | Aggregate dashboard payload — service counts, recent activity, alerts |
*AccountApi* | [**getSearch**](Apis/AccountApi.md#getSearch) | **GET** /search | Global autocomplete across the caller's services, domains, and records |
*AccountApi* | [**logout**](Apis/AccountApi.md#logout) | **GET** /logout | Destroy the current API/web session — token becomes unusable |
*AccountApi* | [**logoutAccountOauth**](Apis/AccountApi.md#logoutAccountOauth) | **GET** /account/oauth/{name}/logout | Sign out of the upstream OAuth provider session (does not unlink the account) |
*AccountApi* | [**updateAccountApiKey**](Apis/AccountApi.md#updateAccountApiKey) | **POST** /account/apikey | Rotate the account's REST/MCP API key — old key is invalidated immediately |
*AccountApi* | [**updateAccountFeatures**](Apis/AccountApi.md#updateAccountFeatures) | **POST** /account/features | Toggle account-wide safety locks for password reset and OS reinstall |
*AccountApi* | [**updateAccountInfo**](Apis/AccountApi.md#updateAccountInfo) | **POST** /account | Update contact and billing-address fields on the customer profile |
*AccountApi* | [**updateAccountIpLimits**](Apis/AccountApi.md#updateAccountIpLimits) | **POST** /account/iplimits | Add an IP CIDR/range to the account's API+web allow-list (lockout-safe) |
*AccountApi* | [**updateAccountPassword**](Apis/AccountApi.md#updateAccountPassword) | **POST** /account/password | Change the account login password (verifies current, kills other sessions) |
*AccountApi* | [**updateAccountSshKey**](Apis/AccountApi.md#updateAccountSshKey) | **POST** /account/sshkey | Set the account-level SSH public key auto-installed on new VPS/dedicated orders |
*AccountApi* | [**updateAccountTfa**](Apis/AccountApi.md#updateAccountTfa) | **POST** /account/2fa | Verify TOTP code and enable two-factor authentication on the account |
| *BackupsApi* | [**addBackup**](Apis/BackupsApi.md#addBackup) | **POST** /backups/order | Place a new off-site backup storage order and generate the invoice |
*BackupsApi* | [**cancelBackup**](Apis/BackupsApi.md#cancelBackup) | **DELETE** /backups/{id} | Cancel an off-site backup storage subscription |
*BackupsApi* | [**getBackupInfo**](Apis/BackupsApi.md#getBackupInfo) | **GET** /backups/{id} | Get details of a specific off-site backup storage service |
*BackupsApi* | [**getBackupInvoices**](Apis/BackupsApi.md#getBackupInvoices) | **GET** /backups/{id}/invoices | List invoices for a single backup-storage subscription |
*BackupsApi* | [**getBackupLogin**](Apis/BackupsApi.md#getBackupLogin) | **GET** /backups/{id}/login | Open a single sign-on session URL for the backup storage panel |
*BackupsApi* | [**getBackupsList**](Apis/BackupsApi.md#getBackupsList) | **GET** /backups | List off-site backup storage subscriptions on the authenticated account |
*BackupsApi* | [**getBackupsWelcomeEmail**](Apis/BackupsApi.md#getBackupsWelcomeEmail) | **GET** /backups/{id}/welcome_email | Resend the welcome email for an off-site backup storage service |
*BackupsApi* | [**getNewBackup**](Apis/BackupsApi.md#getNewBackup) | **GET** /backups/order | Get backup-storage order form metadata and pricing tiers |
*BackupsApi* | [**updateBackupInfo**](Apis/BackupsApi.md#updateBackupInfo) | **POST** /backups/{id} | Update stored metadata for a backup-storage subscription |
*BackupsApi* | [**validateBackupOrder**](Apis/BackupsApi.md#validateBackupOrder) | **PUT** /backups/order | Validate a backup-storage order and preview pricing without charging |
| *BillingApi* | [**addBillingCreditCard**](Apis/BillingApi.md#addBillingCreditCard) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow |
*BillingApi* | [**addBillingPrepay**](Apis/BillingApi.md#addBillingPrepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it |
*BillingApi* | [**deleteBillingCreditCard**](Apis/BillingApi.md#deleteBillingCreditCard) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account |
*BillingApi* | [**deleteBillingInvoice**](Apis/BillingApi.md#deleteBillingInvoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice |
*BillingApi* | [**deleteBillingPrepay**](Apis/BillingApi.md#deleteBillingPrepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices |
*BillingApi* | [**getAffiliateBanners**](Apis/BillingApi.md#getAffiliateBanners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions |
*BillingApi* | [**getAffiliateDownload**](Apis/BillingApi.md#getAffiliateDownload) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download |
*BillingApi* | [**getAffiliateRichReport**](Apis/BillingApi.md#getAffiliateRichReport) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload) |
*BillingApi* | [**getAffiliateSalesGraph**](Apis/BillingApi.md#getAffiliateSalesGraph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering |
*BillingApi* | [**getAffiliateSignups**](Apis/BillingApi.md#getAffiliateSignups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data |
*BillingApi* | [**getAffiliateTrafficGraph**](Apis/BillingApi.md#getAffiliateTrafficGraph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering |
*BillingApi* | [**getAffiliateWebTraffic**](Apis/BillingApi.md#getAffiliateWebTraffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp |
*BillingApi* | [**getBillingCart**](Apis/BillingApi.md#getBillingCart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods |
*BillingApi* | [**getBillingCreditCardVerify**](Apis/BillingApi.md#getBillingCreditCardVerify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification |
*BillingApi* | [**getBillingInvoice**](Apis/BillingApi.md#getBillingInvoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info |
*BillingApi* | [**getBillingInvoices**](Apis/BillingApi.md#getBillingInvoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status |
*BillingApi* | [**getBillingPrePays**](Apis/BillingApi.md#getBillingPrePays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags |
*BillingApi* | [**initiatePayment**](Apis/BillingApi.md#initiatePayment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action |
*BillingApi* | [**patchBillingCreditCardVerify**](Apis/BillingApi.md#patchBillingCreditCardVerify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2) |
*BillingApi* | [**postBillingCreditCardVerify**](Apis/BillingApi.md#postBillingCreditCardVerify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2) |
*BillingApi* | [**updateAffiliateDockSetup**](Apis/BillingApi.md#updateAffiliateDockSetup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon |
*BillingApi* | [**updateAffiliatePaymentSetup**](Apis/BillingApi.md#updateAffiliatePaymentSetup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay) |
*BillingApi* | [**updateBillingCreditCard**](Apis/BillingApi.md#updateBillingCreditCard) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring |
*BillingApi* | [**updateBillingPaymentMethod**](Apis/BillingApi.md#updateBillingPaymentMethod) | **POST** /billing/payment_method | Set the account's default payment method for recurring/auto charges |
| *DNSApi* | [**addDnsDomain**](Apis/DNSApi.md#addDnsDomain) | **POST** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records |
*DNSApi* | [**addDnsRecord**](Apis/DNSApi.md#addDnsRecord) | **POST** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone |
*DNSApi* | [**deleteDnsDomain**](Apis/DNSApi.md#deleteDnsDomain) | **DELETE** /dns/{id} | Permanently delete a DNS zone and every record it contains |
*DNSApi* | [**deleteDnsRecord**](Apis/DNSApi.md#deleteDnsRecord) | **DELETE** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved |
*DNSApi* | [**getDnsDomain**](Apis/DNSApi.md#getDnsDomain) | **GET** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them |
*DNSApi* | [**getDnsList**](Apis/DNSApi.md#getDnsList) | **GET** /dns | List DNS zones hosted on the account with each zone's apex A-record IP |
*DNSApi* | [**updateDnsRecord**](Apis/DNSApi.md#updateDnsRecord) | **POST** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority) |
| *DomainsApi* | [**addDomain**](Apis/DomainsApi.md#addDomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice |
*DomainsApi* | [**addDomainDnssec**](Apis/DomainsApi.md#addDomainDnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS |
*DomainsApi* | [**addDomainNameserver**](Apis/DomainsApi.md#addDomainNameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver) |
*DomainsApi* | [**cancelDomain**](Apis/DomainsApi.md#cancelDomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals |
*DomainsApi* | [**deleteDomainDnssec**](Apis/DomainsApi.md#deleteDomainDnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar) |
*DomainsApi* | [**deleteDomainNameserver**](Apis/DomainsApi.md#deleteDomainNameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain |
*DomainsApi* | [**getDomainContact**](Apis/DomainsApi.md#getDomainContact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain |
*DomainsApi* | [**getDomainDnssec**](Apis/DomainsApi.md#getDomainDnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar |
*DomainsApi* | [**getDomainInfo**](Apis/DomainsApi.md#getDomainInfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain |
*DomainsApi* | [**getDomainInvoices**](Apis/DomainsApi.md#getDomainInvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order |
*DomainsApi* | [**getDomainLookup**](Apis/DomainsApi.md#getDomainLookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain |
*DomainsApi* | [**getDomainNameservers**](Apis/DomainsApi.md#getDomainNameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain |
*DomainsApi* | [**getDomainRenewal**](Apis/DomainsApi.md#getDomainRenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists |
*DomainsApi* | [**getDomainSearch**](Apis/DomainsApi.md#getDomainSearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term |
*DomainsApi* | [**getDomainTransfer**](Apis/DomainsApi.md#getDomainTransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order |
*DomainsApi* | [**getDomainWhoisPrivacy**](Apis/DomainsApi.md#getDomainWhoisPrivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain |
*DomainsApi* | [**getDomainsList**](Apis/DomainsApi.md#getDomainsList) | **GET** /domains | List every domain registration on the account with billing and registration metadata |
*DomainsApi* | [**getDomainsWelcomeEmail**](Apis/DomainsApi.md#getDomainsWelcomeEmail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions |
*DomainsApi* | [**getNewDomain**](Apis/DomainsApi.md#getNewDomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing |
*DomainsApi* | [**patchDomains**](Apis/DomainsApi.md#patchDomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run |
*DomainsApi* | [**postDomainRenewal**](Apis/DomainsApi.md#postDomainRenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice |
*DomainsApi* | [**postDomainSearch**](Apis/DomainsApi.md#postDomainSearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview) |
*DomainsApi* | [**postDomainTransfer**](Apis/DomainsApi.md#postDomainTransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST |
*DomainsApi* | [**putDomains**](Apis/DomainsApi.md#putDomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit |
*DomainsApi* | [**updateDomainContact**](Apis/DomainsApi.md#updateDomainContact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS |
*DomainsApi* | [**updateDomainInfo**](Apis/DomainsApi.md#updateDomainInfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible) |
*DomainsApi* | [**updateDomainNameservers**](Apis/DomainsApi.md#updateDomainNameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar |
*DomainsApi* | [**updateDomainWhoisPrivacy**](Apis/DomainsApi.md#updateDomainWhoisPrivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain |
| *FloatingIPsApi* | [**addFloatingIp**](Apis/FloatingIPsApi.md#addFloatingIp) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service |
*FloatingIPsApi* | [**floatingIpsCancel**](Apis/FloatingIPsApi.md#floatingIpsCancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops |
*FloatingIPsApi* | [**getFloatingIpInfo**](Apis/FloatingIPsApi.md#getFloatingIpInfo) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP |
*FloatingIPsApi* | [**getFloatingIpInvoices**](Apis/FloatingIPsApi.md#getFloatingIpInvoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service |
*FloatingIPsApi* | [**getFloatingIpsList**](Apis/FloatingIPsApi.md#getFloatingIpsList) | **GET** /floating_ips | List all Floating IP services on the authenticated customer's account |
*FloatingIPsApi* | [**getFloatingIpsWelcomeEmail**](Apis/FloatingIPsApi.md#getFloatingIpsWelcomeEmail) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact |
*FloatingIPsApi* | [**getNewFloatingIp**](Apis/FloatingIPsApi.md#getNewFloatingIp) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP |
*FloatingIPsApi* | [**postFloatingIpsChangeIp**](Apis/FloatingIPsApi.md#postFloatingIpsChangeIp) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer's services |
*FloatingIPsApi* | [**putFloatingIps**](Apis/FloatingIPsApi.md#putFloatingIps) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer |
*FloatingIPsApi* | [**updateFloatingIpInfo**](Apis/FloatingIPsApi.md#updateFloatingIpInfo) | **POST** /floating_ips/{id} | Update a Floating IP service's editable settings (label / metadata) |
| *LicensesApi* | [**addLicense**](Apis/LicensesApi.md#addLicense) | **POST** /licenses/order | Order a new software license and create the recurring invoice |
*LicensesApi* | [**getLicenseInfo**](Apis/LicensesApi.md#getLicenseInfo) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links |
*LicensesApi* | [**getLicenseInvoices**](Apis/LicensesApi.md#getLicenseInvoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service |
*LicensesApi* | [**getLicenseList**](Apis/LicensesApi.md#getLicenseList) | **GET** /licenses | List all software licenses owned by the authenticated customer |
*LicensesApi* | [**getLicensesWelcomeEmail**](Apis/LicensesApi.md#getLicensesWelcomeEmail) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps |
*LicensesApi* | [**getNewLicense**](Apis/LicensesApi.md#getNewLicense) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering |
*LicensesApi* | [**licensesCancel**](Apis/LicensesApi.md#licensesCancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible) |
*LicensesApi* | [**postLicenseChangeIp**](Apis/LicensesApi.md#postLicenseChangeIp) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee) |
*LicensesApi* | [**putLicenses**](Apis/LicensesApi.md#putLicenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview) |
*LicensesApi* | [**updateLicenseInfo**](Apis/LicensesApi.md#updateLicenseInfo) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP) |
| *MailApi* | [**addMail**](Apis/MailApi.md#addMail) | **POST** /mail/order | Place a new Mail Baby order, generate invoice, and queue provisioning |
*MailApi* | [**addRule**](Apis/MailApi.md#addRule) | **POST** /mail/{id}/rules | Create a new deny rule to auto-block matching submissions |
*MailApi* | [**createMailAlert**](Apis/MailApi.md#createMailAlert) | **POST** /mail/{id}/alerts | Create a new Mail Baby alert for delivery, bounce, or quota events |
*MailApi* | [**deleteMailAlert**](Apis/MailApi.md#deleteMailAlert) | **DELETE** /mail/{id}/alerts | Delete a Mail Baby alert by alert_id (hard delete — no recovery) |
*MailApi* | [**deleteRule**](Apis/MailApi.md#deleteRule) | **DELETE** /mail/{id}/rules/{rule} | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery) |
*MailApi* | [**delistBlock**](Apis/MailApi.md#delistBlock) | **POST** /mail/{id}/blocks/delete | Delist a sender email from rspamd / mailchannels / mailbaby block lists |
*MailApi* | [**getMailAlerts**](Apis/MailApi.md#getMailAlerts) | **GET** /mail/{id}/alerts | List configured delivery/bounce/quota alerts for one Mail Baby service |
*MailApi* | [**getMailBlocks**](Apis/MailApi.md#getMailBlocks) | **GET** /mail/{id}/blocks | List recent local-blocklist hits and spam-trap captures for the mail user |
*MailApi* | [**getMailDelist**](Apis/MailApi.md#getMailDelist) | **GET** /mail/{id}/delist | Read blocklist diagnostics and find senders eligible for delisting |
*MailApi* | [**getMailDeliverability**](Apis/MailApi.md#getMailDeliverability) | **GET** /mail/{id}/deliverability | Read delivered vs bounced totals broken down by sender (or by recipient domain) |
*MailApi* | [**getMailInfo**](Apis/MailApi.md#getMailInfo) | **GET** /mail/{id} | Read full detail for one Mail Baby service including SMTP credentials |
*MailApi* | [**getMailInvoices**](Apis/MailApi.md#getMailInvoices) | **GET** /mail/{id}/invoices | List billing invoices linked to this Mail Baby service |
*MailApi* | [**getMailList**](Apis/MailApi.md#getMailList) | **GET** /mail | List every Mail Baby SMTP relay service on the account |
*MailApi* | [**getMailWelcomeEmail**](Apis/MailApi.md#getMailWelcomeEmail) | **GET** /mail/{id}/welcome_email | Resend the Mail Baby welcome email with SMTP credentials and setup info |
*MailApi* | [**getNewMail**](Apis/MailApi.md#getNewMail) | **GET** /mail/order | Read the Mail Baby order catalog — plans, package costs, service-type metadata |
*MailApi* | [**getRules**](Apis/MailApi.md#getRules) | **GET** /mail/{id}/rules | List configured deny rules (sender/recipient blocks) for a Mail Baby service |
*MailApi* | [**getStats**](Apis/MailApi.md#getStats) | **GET** /mail/{id}/stats | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost |
*MailApi* | [**mailCancel**](Apis/MailApi.md#mailCancel) | **DELETE** /mail/{id} | Cancel a Mail Baby service and stop the recurring invoice |
*MailApi* | [**postMailDelist**](Apis/MailApi.md#postMailDelist) | **POST** /mail/{id}/delist | Delist a sender from rspamd / mailchannels / mailbaby block lists |
*MailApi* | [**putMail**](Apis/MailApi.md#putMail) | **PUT** /mail/order | Validate Mail Baby order, quote pricing, and verify coupon — no charge |
*MailApi* | [**resetMailPassword**](Apis/MailApi.md#resetMailPassword) | **GET** /mail/{id}/reset_password | Rotate the SMTP password and email the new credential to the account owner |
*MailApi* | [**sendAdvMail**](Apis/MailApi.md#sendAdvMail) | **POST** /mail/{id}/advsend | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient |
*MailApi* | [**sendMail**](Apis/MailApi.md#sendMail) | **POST** /mail/{id}/send | Send a simple single-recipient email through the Mail Baby SMTP relay |
*MailApi* | [**updateMailAlert**](Apis/MailApi.md#updateMailAlert) | **PUT** /mail/{id}/alerts | Update an existing Mail Baby alert by alert_id |
*MailApi* | [**updateMailInfo**](Apis/MailApi.md#updateMailInfo) | **POST** /mail/{id} | POST mutation hook for the Mail Baby service detail page |
*MailApi* | [**updateRule**](Apis/MailApi.md#updateRule) | **PUT** /mail/{id}/rules/{rule} | Update an existing Mail Baby deny rule's type and match data |
*MailApi* | [**viewMailLog**](Apis/MailApi.md#viewMailLog) | **GET** /mail/{id}/log | Search and paginate per-message Mail Baby delivery log entries |
| *PublicApi* | [**getAccountCurrencies**](Apis/PublicApi.md#getAccountCurrencies) | **GET** /account/currencies | List enabled currency codes accepted for billing and preferences |
*PublicApi* | [**getAccountLocales**](Apis/PublicApi.md#getAccountLocales) | **GET** /account/locales | List supported UI locales with English and native display names |
*PublicApi* | [**getCaptcha**](Apis/PublicApi.md#getCaptcha) | **GET** /captcha | Fetch a base64 JPEG captcha challenge for human verification |
*PublicApi* | [**getCountries**](Apis/PublicApi.md#getCountries) | **GET** /account/countries | List enabled countries keyed by ISO-2/ISO-3/numeric code |
*PublicApi* | [**getInfo**](Apis/PublicApi.md#getInfo) | **GET** /info | Discover available modules, service packages, categories, and types |
*PublicApi* | [**getLoginInfo**](Apis/PublicApi.md#getLoginInfo) | **GET** /login | Fetch logo, captcha, language, and stats for rendering a login page |
*PublicApi* | [**getMPServers**](Apis/PublicApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing |
*PublicApi* | [**getOauthRedirect**](Apis/PublicApi.md#getOauthRedirect) | **GET** /oauth | Begin OAuth login flow — redirect user to provider for authentication |
*PublicApi* | [**getTimezones**](Apis/PublicApi.md#getTimezones) | **GET** /account/timezones | List all PHP timezone identifiers usable on accounts and services |
*PublicApi* | [**patchOauthTwoFactor**](Apis/PublicApi.md#patchOauthTwoFactor) | **PATCH** /oauth | Submit 2FA code to finish OAuth login when account has 2FA enabled |
*PublicApi* | [**pingServer**](Apis/PublicApi.md#pingServer) | **GET** /ping | Liveness check — returns the JSON string \"pong\" to confirm API is up |
*PublicApi* | [**postOauthCallback**](Apis/PublicApi.md#postOauthCallback) | **POST** /oauth | Complete OAuth login by linking provider to existing or new account |
*PublicApi* | [**submitLogin**](Apis/PublicApi.md#submitLogin) | **POST** /login | Authenticate with email + password and return a session token |
*PublicApi* | [**submitSignup**](Apis/PublicApi.md#submitSignup) | **POST** /signup | Create a new customer account (email + password + captcha + ToS) |
| *QuickServersApi* | [**addQs**](Apis/QuickServersApi.md#addQs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning |
*QuickServersApi* | [**deleteQsBackup**](Apis/QuickServersApi.md#deleteQsBackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage |
*QuickServersApi* | [**doQsBlockSmtp**](Apis/QuickServersApi.md#doQsBlockSmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse |
*QuickServersApi* | [**doQsDisableCd**](Apis/QuickServersApi.md#doQsDisableCd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer |
*QuickServersApi* | [**doQsDisableQuota**](Apis/QuickServersApi.md#doQsDisableQuota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer |
*QuickServersApi* | [**doQsEjectCd**](Apis/QuickServersApi.md#doQsEjectCd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer's virtual CD drive |
*QuickServersApi* | [**doQsEnableQuota**](Apis/QuickServersApi.md#doQsEnableQuota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer |
*QuickServersApi* | [**doQsRestart**](Apis/QuickServersApi.md#doQsRestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart |
*QuickServersApi* | [**doQsStart**](Apis/QuickServersApi.md#doQsStart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot |
*QuickServersApi* | [**doQsStop**](Apis/QuickServersApi.md#doQsStop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command |
*QuickServersApi* | [**downloadQsBackup**](Apis/QuickServersApi.md#downloadQsBackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup |
*QuickServersApi* | [**getNewQs**](Apis/QuickServersApi.md#getNewQs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates |
*QuickServersApi* | [**getQsBackup**](Apis/QuickServersApi.md#getQsBackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job) |
*QuickServersApi* | [**getQsBackups**](Apis/QuickServersApi.md#getQsBackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage |
*QuickServersApi* | [**getQsChangeHostname**](Apis/QuickServersApi.md#getQsChangeHostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support |
*QuickServersApi* | [**getQsChangeRootPassword**](Apis/QuickServersApi.md#getQsChangeRootPassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements |
*QuickServersApi* | [**getQsChangeTimezone**](Apis/QuickServersApi.md#getQsChangeTimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone |
*QuickServersApi* | [**getQsChangeWebuzoPassword**](Apis/QuickServersApi.md#getQsChangeWebuzoPassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password |
*QuickServersApi* | [**getQsInfo**](Apis/QuickServersApi.md#getQsInfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links |
*QuickServersApi* | [**getQsInsertCd**](Apis/QuickServersApi.md#getQsInsertCd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer's virtual CD |
*QuickServersApi* | [**getQsInvoices**](Apis/QuickServersApi.md#getQsInvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service |
*QuickServersApi* | [**getQsList**](Apis/QuickServersApi.md#getQsList) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account |
*QuickServersApi* | [**getQsReinstallOs**](Apis/QuickServersApi.md#getQsReinstallOs) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall |
*QuickServersApi* | [**getQsResetPassword**](Apis/QuickServersApi.md#getQsResetPassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset |
*QuickServersApi* | [**getQsReverseDns**](Apis/QuickServersApi.md#getQsReverseDns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer's IPs |
*QuickServersApi* | [**getQsSetupVnc**](Apis/QuickServersApi.md#getQsSetupVnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer |
*QuickServersApi* | [**getQsTrafficUsage**](Apis/QuickServersApi.md#getQsTrafficUsage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer's current billing period |
*QuickServersApi* | [**getQsViewDesktop**](Apis/QuickServersApi.md#getQsViewDesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format) |
*QuickServersApi* | [**getQsWelcomeEmail**](Apis/QuickServersApi.md#getQsWelcomeEmail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials |
*QuickServersApi* | [**postQsChangeHostname**](Apis/QuickServersApi.md#postQsChangeHostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer's system hostname (OpenVZ/Virtuozzo only) |
*QuickServersApi* | [**postQsChangeRootPassword**](Apis/QuickServersApi.md#postQsChangeRootPassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value |
*QuickServersApi* | [**postQsChangeTimezone**](Apis/QuickServersApi.md#postQsChangeTimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry |
*QuickServersApi* | [**postQsChangeWebuzoPassword**](Apis/QuickServersApi.md#postQsChangeWebuzoPassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued) |
*QuickServersApi* | [**postQsInsertCd**](Apis/QuickServersApi.md#postQsInsertCd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer's virtual CD via URL |
*QuickServersApi* | [**postQsReinstallOs**](Apis/QuickServersApi.md#postQsReinstallOs) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk) |
*QuickServersApi* | [**postQsResetPassword**](Apis/QuickServersApi.md#postQsResetPassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value |
*QuickServersApi* | [**postQsReverseDns**](Apis/QuickServersApi.md#postQsReverseDns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer's IPs |
*QuickServersApi* | [**postQsSetupVnc**](Apis/QuickServersApi.md#postQsSetupVnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer's VNC console |
*QuickServersApi* | [**postQsTrafficUsage**](Apis/QuickServersApi.md#postQsTrafficUsage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant) |
*QuickServersApi* | [**postQsViewDesktop**](Apis/QuickServersApi.md#postQsViewDesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload |
*QuickServersApi* | [**postQuickServerRestore**](Apis/QuickServersApi.md#postQuickServerRestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk) |
*QuickServersApi* | [**putQs**](Apis/QuickServersApi.md#putQs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning |
*QuickServersApi* | [**quickserversCancel**](Apis/QuickServersApi.md#quickserversCancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle |
*QuickServersApi* | [**updateQsInfo**](Apis/QuickServersApi.md#updateQsInfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact |
| *SSLCertificatesApi* | [**addSsl**](Apis/SSLCertificatesApi.md#addSsl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance |
*SSLCertificatesApi* | [**getNewSsl**](Apis/SSLCertificatesApi.md#getNewSsl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order |
*SSLCertificatesApi* | [**getSslInfo**](Apis/SSLCertificatesApi.md#getSslInfo) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links |
*SSLCertificatesApi* | [**getSslInvoices**](Apis/SSLCertificatesApi.md#getSslInvoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id |
*SSLCertificatesApi* | [**getSslList**](Apis/SSLCertificatesApi.md#getSslList) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname |
*SSLCertificatesApi* | [**getSslWelcomeEmail**](Apis/SSLCertificatesApi.md#getSslWelcomeEmail) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions |
*SSLCertificatesApi* | [**putSsl**](Apis/SSLCertificatesApi.md#putSsl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl |
*SSLCertificatesApi* | [**sslCancel**](Apis/SSLCertificatesApi.md#sslCancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle |
*SSLCertificatesApi* | [**updateSslInfo**](Apis/SSLCertificatesApi.md#updateSslInfo) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id |
| *ScrubIpsApi* | [**cancelScrubIp**](Apis/ScrubIpsApi.md#cancelScrubIp) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing |
*ScrubIpsApi* | [**createFilter**](Apis/ScrubIpsApi.md#createFilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port |
*ScrubIpsApi* | [**createGeoRule**](Apis/ScrubIpsApi.md#createGeoRule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN) |
*ScrubIpsApi* | [**createRule**](Apis/ScrubIpsApi.md#createRule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol) |
*ScrubIpsApi* | [**deleteFilter**](Apis/ScrubIpsApi.md#deleteFilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port |
*ScrubIpsApi* | [**disableScrub**](Apis/ScrubIpsApi.md#disableScrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP |
*ScrubIpsApi* | [**enableScrub**](Apis/ScrubIpsApi.md#enableScrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service's protected IP |
*ScrubIpsApi* | [**getOrderDetail**](Apis/ScrubIpsApi.md#getOrderDetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order |
*ScrubIpsApi* | [**getScrubIpDetails**](Apis/ScrubIpsApi.md#getScrubIpDetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters) |
*ScrubIpsApi* | [**getScrubIpFilterTypes**](Apis/ScrubIpsApi.md#getScrubIpFilterTypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter |
*ScrubIpsApi* | [**getScrubIpInvoices**](Apis/ScrubIpsApi.md#getScrubIpInvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service |
*ScrubIpsApi* | [**getScrubIpLogs**](Apis/ScrubIpsApi.md#getScrubIpLogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP |
*ScrubIpsApi* | [**getScrubIpsList**](Apis/ScrubIpsApi.md#getScrubIpsList) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account |
*ScrubIpsApi* | [**placeScrubOrder**](Apis/ScrubIpsApi.md#placeScrubOrder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice |
*ScrubIpsApi* | [**putScrubIps**](Apis/ScrubIpsApi.md#putScrubIps) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing |
*ScrubIpsApi* | [**scrubIpsDeleteGeoRule**](Apis/ScrubIpsApi.md#scrubIpsDeleteGeoRule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails |
*ScrubIpsApi* | [**scrubIpsDeleteRule**](Apis/ScrubIpsApi.md#scrubIpsDeleteRule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails |
| *ServersApi* | [**addServer**](Apis/ServersApi.md#addServer) | **POST** /servers/order | Place a custom dedicated server order, creating a real billable invoice |
*ServersApi* | [**buyItNowServerOrder**](Apis/ServersApi.md#buyItNowServerOrder) | **GET** /servers/order/buy_now_server | Get configurable options for a Rapid Deploy / coupon dedicated server |
*ServersApi* | [**getMPServers**](Apis/ServersApi.md#getMPServers) | **GET** /buy_now_servers_list | List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing |
*ServersApi* | [**getNewServer**](Apis/ServersApi.md#getNewServer) | **GET** /servers/order | Get custom dedicated server ordering options, regions, and pricing |
*ServersApi* | [**getServerInfo**](Apis/ServersApi.md#getServerInfo) | **GET** /servers/{id} | Get full hardware, network, and lifecycle details for a dedicated server |
*ServersApi* | [**getServerInvoices**](Apis/ServersApi.md#getServerInvoices) | **GET** /servers/{id}/invoices | List billing invoices (charges + payments) tied to one dedicated server |
*ServersApi* | [**getServerList**](Apis/ServersApi.md#getServerList) | **GET** /servers | List all dedicated servers owned by the authenticated customer |
*ServersApi* | [**getServerReverseDns**](Apis/ServersApi.md#getServerReverseDns) | **GET** /servers/{id}/reverse_dns | List current reverse-DNS (PTR) records for a dedicated server's IPs |
*ServersApi* | [**getServersWelcomeEmail**](Apis/ServersApi.md#getServersWelcomeEmail) | **GET** /servers/{id}/welcome_email | Resend the dedicated server welcome email with setup credentials |
*ServersApi* | [**placeBuyNowServer**](Apis/ServersApi.md#placeBuyNowServer) | **POST** /servers/order/buy_now_server | Place a Rapid Deploy / coupon dedicated server order; creates real invoice |
*ServersApi* | [**postServerReverseDns**](Apis/ServersApi.md#postServerReverseDns) | **POST** /servers/{id}/reverse_dns | Update reverse-DNS (PTR) hostnames on a dedicated server's IPs |
*ServersApi* | [**serverBulkIpmiPowerGet**](Apis/ServersApi.md#serverBulkIpmiPowerGet) | **GET** /servers/bulk/ipmi_power | Read IPMI chassis power status for many dedicated servers in one call |
*ServersApi* | [**serverIpmiLiveGet**](Apis/ServersApi.md#serverIpmiLiveGet) | **GET** /servers/{id}/ipmi_live | Read current IPMI Live whitelist + KVM gateway URL for a dedicated server |
*ServersApi* | [**serverIpmiLivePost**](Apis/ServersApi.md#serverIpmiLivePost) | **POST** /servers/{id}/ipmi_live | Whitelist an IP for IPMI Live KVM gateway access (3-hour lease) |
*ServersApi* | [**serverIpmiPowerGet**](Apis/ServersApi.md#serverIpmiPowerGet) | **GET** /servers/{id}/ipmi_power | Read IPMI chassis power status for a dedicated server (single) |
*ServersApi* | [**serverIpmiPowerPost**](Apis/ServersApi.md#serverIpmiPowerPost) | **POST** /servers/{id}/ipmi_power | DESTRUCTIVE — change chassis power state on a bare-metal server |
*ServersApi* | [**serversCancel**](Apis/ServersApi.md#serversCancel) | **DELETE** /servers/{id} | Cancel a dedicated server service at the end of the current billing cycle |
*ServersApi* | [**updateServerInfo**](Apis/ServersApi.md#updateServerInfo) | **POST** /servers/{id} | Update settings on a dedicated server order (shares handler with view) |
| *TicketsApi* | [**addNewTicket**](Apis/TicketsApi.md#addNewTicket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments |
*TicketsApi* | [**closeTicket**](Apis/TicketsApi.md#closeTicket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required) |
*TicketsApi* | [**deleteTicketInfo**](Apis/TicketsApi.md#deleteTicketInfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data) |
*TicketsApi* | [**getNewTicket**](Apis/TicketsApi.md#getNewTicket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form |
*TicketsApi* | [**getTicketInfo**](Apis/TicketsApi.md#getTicketInfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread |
*TicketsApi* | [**getTicketsList**](Apis/TicketsApi.md#getTicketsList) | **GET** /tickets | List the authenticated account's support tickets with status and date filters |
*TicketsApi* | [**postTicketInfo**](Apis/TicketsApi.md#postTicketInfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket |
*TicketsApi* | [**postTicketsList**](Apis/TicketsApi.md#postTicketsList) | **POST** /tickets | Search the authenticated account's tickets by subject, email, or mask ID |
*TicketsApi* | [**putTicketInfo**](Apis/TicketsApi.md#putTicketInfo) | **PUT** /tickets/{id} | Update a ticket's properties such as subject or status (stub, not implemented) |
*TicketsApi* | [**replyTicket**](Apis/TicketsApi.md#replyTicket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments) |
*TicketsApi* | [**updateTicketInfo**](Apis/TicketsApi.md#updateTicketInfo) | **POST** /tickets/{id}/update | Update a ticket's custom field values (server-access details, etc.) |
| *VPSApi* | [**addVps**](Apis/VPSApi.md#addVps) | **POST** /vps/order | Place a new VPS order, create the invoice, and queue provisioning |
*VPSApi* | [**deleteVpsBackup**](Apis/VPSApi.md#deleteVpsBackup) | **DELETE** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible) |
*VPSApi* | [**doVpsBlockSmtp**](Apis/VPSApi.md#doVpsBlockSmtp) | **GET** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse |
*VPSApi* | [**doVpsDisableCd**](Apis/VPSApi.md#doVpsDisableCd) | **GET** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration |
*VPSApi* | [**doVpsDisableQuota**](Apis/VPSApi.md#doVpsDisableQuota) | **GET** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS |
*VPSApi* | [**doVpsEjectCd**](Apis/VPSApi.md#doVpsEjectCd) | **GET** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive) |
*VPSApi* | [**doVpsEnableQuota**](Apis/VPSApi.md#doVpsEnableQuota) | **GET** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS |
*VPSApi* | [**doVpsRestart**](Apis/VPSApi.md#doVpsRestart) | **GET** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes |
*VPSApi* | [**doVpsStart**](Apis/VPSApi.md#doVpsStart) | **GET** /vps/{id}/start | Power on a stopped VPS instance |
*VPSApi* | [**doVpsStop**](Apis/VPSApi.md#doVpsStop) | **GET** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation |
*VPSApi* | [**downloadVpsBackup**](Apis/VPSApi.md#downloadVpsBackup) | **PATCH** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup |
*VPSApi* | [**getNewVps**](Apis/VPSApi.md#getNewVps) | **GET** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing |
*VPSApi* | [**getVpsBackup**](Apis/VPSApi.md#getVpsBackup) | **GET** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS |
*VPSApi* | [**getVpsBackups**](Apis/VPSApi.md#getVpsBackups) | **GET** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS |
*VPSApi* | [**getVpsBuyHdSpace**](Apis/VPSApi.md#getVpsBuyHdSpace) | **GET** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS |
*VPSApi* | [**getVpsBuyIp**](Apis/VPSApi.md#getVpsBuyIp) | **GET** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS |
*VPSApi* | [**getVpsChangeHostname**](Apis/VPSApi.md#getVpsChangeHostname) | **GET** /vps/{id}/change_hostname | Read the VPS's current hostname before changing it |
*VPSApi* | [**getVpsChangeRootPassword**](Apis/VPSApi.md#getVpsChangeRootPassword) | **GET** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password |
*VPSApi* | [**getVpsChangeTimezone**](Apis/VPSApi.md#getVpsChangeTimezone) | **GET** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS |
*VPSApi* | [**getVpsInfo**](Apis/VPSApi.md#getVpsInfo) | **GET** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons |
*VPSApi* | [**getVpsInsertCd**](Apis/VPSApi.md#getVpsInsertCd) | **GET** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive |
*VPSApi* | [**getVpsInvoices**](Apis/VPSApi.md#getVpsInvoices) | **GET** /vps/{id}/invoices | List all billing invoices associated with this specific VPS |
*VPSApi* | [**getVpsList**](Apis/VPSApi.md#getVpsList) | **GET** /vps | List all VPS services on the customer's account |
*VPSApi* | [**getVpsReinstallOs**](Apis/VPSApi.md#getVpsReinstallOs) | **GET** /vps/{id}/reinstall_os | List OS templates compatible with this VPS's hypervisor for reinstall |
*VPSApi* | [**getVpsResetPassword**](Apis/VPSApi.md#getVpsResetPassword) | **GET** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value |
*VPSApi* | [**getVpsReverseDns**](Apis/VPSApi.md#getVpsReverseDns) | **GET** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS |
*VPSApi* | [**getVpsSetupVnc**](Apis/VPSApi.md#getVpsSetupVnc) | **GET** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS |
*VPSApi* | [**getVpsSlices**](Apis/VPSApi.md#getVpsSlices) | **GET** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost |
*VPSApi* | [**getVpsTrafficUsage**](Apis/VPSApi.md#getVpsTrafficUsage) | **GET** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS |
*VPSApi* | [**getVpsViewDesktop**](Apis/VPSApi.md#getVpsViewDesktop) | **GET** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS |
*VPSApi* | [**getVpsWelcomeEmail**](Apis/VPSApi.md#getVpsWelcomeEmail) | **GET** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials |
*VPSApi* | [**postVpsBuyHdSpace**](Apis/VPSApi.md#postVpsBuyHdSpace) | **POST** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice |
*VPSApi* | [**postVpsBuyIp**](Apis/VPSApi.md#postVpsBuyIp) | **POST** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice |
*VPSApi* | [**postVpsChangeHostname**](Apis/VPSApi.md#postVpsChangeHostname) | **POST** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP |
*VPSApi* | [**postVpsChangeRootPassword**](Apis/VPSApi.md#postVpsChangeRootPassword) | **POST** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS |
*VPSApi* | [**postVpsChangeTimezone**](Apis/VPSApi.md#postVpsChangeTimezone) | **POST** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS |
*VPSApi* | [**postVpsChangeWebuzoPassword**](Apis/VPSApi.md#postVpsChangeWebuzoPassword) | **POST** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required) |
*VPSApi* | [**postVpsInsertCd**](Apis/VPSApi.md#postVpsInsertCd) | **POST** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL |
*VPSApi* | [**postVpsReinstallOs**](Apis/VPSApi.md#postVpsReinstallOs) | **POST** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth) |
*VPSApi* | [**postVpsResetPassword**](Apis/VPSApi.md#postVpsResetPassword) | **POST** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value |
*VPSApi* | [**postVpsRestore**](Apis/VPSApi.md#postVpsRestore) | **POST** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk) |
*VPSApi* | [**postVpsReverseDns**](Apis/VPSApi.md#postVpsReverseDns) | **POST** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs |
*VPSApi* | [**postVpsSetupVnc**](Apis/VPSApi.md#postVpsSetupVnc) | **POST** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS |
*VPSApi* | [**postVpsSlices**](Apis/VPSApi.md#postVpsSlices) | **POST** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade) |
*VPSApi* | [**postVpsTrafficUsage**](Apis/VPSApi.md#postVpsTrafficUsage) | **POST** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved) |
*VPSApi* | [**postVpsViewDesktop**](Apis/VPSApi.md#postVpsViewDesktop) | **POST** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes |
*VPSApi* | [**putVps**](Apis/VPSApi.md#putVps) | **PUT** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge |
*VPSApi* | [**putVpsBuyHdSpace**](Apis/VPSApi.md#putVpsBuyHdSpace) | **PUT** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run |
*VPSApi* | [**updateVpsInfo**](Apis/VPSApi.md#updateVpsInfo) | **POST** /vps/{id} | Update editable settings on a VPS service record |
*VPSApi* | [**vPSCancel**](Apis/VPSApi.md#vPSCancel) | **DELETE** /vps/{id} | Cancel a VPS service at the end of the current billing cycle |
| *WebhostingApi* | [**addWebsite**](Apis/WebhostingApi.md#addWebsite) | **POST** /websites/order | Place a new webhosting order, create the invoice, and queue provisioning |
*WebhostingApi* | [**getNewWebsite**](Apis/WebhostingApi.md#getNewWebsite) | **GET** /websites/order | Read the webhosting order catalog — plans, packages, promo offers, pricing |
*WebhostingApi* | [**getWebsiteBuyIp**](Apis/WebhostingApi.md#getWebsiteBuyIp) | **GET** /websites/{id}/buy_ip | Read website IPs, current reverse DNS, and additional-IP pricing |
*WebhostingApi* | [**getWebsiteInfo**](Apis/WebhostingApi.md#getWebsiteInfo) | **GET** /websites/{id} | Read full configuration and status detail for one webhosting service |
*WebhostingApi* | [**getWebsiteInvoices**](Apis/WebhostingApi.md#getWebsiteInvoices) | **GET** /websites/{id}/invoices | List all billing invoices and recurring charges scoped to one website |
*WebhostingApi* | [**getWebsiteList**](Apis/WebhostingApi.md#getWebsiteList) | **GET** /websites | List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services |
*WebhostingApi* | [**getWebsitesBackups**](Apis/WebhostingApi.md#getWebsitesBackups) | **GET** /websites/{id}/backups | List off-site cpmove backups stored in Swift — list or inline-download archive |
*WebhostingApi* | [**getWebsitesLogin**](Apis/WebhostingApi.md#getWebsitesLogin) | **GET** /websites/{id}/login | Get a one-time auto-login URL for the website's control panel |
*WebhostingApi* | [**getWebsitesWelcomeEmail**](Apis/WebhostingApi.md#getWebsitesWelcomeEmail) | **GET** /websites/{id}/welcome_email | Resend the webhosting welcome email with control-panel credentials and URL |
*WebhostingApi* | [**gettWebsiteReverseDns**](Apis/WebhostingApi.md#gettWebsiteReverseDns) | **GET** /websites/{id}/reverse_dns | Read current reverse-DNS (PTR) records for the website's IPs |
*WebhostingApi* | [**postWebsiteBuyIp**](Apis/WebhostingApi.md#postWebsiteBuyIp) | **POST** /websites/{id}/buy_ip | Buy an additional IP for the website OR update reverse DNS records |
*WebhostingApi* | [**postWebsiteMigration**](Apis/WebhostingApi.md#postWebsiteMigration) | **POST** /websites/{id}/migration | Submit a request for InterServer staff to migrate a website from another host |
*WebhostingApi* | [**postWebsitesReverseDns**](Apis/WebhostingApi.md#postWebsitesReverseDns) | **POST** /websites/{id}/reverse_dns | Bulk-update reverse-DNS (PTR) records for one or more website IPs |
*WebhostingApi* | [**putWebsites**](Apis/WebhostingApi.md#putWebsites) | **PUT** /websites/order | Validate a webhosting order and preview cost — dry run, no charge |
*WebhostingApi* | [**updateWebsiteInfo**](Apis/WebhostingApi.md#updateWebsiteInfo) | **POST** /websites/{id} | POST mutation hook for the website detail page (use dedicated ops where possible) |
*WebhostingApi* | [**webhostingCancel**](Apis/WebhostingApi.md#webhostingCancel) | **DELETE** /websites/{id} | Schedule termination of a webhosting service — wipes panel account at cycle end |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [AccountFeatures](./Models/AccountFeatures.md)
 - [AccountInfo](./Models/AccountInfo.md)
 - [AccountInfoCountryCurrencies](./Models/AccountInfoCountryCurrencies.md)
 - [AccountInfoData](./Models/AccountInfoData.md)
 - [AccountInfoDataCc](./Models/AccountInfoDataCc.md)
 - [AccountInfoDataCcs](./Models/AccountInfoDataCcs.md)
 - [AccountInfoData_email_settings](./Models/AccountInfoData_email_settings.md)
 - [AccountInfoData_extra](./Models/AccountInfoData_extra.md)
 - [AccountInfoData_fraudrecord](./Models/AccountInfoData_fraudrecord.md)
 - [AccountInfoLimits](./Models/AccountInfoLimits.md)
 - [AccountInfoLimits_inner](./Models/AccountInfoLimits_inner.md)
 - [AccountInfoMaxMindResponse](./Models/AccountInfoMaxMindResponse.md)
 - [AccountInfoMaxMindResponse_riskScore](./Models/AccountInfoMaxMindResponse_riskScore.md)
 - [AccountInfoOauthConfig](./Models/AccountInfoOauthConfig.md)
 - [AccountInfoOauthConfigProviders](./Models/AccountInfoOauthConfigProviders.md)
 - [AccountInfoOauthConfigProviders_value](./Models/AccountInfoOauthConfigProviders_value.md)
 - [AccountInfoPost](./Models/AccountInfoPost.md)
 - [AccountInfo_oauthproviders](./Models/AccountInfo_oauthproviders.md)
 - [AccountSshKey](./Models/AccountSshKey.md)
 - [AffiliateBannerRow](./Models/AffiliateBannerRow.md)
 - [AffiliateDockSetup](./Models/AffiliateDockSetup.md)
 - [AffiliatePaymentSetup](./Models/AffiliatePaymentSetup.md)
 - [AffiliateTrafficRow](./Models/AffiliateTrafficRow.md)
 - [Backup](./Models/Backup.md)
 - [BackupBillingDetails](./Models/BackupBillingDetails.md)
 - [BackupClientLink](./Models/BackupClientLink.md)
 - [BackupExtraInfoTables](./Models/BackupExtraInfoTables.md)
 - [BackupIPInfo](./Models/BackupIPInfo.md)
 - [BackupIPInfoRow](./Models/BackupIPInfoRow.md)
 - [BackupLoginResponse](./Models/BackupLoginResponse.md)
 - [BackupOrderPostResponse](./Models/BackupOrderPostResponse.md)
 - [BackupOrderPostResponse_cj_params](./Models/BackupOrderPostResponse_cj_params.md)
 - [BackupOrderPutRequest](./Models/BackupOrderPutRequest.md)
 - [BackupOrderPutResponse](./Models/BackupOrderPutResponse.md)
 - [BackupRow](./Models/BackupRow.md)
 - [BackupServiceInfo](./Models/BackupServiceInfo.md)
 - [BackupServiceMaster](./Models/BackupServiceMaster.md)
 - [BackupsOrder](./Models/BackupsOrder.md)
 - [BackupsOrderPackageCosts](./Models/BackupsOrderPackageCosts.md)
 - [BackupsOrderServiceTypes](./Models/BackupsOrderServiceTypes.md)
 - [BackupsOrder_serviceTypes](./Models/BackupsOrder_serviceTypes.md)
 - [BillingAddCcRequest](./Models/BillingAddCcRequest.md)
 - [BillingInvoiceDetail](./Models/BillingInvoiceDetail.md)
 - [BillingInvoiceList](./Models/BillingInvoiceList.md)
 - [BillingPaymentMethodRequest](./Models/BillingPaymentMethodRequest.md)
 - [BillingPrepayRequest](./Models/BillingPrepayRequest.md)
 - [BillingVerifyCcRequest](./Models/BillingVerifyCcRequest.md)
 - [BuyItNowList](./Models/BuyItNowList.md)
 - [BuyItNowRow](./Models/BuyItNowRow.md)
 - [BuyItNowRow_cpu_inner](./Models/BuyItNowRow_cpu_inner.md)
 - [BuyItNowRow_cpu_inner_oneOf](./Models/BuyItNowRow_cpu_inner_oneOf.md)
 - [CancelDomain_200_response](./Models/CancelDomain_200_response.md)
 - [CaptchaResponse](./Models/CaptchaResponse.md)
 - [ChargeInvoiceRows](./Models/ChargeInvoiceRows.md)
 - [ChargeInvoiceRows_invoices_value](./Models/ChargeInvoiceRows_invoices_value.md)
 - [ChargeInvoiceRows_invoices_value_paid_invoices_value](./Models/ChargeInvoiceRows_invoices_value_paid_invoices_value.md)
 - [ChargeInvoiceRows_invoices_value_paid_invoices_value_refund_invoices_value](./Models/ChargeInvoiceRows_invoices_value_paid_invoices_value_refund_invoices_value.md)
 - [CloseTicketResponseSchema](./Models/CloseTicketResponseSchema.md)
 - [CreateFilter](./Models/CreateFilter.md)
 - [CreateFirewallRule](./Models/CreateFirewallRule.md)
 - [CreateGeoFirewallRule](./Models/CreateGeoFirewallRule.md)
 - [Delete_Firewall_Rule](./Models/Delete_Firewall_Rule.md)
 - [Delete_Geo_Firewall_Rule](./Models/Delete_Geo_Firewall_Rule.md)
 - [DenyRuleNew](./Models/DenyRuleNew.md)
 - [DenyRuleRecord](./Models/DenyRuleRecord.md)
 - [DnsListItem](./Models/DnsListItem.md)
 - [DnsNewDomain](./Models/DnsNewDomain.md)
 - [DnsNewRecord](./Models/DnsNewRecord.md)
 - [DnsRecord](./Models/DnsRecord.md)
 - [DnsRecordType](./Models/DnsRecordType.md)
 - [DnsUpdateRecord](./Models/DnsUpdateRecord.md)
 - [Domain](./Models/Domain.md)
 - [DomainAdminContact](./Models/DomainAdminContact.md)
 - [DomainAllInfo](./Models/DomainAllInfo.md)
 - [DomainAllInfo_attributes](./Models/DomainAllInfo_attributes.md)
 - [DomainAllInfo_attributes_contact_set](./Models/DomainAllInfo_attributes_contact_set.md)
 - [DomainBillingDetails](./Models/DomainBillingDetails.md)
 - [DomainBillingExtra](./Models/DomainBillingExtra.md)
 - [DomainClientLink](./Models/DomainClientLink.md)
 - [DomainContactDetails](./Models/DomainContactDetails.md)
 - [DomainDnssecRecords](./Models/DomainDnssecRecords.md)
 - [DomainDnssecRecords_inner](./Models/DomainDnssecRecords_inner.md)
 - [DomainDnssecRequest](./Models/DomainDnssecRequest.md)
 - [DomainLookupResponse](./Models/DomainLookupResponse.md)
 - [DomainNameServer](./Models/DomainNameServer.md)
 - [DomainNameserverGetResponse](./Models/DomainNameserverGetResponse.md)
 - [DomainNameserverGetResponse_inner](./Models/DomainNameserverGetResponse_inner.md)
 - [DomainNameserverPostRequest](./Models/DomainNameserverPostRequest.md)
 - [DomainNameserverPutRequest](./Models/DomainNameserverPutRequest.md)
 - [DomainOrder](./Models/DomainOrder.md)
 - [DomainOrderRequest](./Models/DomainOrderRequest.md)
 - [DomainOrderResponse](./Models/DomainOrderResponse.md)
 - [DomainOrderResponse_attributes](./Models/DomainOrderResponse_attributes.md)
 - [DomainOrderServices10001](./Models/DomainOrderServices10001.md)
 - [DomainOrder_services](./Models/DomainOrder_services.md)
 - [DomainOwnerContact](./Models/DomainOwnerContact.md)
 - [DomainProvProcessPending](./Models/DomainProvProcessPending.md)
 - [DomainProvProcessPending_attributes](./Models/DomainProvProcessPending_attributes.md)
 - [DomainRow](./Models/DomainRow.md)
 - [DomainSearchResponse](./Models/DomainSearchResponse.md)
 - [DomainServiceInfo](./Models/DomainServiceInfo.md)
 - [DomainServiceType](./Models/DomainServiceType.md)
 - [DomainTechContact](./Models/DomainTechContact.md)
 - [DomainWhoisPrivacyRequest](./Models/DomainWhoisPrivacyRequest.md)
 - [EmailAddress](./Models/EmailAddress.md)
 - [EmailAddressName](./Models/EmailAddressName.md)
 - [FloatingIpOrderRequest](./Models/FloatingIpOrderRequest.md)
 - [GenericResponse](./Models/GenericResponse.md)
 - [Home](./Models/Home.md)
 - [HomeDetailsModulesBackups](./Models/HomeDetailsModulesBackups.md)
 - [HomeDetailsModulesDomains](./Models/HomeDetailsModulesDomains.md)
 - [HomeDetailsModulesLicenses](./Models/HomeDetailsModulesLicenses.md)
 - [HomeDetailsModulesQuickservers](./Models/HomeDetailsModulesQuickservers.md)
 - [HomeDetailsModulesServers](./Models/HomeDetailsModulesServers.md)
 - [HomeDetailsModulesVps](./Models/HomeDetailsModulesVps.md)
 - [HomeDetailsModulesWebhosting](./Models/HomeDetailsModulesWebhosting.md)
 - [HomeServicesDomainsLinks](./Models/HomeServicesDomainsLinks.md)
 - [HomeServicesLicensesLinks](./Models/HomeServicesLicensesLinks.md)
 - [HomeServicesServersLinks](./Models/HomeServicesServersLinks.md)
 - [HomeServicesVpsLinks](./Models/HomeServicesVpsLinks.md)
 - [HomeServicesWebhostingLinks](./Models/HomeServicesWebhostingLinks.md)
 - [Home_details](./Models/Home_details.md)
 - [Home_details_modules](./Models/Home_details_modules.md)
 - [Home_services](./Models/Home_services.md)
 - [Home_services_backups](./Models/Home_services_backups.md)
 - [Home_services_domains](./Models/Home_services_domains.md)
 - [Home_services_licenses](./Models/Home_services_licenses.md)
 - [Home_services_servers](./Models/Home_services_servers.md)
 - [Home_services_vps](./Models/Home_services_vps.md)
 - [Home_services_webhosting](./Models/Home_services_webhosting.md)
 - [Home_ticketStatus](./Models/Home_ticketStatus.md)
 - [Home_ticketStatusView](./Models/Home_ticketStatusView.md)
 - [HostnameObject](./Models/HostnameObject.md)
 - [IpLimitRange](./Models/IpLimitRange.md)
 - [IpObject](./Models/IpObject.md)
 - [License](./Models/License.md)
 - [LicenseBillingDetails](./Models/LicenseBillingDetails.md)
 - [LicenseClientLink](./Models/LicenseClientLink.md)
 - [LicenseIpInfo](./Models/LicenseIpInfo.md)
 - [LicenseIpInfoRow](./Models/LicenseIpInfoRow.md)
 - [LicenseOrderRequest](./Models/LicenseOrderRequest.md)
 - [LicenseRow](./Models/LicenseRow.md)
 - [LicenseServiceInfo](./Models/LicenseServiceInfo.md)
 - [LicenseServiceType](./Models/LicenseServiceType.md)
 - [License_extraInfoTables](./Models/License_extraInfoTables.md)
 - [LicensesOrder](./Models/LicensesOrder.md)
 - [LicensesOrderServiceCategories509](./Models/LicensesOrderServiceCategories509.md)
 - [LicensesOrderServiceTypes11482](./Models/LicensesOrderServiceTypes11482.md)
 - [LicensesOrder_packageCosts](./Models/LicensesOrder_packageCosts.md)
 - [LicensesOrder_serviceCategories](./Models/LicensesOrder_serviceCategories.md)
 - [LicensesOrder_serviceTypes](./Models/LicensesOrder_serviceTypes.md)
 - [LoginErrorResponse](./Models/LoginErrorResponse.md)
 - [LoginInfo](./Models/LoginInfo.md)
 - [LoginServiceCounts](./Models/LoginServiceCounts.md)
 - [LoginSubmissionExample](./Models/LoginSubmissionExample.md)
 - [LoginSubmissionExample_g_recaptcha_response](./Models/LoginSubmissionExample_g_recaptcha_response.md)
 - [LoginSubmissionExample_g_recaptcha_response_dep](./Models/LoginSubmissionExample_g_recaptcha_response_dep.md)
 - [LoginSuccessResponse](./Models/LoginSuccessResponse.md)
 - [MailAlertRequest](./Models/MailAlertRequest.md)
 - [MailAlertUpdateRequest](./Models/MailAlertUpdateRequest.md)
 - [MailAlertsResponse](./Models/MailAlertsResponse.md)
 - [MailAlertsResponse_inner](./Models/MailAlertsResponse_inner.md)
 - [MailAttachment](./Models/MailAttachment.md)
 - [MailBillingDetails](./Models/MailBillingDetails.md)
 - [MailBlockClickHouse](./Models/MailBlockClickHouse.md)
 - [MailBlockRspamd](./Models/MailBlockRspamd.md)
 - [MailBlocks](./Models/MailBlocks.md)
 - [MailClientLink](./Models/MailClientLink.md)
 - [MailDelistRequest](./Models/MailDelistRequest.md)
 - [MailDelistResponse](./Models/MailDelistResponse.md)
 - [MailDeliverabilityResponse](./Models/MailDeliverabilityResponse.md)
 - [MailExtraInfoTable](./Models/MailExtraInfoTable.md)
 - [MailExtraInfoTableRow](./Models/MailExtraInfoTableRow.md)
 - [MailLog](./Models/MailLog.md)
 - [MailLogEntry](./Models/MailLogEntry.md)
 - [MailOrder](./Models/MailOrder.md)
 - [MailOrderRequest](./Models/MailOrderRequest.md)
 - [MailRow](./Models/MailRow.md)
 - [MailSchema](./Models/MailSchema.md)
 - [MailSchema_extraInfoTables](./Models/MailSchema_extraInfoTables.md)
 - [MailServiceInfo](./Models/MailServiceInfo.md)
 - [MailServiceType](./Models/MailServiceType.md)
 - [MailStatsType](./Models/MailStatsType.md)
 - [MailStatsType_volume](./Models/MailStatsType_volume.md)
 - [MailStatsType_volume_from](./Models/MailStatsType_volume_from.md)
 - [MailStatsType_volume_ip](./Models/MailStatsType_volume_ip.md)
 - [MailStatsType_volume_to](./Models/MailStatsType_volume_to.md)
 - [MailTutorialsTable](./Models/MailTutorialsTable.md)
 - [MailTutorialsTableRow](./Models/MailTutorialsTableRow.md)
 - [ModuleSettings](./Models/ModuleSettings.md)
 - [Modules](./Models/Modules.md)
 - [MonthlyCounts](./Models/MonthlyCounts.md)
 - [PasswordRequest](./Models/PasswordRequest.md)
 - [QsOrderRequest](./Models/QsOrderRequest.md)
 - [QueueResponse](./Models/QueueResponse.md)
 - [Quickserver](./Models/Quickserver.md)
 - [QuickserverAddons](./Models/QuickserverAddons.md)
 - [QuickserverAddonsRow](./Models/QuickserverAddonsRow.md)
 - [QuickserverBillingDetails](./Models/QuickserverBillingDetails.md)
 - [QuickserverClientLink](./Models/QuickserverClientLink.md)
 - [QuickserverIpInfo](./Models/QuickserverIpInfo.md)
 - [QuickserverIpTableRow](./Models/QuickserverIpTableRow.md)
 - [QuickserverOrder](./Models/QuickserverOrder.md)
 - [QuickserverOrderDistroSelUbuntu](./Models/QuickserverOrderDistroSelUbuntu.md)
 - [QuickserverOrderServerDetails381](./Models/QuickserverOrderServerDetails381.md)
 - [QuickserverOrderTemplatesUbuntu64](./Models/QuickserverOrderTemplatesUbuntu64.md)
 - [QuickserverOrderVersionCentosstream8](./Models/QuickserverOrderVersionCentosstream8.md)
 - [QuickserverOrder_distro_sel](./Models/QuickserverOrder_distro_sel.md)
 - [QuickserverOrder_server_details](./Models/QuickserverOrder_server_details.md)
 - [QuickserverOrder_templates](./Models/QuickserverOrder_templates.md)
 - [QuickserverOrder_version](./Models/QuickserverOrder_version.md)
 - [QuickserverRow](./Models/QuickserverRow.md)
 - [QuickserverServiceExtra](./Models/QuickserverServiceExtra.md)
 - [QuickserverServiceInfo](./Models/QuickserverServiceInfo.md)
 - [QuickserverServiceMaster](./Models/QuickserverServiceMaster.md)
 - [Quickserver_extraInfoTables](./Models/Quickserver_extraInfoTables.md)
 - [Quickserver_serviceExtra](./Models/Quickserver_serviceExtra.md)
 - [ReplyTicketRequest](./Models/ReplyTicketRequest.md)
 - [ReplyTicketResponseSchema](./Models/ReplyTicketResponseSchema.md)
 - [RestoreRequest](./Models/RestoreRequest.md)
 - [ReverseDnsEntries](./Models/ReverseDnsEntries.md)
 - [ScrubIpFilterTypes](./Models/ScrubIpFilterTypes.md)
 - [ScrubIpFilterTypes_filters_value](./Models/ScrubIpFilterTypes_filters_value.md)
 - [ScrubIpPlaceOrder](./Models/ScrubIpPlaceOrder.md)
 - [ScrubIpsLogRowSchema](./Models/ScrubIpsLogRowSchema.md)
 - [ScrubIpsRowSchema](./Models/ScrubIpsRowSchema.md)
 - [SearchAutocompleteResponse](./Models/SearchAutocompleteResponse.md)
 - [SendMail](./Models/SendMail.md)
 - [SendMailAdv](./Models/SendMailAdv.md)
 - [Server](./Models/Server.md)
 - [ServerAsset](./Models/ServerAsset.md)
 - [ServerAssets](./Models/ServerAssets.md)
 - [ServerBillingDetails](./Models/ServerBillingDetails.md)
 - [ServerBulkIpmiPowerResponse](./Models/ServerBulkIpmiPowerResponse.md)
 - [ServerBulkIpmiPowerResponse_results_inner](./Models/ServerBulkIpmiPowerResponse_results_inner.md)
 - [ServerClientLink](./Models/ServerClientLink.md)
 - [ServerExtraInfoTables](./Models/ServerExtraInfoTables.md)
 - [ServerIpmiLiveInfo](./Models/ServerIpmiLiveInfo.md)
 - [ServerIpmiLiveRequest](./Models/ServerIpmiLiveRequest.md)
 - [ServerIpmiPowerRequest](./Models/ServerIpmiPowerRequest.md)
 - [ServerLease](./Models/ServerLease.md)
 - [ServerLocation1](./Models/ServerLocation1.md)
 - [ServerNetworkInfo](./Models/ServerNetworkInfo.md)
 - [ServerNetworkInfo_assets](./Models/ServerNetworkInfo_assets.md)
 - [ServerNetworkInfo_switchports](./Models/ServerNetworkInfo_switchports.md)
 - [ServerOrder](./Models/ServerOrder.md)
 - [ServerOrderBandwidth](./Models/ServerOrderBandwidth.md)
 - [ServerOrderCPU](./Models/ServerOrderCPU.md)
 - [ServerOrderConfigIds](./Models/ServerOrderConfigIds.md)
 - [ServerOrderControlPanel](./Models/ServerOrderControlPanel.md)
 - [ServerOrderFieldLabel](./Models/ServerOrderFieldLabel.md)
 - [ServerOrderFieldLabels](./Models/ServerOrderFieldLabels.md)
 - [ServerOrderFormValues](./Models/ServerOrderFormValues.md)
 - [ServerOrderIP](./Models/ServerOrderIP.md)
 - [ServerOrderMemory](./Models/ServerOrderMemory.md)
 - [ServerOrderOS](./Models/ServerOrderOS.md)
 - [ServerOrderPostRequest](./Models/ServerOrderPostRequest.md)
 - [ServerOrderPostRequest_hd](./Models/ServerOrderPostRequest_hd.md)
 - [ServerOrderRAID](./Models/ServerOrderRAID.md)
 - [ServerOrder_bandwidth_li](./Models/ServerOrder_bandwidth_li.md)
 - [ServerOrder_cp_li](./Models/ServerOrder_cp_li.md)
 - [ServerOrder_cpu_li](./Models/ServerOrder_cpu_li.md)
 - [ServerOrder_ips_li](./Models/ServerOrder_ips_li.md)
 - [ServerOrder_memory_li](./Models/ServerOrder_memory_li.md)
 - [ServerOrder_memory_li_254](./Models/ServerOrder_memory_li_254.md)
 - [ServerOrder_os_li](./Models/ServerOrder_os_li.md)
 - [ServerRow](./Models/ServerRow.md)
 - [ServerServiceInfo](./Models/ServerServiceInfo.md)
 - [ServerSwitchport](./Models/ServerSwitchport.md)
 - [Server_locations](./Models/Server_locations.md)
 - [ServersBuyNowError](./Models/ServersBuyNowError.md)
 - [ServersBuyNowResponse](./Models/ServersBuyNowResponse.md)
 - [ServersBuyNowResponse_order_details](./Models/ServersBuyNowResponse_order_details.md)
 - [Service](./Models/Service.md)
 - [ServiceCategories](./Models/ServiceCategories.md)
 - [ServiceCategory](./Models/ServiceCategory.md)
 - [ServiceOrderPostResponse](./Models/ServiceOrderPostResponse.md)
 - [ServiceType](./Models/ServiceType.md)
 - [ServiceTypes](./Models/ServiceTypes.md)
 - [Services](./Models/Services.md)
 - [ServicesInfo](./Models/ServicesInfo.md)
 - [SslOrderRequest](./Models/SslOrderRequest.md)
 - [StatusMonthlyBreakdown](./Models/StatusMonthlyBreakdown.md)
 - [SuccessTextResponse](./Models/SuccessTextResponse.md)
 - [TemplateRequest](./Models/TemplateRequest.md)
 - [TextResponse](./Models/TextResponse.md)
 - [TicketCustomFieldDetails](./Models/TicketCustomFieldDetails.md)
 - [TicketDetails](./Models/TicketDetails.md)
 - [TicketNew](./Models/TicketNew.md)
 - [TicketNewResponse](./Models/TicketNewResponse.md)
 - [TicketPostDetails](./Models/TicketPostDetails.md)
 - [TicketPostDetails_inner](./Models/TicketPostDetails_inner.md)
 - [Tickets](./Models/Tickets.md)
 - [TicketsRow](./Models/TicketsRow.md)
 - [Tickets_countArray](./Models/Tickets_countArray.md)
 - [TimezoneUpdate](./Models/TimezoneUpdate.md)
 - [UpdateTicket](./Models/UpdateTicket.md)
 - [UpdateTicketResponseSchema](./Models/UpdateTicketResponseSchema.md)
 - [UrlRequest](./Models/UrlRequest.md)
 - [VPSCancel_200_response](./Models/VPSCancel_200_response.md)
 - [VPSTrafficDataDataSectionResponse](./Models/VPSTrafficDataDataSectionResponse.md)
 - [VPSTrafficDataDataSectionResponse_inner](./Models/VPSTrafficDataDataSectionResponse_inner.md)
 - [ViewTicketResponse](./Models/ViewTicketResponse.md)
 - [Vps](./Models/Vps.md)
 - [VpsBackupRow](./Models/VpsBackupRow.md)
 - [VpsBackupRows](./Models/VpsBackupRows.md)
 - [VpsBillingDetails](./Models/VpsBillingDetails.md)
 - [VpsCPData](./Models/VpsCPData.md)
 - [VpsClientLink](./Models/VpsClientLink.md)
 - [VpsDAData](./Models/VpsDAData.md)
 - [VpsDALicense](./Models/VpsDALicense.md)
 - [VpsExtraInfoTables](./Models/VpsExtraInfoTables.md)
 - [VpsIPInfo](./Models/VpsIPInfo.md)
 - [VpsIPInfoRow](./Models/VpsIPInfoRow.md)
 - [VpsOrder](./Models/VpsOrder.md)
 - [VpsOrderPostRequest](./Models/VpsOrderPostRequest.md)
 - [VpsOrderPutRequest](./Models/VpsOrderPutRequest.md)
 - [VpsOrderPutResponse](./Models/VpsOrderPutResponse.md)
 - [VpsOrder_locationNames](./Models/VpsOrder_locationNames.md)
 - [VpsOrder_locationStock](./Models/VpsOrder_locationStock.md)
 - [VpsOrder_locationStock_1](./Models/VpsOrder_locationStock_1.md)
 - [VpsOrder_osNames](./Models/VpsOrder_osNames.md)
 - [VpsOrder_packageCosts](./Models/VpsOrder_packageCosts.md)
 - [VpsOrder_platformNames](./Models/VpsOrder_platformNames.md)
 - [VpsOrder_platformPackages](./Models/VpsOrder_platformPackages.md)
 - [VpsOrder_serviceTypes](./Models/VpsOrder_serviceTypes.md)
 - [VpsOrder_serviceTypes_32](./Models/VpsOrder_serviceTypes_32.md)
 - [VpsOrder_templates](./Models/VpsOrder_templates.md)
 - [VpsOrder_templates_hyperv](./Models/VpsOrder_templates_hyperv.md)
 - [VpsOrder_templates_hyperv_windows](./Models/VpsOrder_templates_hyperv_windows.md)
 - [VpsPlesk12Data](./Models/VpsPlesk12Data.md)
 - [VpsPleskLicense](./Models/VpsPleskLicense.md)
 - [VpsRow](./Models/VpsRow.md)
 - [VpsServiceAddons](./Models/VpsServiceAddons.md)
 - [VpsServiceExtra](./Models/VpsServiceExtra.md)
 - [VpsServiceInfo](./Models/VpsServiceInfo.md)
 - [VpsServiceMaster](./Models/VpsServiceMaster.md)
 - [VpsSnapshot](./Models/VpsSnapshot.md)
 - [VpsTemplateRow](./Models/VpsTemplateRow.md)
 - [VpsTemplatesList](./Models/VpsTemplatesList.md)
 - [VpsTrafficDataSectionResponse](./Models/VpsTrafficDataSectionResponse.md)
 - [VpsTrafficHistoryResponse](./Models/VpsTrafficHistoryResponse.md)
 - [VpsTrafficHistorySectionDataResponse](./Models/VpsTrafficHistorySectionDataResponse.md)
 - [VpsTrafficHistorySectionResponse](./Models/VpsTrafficHistorySectionResponse.md)
 - [VpsTrafficResponse](./Models/VpsTrafficResponse.md)
 - [VpsTrafficTotalsResposne](./Models/VpsTrafficTotalsResposne.md)
 - [VpsTrafficTotalsSectionResponse](./Models/VpsTrafficTotalsSectionResponse.md)
 - [VpsTrafficUsageAverageResponse](./Models/VpsTrafficUsageAverageResponse.md)
 - [VpsTrafficUsageAverageSectionResponse](./Models/VpsTrafficUsageAverageSectionResponse.md)
 - [VpsTrafficUsageResponse](./Models/VpsTrafficUsageResponse.md)
 - [Website](./Models/Website.md)
 - [WebsiteBackups](./Models/WebsiteBackups.md)
 - [WebsiteBackups_inner](./Models/WebsiteBackups_inner.md)
 - [WebsiteBillingDetails](./Models/WebsiteBillingDetails.md)
 - [WebsiteClientLink](./Models/WebsiteClientLink.md)
 - [WebsiteExtraInfoTables](./Models/WebsiteExtraInfoTables.md)
 - [WebsiteLoginResponse](./Models/WebsiteLoginResponse.md)
 - [WebsiteOrderPostRequest](./Models/WebsiteOrderPostRequest.md)
 - [WebsiteOrderPutRequest](./Models/WebsiteOrderPutRequest.md)
 - [WebsiteRow](./Models/WebsiteRow.md)
 - [WebsiteServiceInfo](./Models/WebsiteServiceInfo.md)
 - [WebsiteServiceMaster](./Models/WebsiteServiceMaster.md)
 - [WebsiteTable](./Models/WebsiteTable.md)
 - [WebsiteTableRow](./Models/WebsiteTableRow.md)
 - [WebsitesOrder](./Models/WebsitesOrder.md)
 - [WebsitesOrderJsonServiceOffers](./Models/WebsitesOrderJsonServiceOffers.md)
 - [WebsitesOrderJsonServiceOffersItem](./Models/WebsitesOrderJsonServiceOffersItem.md)
 - [WebsitesOrderJsonServices](./Models/WebsitesOrderJsonServices.md)
 - [WebsitesOrderPackages](./Models/WebsitesOrderPackages.md)
 - [WebsitesOrderPackagesInfo](./Models/WebsitesOrderPackagesInfo.md)
 - [WebsitesOrderServiceOffer](./Models/WebsitesOrderServiceOffer.md)
 - [WebsitesOrderServiceTypes](./Models/WebsitesOrderServiceTypes.md)
 - [WebsitesOrder_packges](./Models/WebsitesOrder_packges.md)
 - [WebsitesOrder_serviceOffers](./Models/WebsitesOrder_serviceOffers.md)
 - [WebsitesOrder_serviceTypes](./Models/WebsitesOrder_serviceTypes.md)
 - [addServer_200_response](./Models/addServer_200_response.md)
 - [buyItNowServerOrder_200_response](./Models/buyItNowServerOrder_200_response.md)
 - [buyItNowServerOrder_200_response_bandwidth_inner](./Models/buyItNowServerOrder_200_response_bandwidth_inner.md)
 - [buyItNowServerOrder_200_response_cp_inner](./Models/buyItNowServerOrder_200_response_cp_inner.md)
 - [buyItNowServerOrder_200_response_ips_inner](./Models/buyItNowServerOrder_200_response_ips_inner.md)
 - [buyItNowServerOrder_200_response_os_inner](./Models/buyItNowServerOrder_200_response_os_inner.md)
 - [buyItNowServerOrder_200_response_raid_inner](./Models/buyItNowServerOrder_200_response_raid_inner.md)
 - [cancelBackup_200_response](./Models/cancelBackup_200_response.md)
 - [cancelScrubIp_200_response](./Models/cancelScrubIp_200_response.md)
 - [createFilter_201_response](./Models/createFilter_201_response.md)
 - [createFilter_400_response](./Models/createFilter_400_response.md)
 - [createFilter_500_response](./Models/createFilter_500_response.md)
 - [createGeoRule_400_response](./Models/createGeoRule_400_response.md)
 - [createRule_201_response](./Models/createRule_201_response.md)
 - [createRule_400_response](./Models/createRule_400_response.md)
 - [createRule_500_response](./Models/createRule_500_response.md)
 - [deleteFilter_200_response](./Models/deleteFilter_200_response.md)
 - [deleteFilter_400_response](./Models/deleteFilter_400_response.md)
 - [deleteFilter_500_response](./Models/deleteFilter_500_response.md)
 - [deleteMailAlert_request](./Models/deleteMailAlert_request.md)
 - [disableScrub_200_response](./Models/disableScrub_200_response.md)
 - [disableScrub_400_response](./Models/disableScrub_400_response.md)
 - [disableScrub_500_response](./Models/disableScrub_500_response.md)
 - [downloadQsBackup_200_response](./Models/downloadQsBackup_200_response.md)
 - [downloadQsBackup_request](./Models/downloadQsBackup_request.md)
 - [enableScrub_200_response](./Models/enableScrub_200_response.md)
 - [enableScrub_500_response](./Models/enableScrub_500_response.md)
 - [floating_ipsCancel_200_response](./Models/floating_ipsCancel_200_response.md)
 - [getAccountInfo_401_response](./Models/getAccountInfo_401_response.md)
 - [getAccountLocales_200_response_value](./Models/getAccountLocales_200_response_value.md)
 - [getAccountTfaSetup_200_response](./Models/getAccountTfaSetup_200_response.md)
 - [getAffiliateSignups_200_response](./Models/getAffiliateSignups_200_response.md)
 - [getOauthRedirect_200_response](./Models/getOauthRedirect_200_response.md)
 - [getOrderDetail_200_response](./Models/getOrderDetail_200_response.md)
 - [getOrderDetail_200_response_ips_inner](./Models/getOrderDetail_200_response_ips_inner.md)
 - [getOrderDetail_200_response_packageCosts](./Models/getOrderDetail_200_response_packageCosts.md)
 - [getOrderDetail_200_response_serviceTypes_inner](./Models/getOrderDetail_200_response_serviceTypes_inner.md)
 - [getScrubIpDetails_200_response](./Models/getScrubIpDetails_200_response.md)
 - [getScrubIpDetails_200_response_billingDetails](./Models/getScrubIpDetails_200_response_billingDetails.md)
 - [getScrubIpDetails_200_response_client_links_inner](./Models/getScrubIpDetails_200_response_client_links_inner.md)
 - [getScrubIpDetails_200_response_extraInfoTables](./Models/getScrubIpDetails_200_response_extraInfoTables.md)
 - [getScrubIpDetails_200_response_extraInfoTables_scrub_ips](./Models/getScrubIpDetails_200_response_extraInfoTables_scrub_ips.md)
 - [getScrubIpDetails_200_response_extraInfoTables_scrub_ips_rows_inner](./Models/getScrubIpDetails_200_response_extraInfoTables_scrub_ips_rows_inner.md)
 - [getScrubIpDetails_200_response_filter_firewall](./Models/getScrubIpDetails_200_response_filter_firewall.md)
 - [getScrubIpDetails_200_response_filter_firewall_filters_inner](./Models/getScrubIpDetails_200_response_filter_firewall_filters_inner.md)
 - [getScrubIpDetails_200_response_filter_firewall_rules_inner](./Models/getScrubIpDetails_200_response_filter_firewall_rules_inner.md)
 - [getScrubIpDetails_200_response_serviceInfo](./Models/getScrubIpDetails_200_response_serviceInfo.md)
 - [getWebsiteBuyIp_200_response](./Models/getWebsiteBuyIp_200_response.md)
 - [initiatePayment_200_response](./Models/initiatePayment_200_response.md)
 - [licensesCancel_200_response](./Models/licensesCancel_200_response.md)
 - [mailCancel_200_response](./Models/mailCancel_200_response.md)
 - [patchBillingCreditCardVerify_request](./Models/patchBillingCreditCardVerify_request.md)
 - [patchOauthTwoFactor_200_response](./Models/patchOauthTwoFactor_200_response.md)
 - [patchOauthTwoFactor_request](./Models/patchOauthTwoFactor_request.md)
 - [placeBuyNowServer_request](./Models/placeBuyNowServer_request.md)
 - [placeScrubOrder_201_response](./Models/placeScrubOrder_201_response.md)
 - [placeScrubOrder_201_response_order_details](./Models/placeScrubOrder_201_response_order_details.md)
 - [placeScrubOrder_201_response_order_details_cj_params](./Models/placeScrubOrder_201_response_order_details_cj_params.md)
 - [postOauthCallback_200_response](./Models/postOauthCallback_200_response.md)
 - [postOauthCallback_request](./Models/postOauthCallback_request.md)
 - [postWebsiteBuyIp_200_response](./Models/postWebsiteBuyIp_200_response.md)
 - [postWebsiteBuyIp_request](./Models/postWebsiteBuyIp_request.md)
 - [postWebsiteMigration_200_response](./Models/postWebsiteMigration_200_response.md)
 - [postWebsiteMigration_request](./Models/postWebsiteMigration_request.md)
 - [putScrubIps_200_response](./Models/putScrubIps_200_response.md)
 - [quickserversCancel_200_response](./Models/quickserversCancel_200_response.md)
 - [scrubIpsDeleteRule_200_response](./Models/scrubIpsDeleteRule_200_response.md)
 - [scrubIpsDeleteRule_400_response](./Models/scrubIpsDeleteRule_400_response.md)
 - [scrubIpsDeleteRule_500_response](./Models/scrubIpsDeleteRule_500_response.md)
 - [serversCancel_200_response](./Models/serversCancel_200_response.md)
 - [sslCancel_200_response](./Models/sslCancel_200_response.md)
 - [updateAccountTfa_request](./Models/updateAccountTfa_request.md)
 - [viewMailLog_startDate_parameter](./Models/viewMailLog_startDate_parameter.md)
 - [webhostingCancel_200_response](./Models/webhostingCancel_200_response.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKeyAuth"></a>
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

<a name="sessionIdHeaderAuth"></a>
### sessionIdHeaderAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: HTTP header

<a name="sessionIdCookieAuth"></a>
### sessionIdCookieAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: 

