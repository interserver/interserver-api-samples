# DomainsApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addDomain**](DomainsApi.md#addDomain) | **POST** /domains/order | Place a new domain registration or transfer order, generate billing invoice |
| [**addDomainDnssec**](DomainsApi.md#addDomainDnssec) | **POST** /domains/{id}/dnssec | Register DNSSEC DS records on the domain at OpenSRS |
| [**addDomainNameserver**](DomainsApi.md#addDomainNameserver) | **POST** /domains/{id}/nameservers | Register a new nameserver host with glue IP at the registry (registered nameserver) |
| [**cancelDomain**](DomainsApi.md#cancelDomain) | **DELETE** /domains/{id} | Cancel a domain order in the billing system to stop auto-renewals |
| [**deleteDomainDnssec**](DomainsApi.md#deleteDomainDnssec) | **DELETE** /domains/{id}/dnssec | Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar) |
| [**deleteDomainNameserver**](DomainsApi.md#deleteDomainNameserver) | **DELETE** /domains/{id}/nameservers | Remove one registered nameserver glue record from the domain |
| [**getDomainContact**](DomainsApi.md#getDomainContact) | **GET** /domains/{id}/contact | Read the current registrant/admin/tech/billing contact field set for a domain |
| [**getDomainDnssec**](DomainsApi.md#getDomainDnssec) | **GET** /domains/{id}/dnssec | Read the DNSSEC DS record set currently registered with the registrar |
| [**getDomainInfo**](DomainsApi.md#getDomainInfo) | **GET** /domains/{id} | Read full billing, registrar, and service detail for one domain |
| [**getDomainInvoices**](DomainsApi.md#getDomainInvoices) | **GET** /domains/{id}/invoices | List all billing invoices scoped to one domain order |
| [**getDomainLookup**](DomainsApi.md#getDomainLookup) | **GET** /domains/lookup/{name} | Check availability, premium status, and pricing for a specific domain |
| [**getDomainNameservers**](DomainsApi.md#getDomainNameservers) | **GET** /domains/{id}/nameservers | List registered nameserver hosts and glue IP addresses for a domain |
| [**getDomainRenewal**](DomainsApi.md#getDomainRenewal) | **GET** /domains/{id}/renew | Read renewal pricing, expiry, and whether a renewal invoice already exists |
| [**getDomainSearch**](DomainsApi.md#getDomainSearch) | **GET** /domains/search/{name} | Get registrar-suggested domain alternatives and bulk availability for a search term |
| [**getDomainTransfer**](DomainsApi.md#getDomainTransfer) | **GET** /domains/{id}/transfer | Read OpenSRS transfer status for an in-progress domain transfer order |
| [**getDomainWhoisPrivacy**](DomainsApi.md#getDomainWhoisPrivacy) | **GET** /domains/{id}/whois | Read Whois privacy availability, current state, and add-on pricing for a domain |
| [**getDomainsList**](DomainsApi.md#getDomainsList) | **GET** /domains | List every domain registration on the account with billing and registration metadata |
| [**getDomainsWelcomeEmail**](DomainsApi.md#getDomainsWelcomeEmail) | **GET** /domains/{id}/welcome_email | Resend the domain welcome email with registration details and management instructions |
| [**getNewDomain**](DomainsApi.md#getNewDomain) | **GET** /domains/order | Read the buyable domain TLD service catalog and Whois privacy pricing |
| [**patchDomains**](DomainsApi.md#patchDomains) | **PATCH** /domains/order | Validate posted domain-order field values before committing — dry run |
| [**postDomainRenewal**](DomainsApi.md#postDomainRenewal) | **POST** /domains/{id}/renew | Submit a domain renewal request and generate the renewal invoice |
| [**postDomainSearch**](DomainsApi.md#postDomainSearch) | **POST** /domains/search/{name} | Get the full order form data for a hostname in one round-trip (search → order preview) |
| [**postDomainTransfer**](DomainsApi.md#postDomainTransfer) | **POST** /domains/{id}/transfer | Re-poll OpenSRS transfer status for a domain order via POST |
| [**putDomains**](DomainsApi.md#putDomains) | **PUT** /domains/order | Preview per-TLD field requirements for a domain order — no commit |
| [**updateDomainContact**](DomainsApi.md#updateDomainContact) | **POST** /domains/{id}/contact | Update registrant/admin contact details and push them to OpenSRS |
| [**updateDomainInfo**](DomainsApi.md#updateDomainInfo) | **POST** /domains/{id} | POST mutation hook for the domain detail page (use dedicated ops where possible) |
| [**updateDomainNameservers**](DomainsApi.md#updateDomainNameservers) | **PUT** /domains/{id}/nameservers | Replace the full authoritative-nameserver delegation list at the registrar |
| [**updateDomainWhoisPrivacy**](DomainsApi.md#updateDomainWhoisPrivacy) | **POST** /domains/{id}/whois | Order, enable, or cancel the Whois privacy add-on for a domain |


<a name="addDomain"></a>
# **addDomain**
> ServiceOrderPostResponse addDomain(DomainOrderRequest)

Place a new domain registration or transfer order, generate billing invoice

    Places a new domain registration or transfer order. Resolves the TLD to a &#x60;services_id&#x60;, runs &#x60;validate_buy_domain()&#x60; (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls &#x60;place_buy_domain()&#x60; to create the &#x60;Repeat_Invoice&#x60; recurring billing row, generate the initial &#x60;invoices&#x60; row, and (when &#x60;whois_privacy&#x3D;enable&#x60;) an additional add-on &#x60;Repeat_Invoice&#x60; for privacy. **Real money** — call &#x60;putDomains&#x60; then &#x60;patchDomains&#x60; first to preview and validate. Sibling ops: &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;putDomains&#x60;, &#x60;patchDomains&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or form):** - &#x60;hostname&#x60; (string, required) — FQDN to register or transfer. - &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;. - &#x60;whois_privacy&#x60; (string, optional) — &#x60;enable&#x60; to add the privacy add-on (separate recurring invoice). - &#x60;coupon&#x60; (string, optional) — coupon code. - All per-TLD contact/registration fields from &#x60;putDomains.domainFields&#x60; (registrant contact details, TLD-specific fields like nexus codes, EPP &#x60;auth_info&#x60; for transfers, etc.).  **Returns** (schema &#x60;ServiceOrderPostResponse&#x60;): &#x60;{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60; to fund the order.  **Side effects:** - Inserts &#x60;domains&#x60; service row in &#x60;pending&#x60; status. - Inserts &#x60;repeat_invoices&#x60; row for recurring renewal. - Inserts &#x60;invoices&#x60; row for the first-period charge. - When &#x60;whois_privacy&#x3D;enable&#x60;: inserts a separate add-on &#x60;repeat_invoices&#x60; row + its initial invoice. - For transfers: stores &#x60;auth_info&#x60; and marks &#x60;service_extra&#x60; as &#x60;transfer&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400 Missing hostname parameter&#x60;. - &#x60;400 Unable to determine service type for this domain TLD.&#x60;. - &#x60;401&#x60; — unauthenticated. - &#x60;422&#x60; — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined &#x60;errors&#x60; array from &#x60;validate_buy_domain()&#x60;.  **Related calls:** - **Prerequisites:** &#x60;getDomainLookup&#x60; → &#x60;getNewDomain&#x60; → &#x60;putDomains&#x60; → &#x60;patchDomains&#x60;. - **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;. - **Verify activation:** &#x60;getDomainInfo&#x60; (poll for &#x60;domain_status&#x3D;&#39;active&#39;&#x60;). - **Track in-progress transfer:** &#x60;getDomainTransfer&#x60;. - **For pending transfers needing EPP/auth_info:** &#x60;updateDomainContact&#x60; (set &#x60;auth_info&#x60;).  **Example happy path (register):** &#x60;&#x60;&#x60;text GET /apiv2/domains/lookup/example.com           -&gt; available, pricing, fields PUT /apiv2/domains/order { hostname, type }     -&gt; domainFields PATCH /apiv2/domains/order { hostname, ...fields } -&gt; \&quot;success\&quot; POST /apiv2/domains/order { hostname, type, ...fields } -&gt; { serviceid, real_iids } GET /apiv2/billing/pay/cc/{real_iids[0]}        -&gt; pay GET /apiv2/domains/{serviceid}                  -&gt; poll until domain_status&#x3D;&#x3D;\&quot;active\&quot; &#x60;&#x60;&#x60; 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **DomainOrderRequest** | [**DomainOrderRequest**](../Models/DomainOrderRequest.md)|  | |

### Return type

[**ServiceOrderPostResponse**](../Models/ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addDomainDnssec"></a>
# **addDomainDnssec**
> SuccessTextResponse addDomainDnssec(id, DomainDnssecRequest)

Register DNSSEC DS records on the domain at OpenSRS

    Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call &#x60;getDomainDnssec&#x60; to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use &#x60;deleteDomainDnssec&#x60;. Sibling ops: &#x60;getDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields (JSON or multipart, parallel arrays — &#x60;algorithm[0]&#x60; pairs with &#x60;key_tag[0]&#x60;, etc., schema &#x60;DomainDnssecRequest&#x60;):** - &#x60;algorithm[]&#x60; (integer) — DNSKEY algorithm (e.g. 8 &#x3D; RSASHA256, 13 &#x3D; ECDSAP256SHA256). - &#x60;key_tag[]&#x60; (integer) — must be &lt; 65536. - &#x60;digest_type[]&#x60; (integer) — &#x60;1&#x60; (SHA-1, 40 hex chars), &#x60;2&#x60; (SHA-256, 64), &#x60;3&#x60; (GOST, 64), &#x60;4&#x60; (SHA-384, 96). - &#x60;digest[]&#x60; (string) — hex digest; length must match &#x60;digest_type[i]&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60; on registrar confirmation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60; or registrar refused. - &#x60;422&#x60; — &#x60;key_tag &gt;&#x3D; 65536&#x60; or digest length mismatch.  **Related calls:** - **Verify propagation:** &#x60;getDomainDnssec&#x60;. - **Clear all records:** &#x60;deleteDomainDnssec&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **DomainDnssecRequest** | [**DomainDnssecRequest**](../Models/DomainDnssecRequest.md)|  | |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

<a name="addDomainNameserver"></a>
# **addDomainNameserver**
> TextResponse addDomainNameserver(id, DomainNameserverPostRequest)

Register a new nameserver host with glue IP at the registry (registered nameserver)

    Adds a registered nameserver (host + glue IP) for the domain at the registrar via &#x60;opensrs_create_nameserver&#x60;. Use when running your own authoritative nameservers under the domain itself (e.g. &#x60;ns1.example.com&#x60;, &#x60;ns2.example.com&#x60;). **Glue records, not delegation:** this registers the host&#39;s IP at the registry; the domain&#39;s delegation must separately point at these names via &#x60;updateDomainNameservers&#x60;. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;deleteDomainNameserver&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields (schema &#x60;DomainNameserverPostRequest&#x60;):** - &#x60;name&#x60; (string, required) — FQDN of the nameserver (e.g. &#x60;ns1.example.com&#x60;). Validated by &#x60;valid_hostname()&#x60;. - &#x60;ipAddress&#x60; (string, required) — IPv4 address. Validated by &#x60;validIp()&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60; on success.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;422&#x60; — invalid hostname or IP, or registrar refused.  **Related calls:** - **Verify glue record:** &#x60;getDomainNameservers&#x60;. - **Use this nameserver in delegation:** &#x60;updateDomainNameservers&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **DomainNameserverPostRequest** | [**DomainNameserverPostRequest**](../Models/DomainNameserverPostRequest.md)|  | |

### Return type

[**TextResponse**](../Models/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

<a name="cancelDomain"></a>
# **cancelDomain**
> CancelDomain_200_response cancelDomain(id)

Cancel a domain order in the billing system to stop auto-renewals

    Stops billing and auto-renewal for a domain in the customer account by setting the service to &#x60;canceled&#x60; via the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#39;domains&#39;&#x60;. **Important:** this only stops billing on InterServer&#39;s side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: &#x60;getDomainInfo&#x60; (verify status), &#x60;getDomainsList&#x60;, &#x60;postDomainRenewal&#x60; (re-activate before expiry).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** &#x60;DomainsCancelResponse&#x60; — confirmation envelope.  **Side effects:** - Sets &#x60;domain_status&#x3D;&#39;canceled&#39;&#x60;. - Marks the &#x60;repeat_invoices&#x60; row non-renewing — no future renewal invoices generated. - Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — already canceled.  **Related calls:** - **Re-activate before expiry:** &#x60;postDomainRenewal&#x60;. - **Verify status:** &#x60;getDomainInfo&#x60;. - **Sibling cancels on other modules:** &#x60;VPSCancel&#x60;, &#x60;mailCancel&#x60;, &#x60;webhostingCancel&#x60;, etc. (same &#x60;CancelService&#x60; handler). 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**CancelDomain_200_response**](../Models/CancelDomain_200_response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteDomainDnssec"></a>
# **deleteDomainDnssec**
> SuccessTextResponse deleteDomainDnssec(id)

Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)

    Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with &#x60;getDomainDnssec&#x60; to confirm. To remove records selectively, replace the set via &#x60;addDomainDnssec&#x60; instead. Sibling ops: &#x60;getDomainDnssec&#x60;, &#x60;addDomainDnssec&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body:** None — removes the full DS record set.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - Registrar error surfaced as 4xx.  **Related calls:** - **Verify propagation:** &#x60;getDomainDnssec&#x60;. - **Replace records selectively:** &#x60;addDomainDnssec&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteDomainNameserver"></a>
# **deleteDomainNameserver**
> TextResponse deleteDomainNameserver(id, index)

Remove one registered nameserver glue record from the domain

    Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS &#x60;nsGet&#x60; to resolve the entry by index, then &#x60;nsDelete&#x60;. Per-entry — to replace the full delegation set use &#x60;updateDomainNameservers&#x60; instead. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;updateDomainNameservers&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Query params:** - &#x60;index&#x60; (integer, required) — zero-based index from &#x60;getDomainNameservers&#x60; array — or alternatively pass &#x60;name&#x60; + &#x60;ip&#x60; to target by value.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;422&#x60; — &#x60;index&#x60; out of range or &#x60;name&#x60;/&#x60;ip&#x60; not provided. - Registrar errors surfaced as 4xx.  **Related calls:** - **List candidates:** &#x60;getDomainNameservers&#x60;. - **Replace delegation entirely:** &#x60;updateDomainNameservers&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **index** | **Integer**| The index of the registered nameserver from the registered nameservers list to delete.   | [default to null] |

### Return type

[**TextResponse**](../Models/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainContact"></a>
# **getDomainContact**
> DomainContactDetails getDomainContact(id)

Read the current registrant/admin/tech/billing contact field set for a domain

    Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a &#x60;transfer&#x60; selector and the EPP &#x60;auth_info&#x60; code so the client can resubmit. Read-only. Sibling ops: &#x60;updateDomainContact&#x60; (push changes to OpenSRS), &#x60;getDomainInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns** (schema &#x60;DomainContactDetails&#x60;): - &#x60;firstname&#x60;, &#x60;lastname&#x60;, &#x60;email&#x60;. - &#x60;address&#x60;, &#x60;address2&#x60;, &#x60;address3&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;country&#x60;. - &#x60;phone&#x60;, &#x60;fax&#x60; (E.164 format expected). - &#x60;company&#x60; (optional). - &#x60;auth_info&#x60; (string) — EPP/transfer code (present on transfer services). - &#x60;transfer&#x60; (string &#x60;yes&#x60;/&#x60;no&#x60;) — selector for pending transfer services.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Update:** &#x60;updateDomainContact&#x60;. - **Transfer status:** &#x60;getDomainTransfer&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**DomainContactDetails**](../Models/DomainContactDetails.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainDnssec"></a>
# **getDomainDnssec**
> DomainDnssecRecords getDomainDnssec(id)

Read the DNSSEC DS record set currently registered with the registrar

    Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before &#x60;addDomainDnssec&#x60; (which replaces the set). Sibling ops: &#x60;addDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns** (schema &#x60;DomainDnssecRecords&#x60;): - &#x60;records&#x60; (array) — DS entries:   - &#x60;algorithm&#x60; (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).   - &#x60;key_tag&#x60; (integer, &lt; 65536).   - &#x60;digest_type&#x60; (integer) — &#x60;1&#x60; (SHA-1), &#x60;2&#x60; (SHA-256), &#x60;3&#x60; (GOST), &#x60;4&#x60; (SHA-384).   - &#x60;digest&#x60; (string, hex) — length depends on &#x60;digest_type&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Replace records:** &#x60;addDomainDnssec&#x60;. - **Clear all records:** &#x60;deleteDomainDnssec&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**DomainDnssecRecords**](../Models/DomainDnssecRecords.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainInfo"></a>
# **getDomainInfo**
> Domain getDomainInfo(id)

Read full billing, registrar, and service detail for one domain

    Returns the full &#x60;ViewDomain&#x60; payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and &#x60;client_links&#x60; for related dashboard actions. Read-only. Internal &#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60; are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll &#x60;domain_status&#x60; after &#x60;addDomain&#x60;. Sibling ops: &#x60;getDomainContact&#x60;, &#x60;getDomainNameservers&#x60;, &#x60;getDomainDnssec&#x60;, &#x60;getDomainWhoisPrivacy&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;updateDomainInfo&#x60;, &#x60;CancelDomain&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns** (schema &#x60;Domain&#x60;): - &#x60;serviceInfo&#x60; — &#x60;domain_id&#x60;, &#x60;domain_hostname&#x60;, &#x60;domain_status&#x60;, &#x60;domain_expire_date&#x60;, lock state, registrar metadata. - &#x60;serviceType&#x60; — TLD service row. - &#x60;client_links&#x60; (array) — &#x60;{name, link, icon}&#x60; for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.  **Auth:** Session/API key. Ownership enforced via &#x60;domain_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Contact:** &#x60;getDomainContact&#x60; / &#x60;updateDomainContact&#x60;. - **Nameservers:** &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60;. - **DNSSEC:** &#x60;getDomainDnssec&#x60; / &#x60;addDomainDnssec&#x60; / &#x60;deleteDomainDnssec&#x60;. - **Whois privacy:** &#x60;getDomainWhoisPrivacy&#x60; / &#x60;updateDomainWhoisPrivacy&#x60;. - **Billing:** &#x60;getDomainInvoices&#x60;, &#x60;getDomainRenewal&#x60; / &#x60;postDomainRenewal&#x60;. - **Transfer status:** &#x60;getDomainTransfer&#x60;. - **Cancel:** &#x60;CancelDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**Domain**](../Models/Domain.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainInvoices"></a>
# **getDomainInvoices**
> ChargeInvoiceRows getDomainInvoices(id)

List all billing invoices scoped to one domain order

    Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#39;domains&#39;&#x60;. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;postDomainRenewal&#x60;, &#x60;updateDomainWhoisPrivacy&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingInvoice&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, paid, description, date, due_date, currency, module: \&quot;domains\&quot;, service: &lt;id&gt;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Renew:** &#x60;postDomainRenewal&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**ChargeInvoiceRows**](../Models/ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainLookup"></a>
# **getDomainLookup**
> DomainLookupResponse getDomainLookup(name)

Check availability, premium status, and pricing for a specific domain

    Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via &#x60;domainlookup&#x60; cache). Repeated lookups within a short window may return cached results from the &#x60;domainlookup&#x60; table. Use as step 1 of an order: discover availability and pricing, then call &#x60;addDomain&#x60; to commit. Sibling ops: &#x60;getDomainSearch&#x60; (suggestions), &#x60;getNewDomain&#x60; (catalog), &#x60;addDomain&#x60;, &#x60;postDomainSearch&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — full FQDN (e.g. &#x60;example.com&#x60;).  **Returns** (schema &#x60;DomainLookupResponse&#x60;): - &#x60;available&#x60; (bool) — registerable now. - &#x60;premium&#x60; (bool) — premium-name pricing (often &gt; $100). - &#x60;website&#x60; (bool) — same hostname is already a webhosting service on this account. - &#x60;domain_service&#x60; (bool) — same hostname is already a domain on this account. - &#x60;service&#x60; (object) — &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_field1&#x60; (TLD), &#x60;services_module&#x60;. - &#x60;whois_privacy&#x60; (bool) — privacy add-on available for this TLD. - &#x60;new&#x60;, &#x60;renewal&#x60;, &#x60;transfer&#x60; (float) — base USD prices (with profit markup). - &#x60;fields&#x60; (object) — per-TLD order form schema (labels, options, current account values). - &#x60;currencies&#x60; (object) — &#x60;{&lt;code&gt;: {services_cost, new, renewal, transfer}}&#x60; converted to each enabled currency.  **Auth:** Public (no auth required).  **Errors:** - &#x60;422 Invalid Domain&#x60; — &#x60;valid_domain()&#x60; rejected input.  **Related calls:** - **Brainstorm alternatives:** &#x60;getDomainSearch&#x60;. - **Place order:** &#x60;addDomain&#x60; with the resolved &#x60;service.services_id&#x60; and &#x60;fields&#x60;. - **TLD catalog:** &#x60;getNewDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| The full domain name to look up (for example &#x60;example.com&#x60;). | [default to null] |

### Return type

[**DomainLookupResponse**](../Models/DomainLookupResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainNameservers"></a>
# **getDomainNameservers**
> DomainNameserverGetResponse getDomainNameservers(id)

List registered nameserver hosts and glue IP addresses for a domain

    Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (&#x60;host.example.com&#x60; + glue IP records the registrant has created at the registry), NOT the domain&#39;s delegation NS records. To replace the delegation set, use &#x60;updateDomainNameservers&#x60;. Empty array means no glue records are registered. Sibling ops: &#x60;addDomainNameserver&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;deleteDomainNameserver&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns** (schema &#x60;DomainNameserverGetResponse&#x60;): - Array of &#x60;{name, ipaddress, sortorder}&#x60; — use the zero-based array index when calling &#x60;deleteDomainNameserver&#x60; with &#x60;index&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;5xx&#x60; — registrar communication failure.  **Related calls:** - **Add glue record:** &#x60;addDomainNameserver&#x60;. - **Replace delegation set:** &#x60;updateDomainNameservers&#x60;. - **Remove glue record:** &#x60;deleteDomainNameserver&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**DomainNameserverGetResponse**](../Models/DomainNameserverGetResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainRenewal"></a>
# **getDomainRenewal**
> SuccessTextResponse getDomainRenewal(id)

Read renewal pricing, expiry, and whether a renewal invoice already exists

    Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering &#x60;postDomainRenewal&#x60; to render a renewal form and prevent duplicate invoices. Costs are converted to the customer&#39;s preferred currency. Sibling ops: &#x60;postDomainRenewal&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getDomainInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** - &#x60;renewCost&#x60; (float) — renewal cost in &#x60;currency&#x60;. - &#x60;whoisCost&#x60; (float) — Whois privacy renewal cost. - &#x60;whoisAvailable&#x60; (bool) — privacy supported on this TLD. - &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string). - &#x60;expiryDate&#x60; (string). - &#x60;alreadyInvoiced&#x60; (bool) — a renewal &#x60;Repeat_Invoice&#x60; already produced an invoice. - &#x60;invoicePaid&#x60; (bool) — whether that invoice is paid. - &#x60;tld&#x60; (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - &#x60;4xx&#x60; — renewal not available for this TLD.  **Related calls:** - **Submit renewal:** &#x60;postDomainRenewal&#x60;. - **Pay existing renewal invoice:** &#x60;getDomainInvoices&#x60; → &#x60;initiatePayment&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainSearch"></a>
# **getDomainSearch**
> DomainSearchResponse getDomainSearch(name)

Get registrar-suggested domain alternatives and bulk availability for a search term

    Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with &#x60;getDomainLookup&#x60; to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: &#x60;postDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — search term (e.g. &#x60;example&#x60; or &#x60;example.com&#x60;).  **Returns** (schema &#x60;DomainSearchResponse&#x60;): - &#x60;success&#x60; (bool) — registrar call succeeded. - &#x60;response_text&#x60; (string) — registrar response message. - &#x60;response_time&#x60; (float) — registrar latency (seconds). - &#x60;lookup&#x60; (array) — exact-match availability across the searched TLD set. - &#x60;suggest&#x60; (array) — registrar&#39;s recommended alternative names with availability. - &#x60;tlds&#x60; (array) — TLDs queried.  **Auth:** Public.  **Errors:** - &#x60;422 Invalid Search Response!&#x60; — registrar returned no usable results.  **Related calls:** - **Single-domain detail:** &#x60;getDomainLookup&#x60;. - **One-shot order preview from a search term:** &#x60;postDomainSearch&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| The base domain name to search (for example &#x60;example&#x60; or &#x60;example.com&#x60;). | [default to null] |

### Return type

[**DomainSearchResponse**](../Models/DomainSearchResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainTransfer"></a>
# **getDomainTransfer**
> SuccessTextResponse getDomainTransfer(id)

Read OpenSRS transfer status for an in-progress domain transfer order

    Returns the OpenSRS transfer state for a domain order flagged as a transfer in &#x60;service_extra&#x60;. Use to poll an in-progress transfer; &#x60;pending_owner&#x60; means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: &#x60;postDomainTransfer&#x60; (re-poll), &#x60;getDomainContact&#x60; (set &#x60;auth_info&#x60;), &#x60;addDomain&#x60; (initiate new transfer).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** - When not a transfer: &#x60;{transfer: false, message: \&quot;...\&quot;}&#x60;. - When a transfer: &#x60;{transfer: true, info: {status, statusText, type, transferrable, reason}}&#x60; where &#x60;status&#x60; is one of:   - &#x60;pending&#x60; — submitted to OpenSRS, awaiting state change.   - &#x60;pending_owner&#x60; — **customer action required** (approve the OpenSRS email).   - &#x60;pending_admin&#x60; — InterServer staff review.   - &#x60;pending_registry&#x60; — registry processing.   - &#x60;declined&#x60; — transfer rejected (see &#x60;reason&#x60;).   - &#x60;completed&#x60; — transfer landed.   - &#x60;undef&#x60; — unknown.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;. - Registrar communication failures returned as errors.  **Related calls:** - **Re-poll:** &#x60;postDomainTransfer&#x60;. - **Update auth_info:** &#x60;updateDomainContact&#x60;. - **Initiate new transfer:** &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainWhoisPrivacy"></a>
# **getDomainWhoisPrivacy**
> SuccessTextResponse getDomainWhoisPrivacy(id)

Read Whois privacy availability, current state, and add-on pricing for a domain

    Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it&#39;s currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. &#x60;.us&#x60;, &#x60;.uk&#x60;, country-code variants) do not allow privacy regardless of pricing. Sibling op: &#x60;updateDomainWhoisPrivacy&#x60; (order/enable/disable).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** - &#x60;available&#x60; (bool) — privacy supported for this TLD (via &#x60;get_domain_tld_whois_privacy()&#x60;). - &#x60;cost&#x60; (float) — annual privacy cost in &#x60;currency&#x60;. - &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string). - &#x60;whoisPrivacy&#x60; (string enum) — &#x60;enabled&#x60; / &#x60;disabled&#x60; (live OpenSRS state). - &#x60;repeatInvoice&#x60; (object|null) — current privacy add-on &#x60;Repeat_Invoice&#x60; row, if one exists.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Order/enable/disable:** &#x60;updateDomainWhoisPrivacy&#x60;. - **Billing:** &#x60;getDomainInvoices&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainsList"></a>
# **getDomainsList**
> List getDomainsList()

List every domain registration on the account with billing and registration metadata

    Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a &#x60;domain_id&#x60; to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;getNewDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;addDomain&#x60;, &#x60;CancelDomain&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;DomainRow&#x60;: - &#x60;domain_id&#x60; (string) — canonical id; pass to every &#x60;/domains/{id}/*&#x60; endpoint. - &#x60;domain_hostname&#x60; (string) — registered FQDN. - &#x60;domain_expire_date&#x60; (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown. - &#x60;cost&#x60; (decimal string) — recurring renewal cost in the domain&#39;s billing currency. - &#x60;domain_status&#x60; (string enum) — &#x60;pending&#x60; / &#x60;active&#x60; / &#x60;expired&#x60; / &#x60;canceled&#x60; / &#x60;pending-transfer&#x60;.  **Auth:** Session/API key. Filtered by &#x60;domain_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-domain detail:** &#x60;getDomainInfo&#x60;. - **Manage:** &#x60;getDomainContact&#x60; / &#x60;updateDomainContact&#x60;, &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60;, &#x60;getDomainDnssec&#x60; / &#x60;addDomainDnssec&#x60;, &#x60;getDomainWhoisPrivacy&#x60; / &#x60;updateDomainWhoisPrivacy&#x60;. - **Renew / transfer:** &#x60;getDomainRenewal&#x60; / &#x60;postDomainRenewal&#x60;, &#x60;getDomainTransfer&#x60;. - **Order a new domain:** &#x60;getDomainLookup&#x60; → &#x60;getNewDomain&#x60; → &#x60;addDomain&#x60;. - **Cancel:** &#x60;CancelDomain&#x60;. 

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/DomainRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDomainsWelcomeEmail"></a>
# **getDomainsWelcomeEmail**
> SuccessTextResponse getDomainsWelcomeEmail(id)

Resend the domain welcome email with registration details and management instructions

    Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer&#39;s address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getMailWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body:** None.  **Returns:** &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Side effects:** - Sends an email to the account&#39;s billing email address.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409 Service is not active&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Domain detail:** &#x60;getDomainInfo&#x60;. - **Contact info:** &#x60;getDomainContact&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNewDomain"></a>
# **getNewDomain**
> DomainOrder getNewDomain()

Read the buyable domain TLD service catalog and Whois privacy pricing

    Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname&#39;s TLD to a &#x60;service_id&#x60; for ordering, or to render a TLD picker. Pair with &#x60;getDomainLookup&#x60; for per-domain pricing and &#x60;addDomain&#x60; to commit. Sibling ops: &#x60;getDomainLookup&#x60;, &#x60;putDomains&#x60;, &#x60;patchDomains&#x60;, &#x60;addDomain&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;DomainOrder&#x60;): - &#x60;whoisPrivacyCost&#x60; (float) — base per-year privacy cost (&#x60;OPENSRS_PRIVACY_COST&#x60; constant). - &#x60;whoisPrivacyCostTotal&#x60; (object) — privacy cost per TLD multiplied by that TLD&#39;s term length: &#x60;{&lt;tld&gt;: &lt;total-cost&gt;}&#x60;. - &#x60;services&#x60; (object) — &#x60;{&lt;services_id&gt;: {services_name, services_cost, services_field1 (tld), ...}}&#x60;. &#x60;services_ourcost&#x60; is stripped. - &#x60;tldServices&#x60; (object) — TLD → &#x60;services_id&#x60; lookup map (e.g. &#x60;{\&quot;com\&quot;: 100, \&quot;net\&quot;: 101, \&quot;io\&quot;: 234}&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-domain pricing:** &#x60;getDomainLookup&#x60;. - **Preview order fields:** &#x60;putDomains&#x60;. - **Validate fields:** &#x60;patchDomains&#x60;. - **Place order:** &#x60;addDomain&#x60;. 

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainOrder**](../Models/DomainOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="patchDomains"></a>
# **patchDomains**
> patchDomains(DomainOrderRequest)

Validate posted domain-order field values before committing — dry run

    Validates posted contact/registration field values via &#x60;validate_domain_fields()&#x60;. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP &#x60;auth_info&#x60; syntax for transfers, etc.). Use as the last step before &#x60;addDomain&#x60; to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: &#x60;putDomains&#x60;, &#x60;addDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;.  **Body fields:** - &#x60;hostname&#x60; (string, required). - &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;. - All per-TLD fields from &#x60;putDomains.domainFields&#x60;.  **Returns:** &#x60;\&quot;success\&quot;&#x60; (string) when all fields validate; otherwise an &#x60;errors&#x60; object describing the failing fields and per-field validation messages.  **Auth:** Session/API key.  **Errors:** - &#x60;400 Missing hostname parameter&#x60;. - &#x60;400 Unable to determine service type for this domain TLD.&#x60;. - &#x60;401&#x60; — unauthenticated. - Validation error object — fields-level failures.  **Related calls:** - **Schema:** &#x60;putDomains&#x60; (returns the field set to validate). - **Commit:** &#x60;addDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **DomainOrderRequest** | [**DomainOrderRequest**](../Models/DomainOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="postDomainRenewal"></a>
# **postDomainRenewal**
> SuccessTextResponse postDomainRenewal(id)

Submit a domain renewal request and generate the renewal invoice

    Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain&#39;s &#x60;Repeat_Invoice&#x60; cost/frequency/currency to the current price, then calls &#x60;Repeat_Invoice::invoice()&#x60; to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: &#x60;getDomainRenewal&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;initiatePayment&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields:** - &#x60;whois_privacy&#x60; (string, optional) — &#x60;enable&#x60; to add or keep the privacy add-on; otherwise the existing privacy &#x60;Repeat_Invoice&#x60; is marked &#x60;deleted&#x3D;1&#x60; on renewal.  **Returns:** &#x60;{text, invoices, invoiceIds, payUrl}&#x60; — pass &#x60;invoiceIds&#x60; to &#x60;initiatePayment&#x60; to settle.  **Side effects:** - Updates &#x60;repeat_invoices&#x60; cost/frequency/currency. - Inserts a new &#x60;invoices&#x60; row for the renewal period. - When &#x60;whois_privacy&#x3D;enable&#x60;: extends the privacy add-on &#x60;repeat_invoices&#x60; and creates its renewal invoice. - When &#x60;whois_privacy&#x60; not enabled: marks the existing privacy &#x60;repeat_invoices&#x60; row &#x60;deleted&#x3D;1&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;, or unpaid renewal invoice already exists, or already-paid renewal exists. - Registrar errors surfaced as 4xx.  **Related calls:** - **Preview:** &#x60;getDomainRenewal&#x60;. - **Pay:** &#x60;initiatePayment&#x60; with the returned &#x60;invoiceIds&#x60;. - **Cancel auto-renew:** &#x60;CancelDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="postDomainSearch"></a>
# **postDomainSearch**
> postDomainSearch(name)

Get the full order form data for a hostname in one round-trip (search → order preview)

    Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling &#x60;getDomainLookup&#x60; + &#x60;getNewDomain&#x60; + &#x60;putDomains&#x60; and merging the results, but with one round-trip. The path &#x60;name&#x60; is moved server-side into &#x60;$_POST[&#39;hostname&#39;]&#x60; and passed to &#x60;getOrderDomainData(true)&#x60;. Sibling ops: &#x60;getDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — hostname (e.g. &#x60;example.com&#x60;).  **Body:** None.  **Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for &#x60;addDomain&#x60;.  **Auth:** Session/API key (path is &#x60;client_api&#x60;, but called publicly).  **Errors:** - &#x60;4xx&#x60; — hostname cannot be resolved to a TLD service.  **Related calls:** - **Place order:** &#x60;addDomain&#x60; with the returned fields. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| The base domain name to search (for example &#x60;example&#x60; or &#x60;example.com&#x60;). | [default to null] |

### Return type

null (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="postDomainTransfer"></a>
# **postDomainTransfer**
> SuccessTextResponse postDomainTransfer(id)

Re-poll OpenSRS transfer status for a domain order via POST

    Re-polls OpenSRS transfer state. Behaves identically to &#x60;getDomainTransfer&#x60; (same &#x60;go()&#x60; handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;. Sibling ops: &#x60;getDomainTransfer&#x60;, &#x60;addDomain&#x60; (initiate), &#x60;getDomainContact&#x60; (set &#x60;auth_info&#x60;).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body:** None.  **Returns:** Same payload as &#x60;getDomainTransfer&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read:** &#x60;getDomainTransfer&#x60;. - **Initiate new transfer:** &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="putDomains"></a>
# **putDomains**
> putDomains(DomainOrderRequest)

Preview per-TLD field requirements for a domain order — no commit

    Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: &#x60;.us&#x60; requires nexus codes, &#x60;.ca&#x60; requires CIRA legal type, &#x60;.eu&#x60; has residency rules, &#x60;.fr&#x60; requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use &#x60;patchDomains&#x60; to validate filled values, then &#x60;addDomain&#x60; to place the order. Sibling ops: &#x60;getNewDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;patchDomains&#x60;, &#x60;addDomain&#x60;.  **Body fields:** - &#x60;hostname&#x60; (string, required) — FQDN. - &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;. - &#x60;coupon&#x60; (string, optional) — coupon code.  **Returns:** &#x60;{domainFields: {&lt;field_name&gt;: {label, type, options, value, required, ...}}}&#x60; — schema for the dynamic order form.  **Auth:** Session/API key.  **Errors:** - &#x60;400 Missing hostname parameter&#x60;. - &#x60;400 Unable to determine service type for this domain TLD.&#x60; — unknown TLD. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Catalog first:** &#x60;getNewDomain&#x60;. - **Validate filled values:** &#x60;patchDomains&#x60;. - **Place order:** &#x60;addDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **DomainOrderRequest** | [**DomainOrderRequest**](../Models/DomainOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDomainContact"></a>
# **updateDomainContact**
> SuccessTextResponse updateDomainContact(id, DomainContactDetails)

Update registrant/admin contact details and push them to OpenSRS

    Pushes updated contact data to the registrar via OpenSRS &#x60;provModify&#x60;, applied to admin/tech/billing/owner contact roles via &#x60;also_apply_to&#x60;. Active services apply changes immediately at the registrar; pending services may trigger &#x60;queue_process_payment&#x60; when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. &#x60;.com&#x60;, &#x60;.net&#x60;) require a 60-day transfer lock per ICANN rules. Sibling ops: &#x60;getDomainContact&#x60;, &#x60;getDomainInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields (JSON or multipart, schema &#x60;DomainContactDetails&#x60;):** Same fields returned by &#x60;getDomainContact&#x60;: &#x60;firstname&#x60;, &#x60;lastname&#x60;, &#x60;email&#x60;, &#x60;address&#x60;/&#x60;2&#x60;/&#x60;3&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;country&#x60;, &#x60;phone&#x60;, &#x60;fax&#x60;, &#x60;company&#x60;, optional &#x60;auth_info&#x60;, optional &#x60;transfer&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Side effects:** - Calls OpenSRS &#x60;provModify&#x60; with &#x60;also_apply_to&#x3D;admin,tech,billing,owner&#x60;. - May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — domain is locked (unlock first). - Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.  **Related calls:** - **Read first:** &#x60;getDomainContact&#x60;. - **Transfer status:** &#x60;getDomainTransfer&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **DomainContactDetails** | [**DomainContactDetails**](../Models/DomainContactDetails.md)|  | |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

<a name="updateDomainInfo"></a>
# **updateDomainInfo**
> SuccessTextResponse updateDomainInfo(id)

POST mutation hook for the domain detail page (use dedicated ops where possible)

    Account-level write-back hook for the domain service record. Runs the same &#x60;View::go()&#x60; handler as &#x60;getDomainInfo&#x60; — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;updateDomainContact&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;addDomainDnssec&#x60;, &#x60;updateDomainWhoisPrivacy&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body:** Form fields matching the domain service record.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Prefer these dedicated endpoints:** - **Registrant/admin contact:** &#x60;updateDomainContact&#x60; (pushes to OpenSRS). - **Nameservers:** &#x60;updateDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;deleteDomainNameserver&#x60;. - **DNSSEC:** &#x60;addDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;. - **Whois privacy:** &#x60;updateDomainWhoisPrivacy&#x60;. - **Renew:** &#x60;postDomainRenewal&#x60;. - **Cancel:** &#x60;CancelDomain&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateDomainNameservers"></a>
# **updateDomainNameservers**
> TextResponse updateDomainNameservers(id, DomainNameserverPutRequest)

Replace the full authoritative-nameserver delegation list at the registrar

    Atomically replaces the domain&#39;s authoritative-nameserver delegation list via OpenSRS &#x60;nsAdvancedUpdt&#x60; with &#x60;op_type&#x3D;assign&#x60;. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer &#x60;cdns1&#x60;/&#x60;cdns2&#x60;, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use &#x60;addDomainNameserver&#x60;. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;deleteDomainNameserver&#x60;, &#x60;addDnsDomain&#x60; (host a zone at InterServer).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields (JSON or multipart, schema &#x60;DomainNameserverPutRequest&#x60;):** - &#x60;nameserver[]&#x60; (array of strings, required) — FQDN strings (e.g. &#x60;[\&quot;ns1.example.com\&quot;, \&quot;ns2.example.com\&quot;]&#x60;). Trimmed; empty entries dropped server-side.  **Returns:** &#x60;SuccessTextResponse&#x60; on registrar &#x60;is_success&#x3D;1&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60; or domain locked. - Registrar errors surfaced as 4xx.  **Related calls:** - **Read current set:** &#x60;getDomainNameservers&#x60;. - **Register a glue record:** &#x60;addDomainNameserver&#x60;. - **Host the DNS zone at InterServer:** &#x60;addDnsDomain&#x60; (DNS tag). 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **DomainNameserverPutRequest** | [**DomainNameserverPutRequest**](../Models/DomainNameserverPutRequest.md)|  | |

### Return type

[**TextResponse**](../Models/TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

<a name="updateDomainWhoisPrivacy"></a>
# **updateDomainWhoisPrivacy**
> SuccessTextResponse updateDomainWhoisPrivacy(id, DomainWhoisPrivacyRequest)

Order, enable, or cancel the Whois privacy add-on for a domain

    Manages the Whois privacy add-on. Behavior branches on &#x60;action&#x60;: - **&#x60;order&#x60;**: creates an add-on &#x60;Repeat_Invoice&#x60; and emits the first invoice; pass the returned &#x60;payUrl&#x60; to the customer or use &#x60;initiatePayment&#x60; with &#x60;invoiceId&#x60;. **Real money.** - **&#x60;enable&#x60;**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls &#x60;post_payment_processing_new&#x60;). - **&#x60;disableCancel&#x60;**: disables Whois privacy at OpenSRS and marks the add-on &#x60;Repeat_Invoice&#x60; &#x60;deleted&#x3D;1&#x60;. - **(no action)**: returns current state — same shape as &#x60;getDomainWhoisPrivacy&#x60;.  Sibling ops: &#x60;getDomainWhoisPrivacy&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;initiatePayment&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Body fields (JSON or multipart, schema &#x60;DomainWhoisPrivacyRequest&#x60;):** - &#x60;action&#x60; (string, optional) — one of &#x60;order&#x60; / &#x60;enable&#x60; / &#x60;disableCancel&#x60;. Omit for status.  **Returns:** (varies by action) - &#x60;order&#x60;: &#x60;{text, invoiceId, repeatInvoiceId, payUrl}&#x60;. - &#x60;enable&#x60; / &#x60;disableCancel&#x60;: &#x60;{text}&#x60;. - No action: &#x60;{whoisPrivacy, cost, currency, currencySymbol}&#x60;.  **Side effects:** - &#x60;order&#x60;: inserts add-on &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows. - &#x60;enable&#x60;: OpenSRS &#x60;provModify&#x60; with privacy&#x3D;on; calls &#x60;post_payment_processing_new&#x60;. - &#x60;disableCancel&#x60;: OpenSRS &#x60;provModify&#x60; with privacy&#x3D;off; marks add-on &#x60;repeat_invoices.deleted&#x3D;1&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;domain_status !&#x3D; \&quot;active\&quot;&#x60; or TLD doesn&#39;t support privacy. - &#x60;4xx&#x60; — no add-on found for &#x60;enable&#x60; / &#x60;disableCancel&#x60;.  **Related calls:** - **Read state:** &#x60;getDomainWhoisPrivacy&#x60;. - **Pay the order invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;). - **Renew with privacy:** &#x60;postDomainRenewal&#x60; with &#x60;whois_privacy&#x3D;enable&#x60;. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;. | [default to null] |
| **DomainWhoisPrivacyRequest** | [**DomainWhoisPrivacyRequest**](../Models/DomainWhoisPrivacyRequest.md)|  | |

### Return type

[**SuccessTextResponse**](../Models/SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

