# SSLCertificatesApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_ssl**](SSLCertificatesApi.md#add_ssl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance
[**get_new_ssl**](SSLCertificatesApi.md#get_new_ssl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order
[**get_ssl_info**](SSLCertificatesApi.md#get_ssl_info) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links
[**get_ssl_invoices**](SSLCertificatesApi.md#get_ssl_invoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id
[**get_ssl_list**](SSLCertificatesApi.md#get_ssl_list) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname
[**get_ssl_welcome_email**](SSLCertificatesApi.md#get_ssl_welcome_email) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions
[**put_ssl**](SSLCertificatesApi.md#put_ssl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl
[**ssl_cancel**](SSLCertificatesApi.md#ssl_cancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle
[**update_ssl_info**](SSLCertificatesApi.md#update_ssl_info) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id


# **add_ssl**
> `add_ssl`(_api::`SSLCertificatesApi`, `ssl_order_request`::`SslOrderRequest`; _mediaType=nothing) -> `ServiceOrderPostResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_ssl`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `ssl_order_request`::`SslOrderRequest`; _mediaType=nothing) -> `Channel`{ `ServiceOrderPostResponse` }, `OpenAPI.Clients.ApiResponse`

Place a new SSL certificate order - creates invoice and queues issuance

[DESTRUCTIVE] Use after putSsl returns continue=true to commit the SSL order. Body (form): frequency (default 12 months), service_type, hostname, csr, coupon_code, plus per-type vars/extra. Re-runs validate_buy_ssl then calls place_buy_ssl which creates the service row, generates invoice (iid/iids/real_iids), and returns serviceId, serviceCost, invoice_description. CA validation is async - issuance takes minutes to hours and may require DNS or email validation post-order. If validation fails, returns continue=false with errors and no charge. Returns 401 unauthenticated, 422 invalid input. Caveat: cert is not active until invoice paid AND CA validation completes. Poll status via getSslInfo; resend instructions via getSslWelcomeEmail.  Sibling ops: `getNewSsl` (catalog), `putSsl` (validate), `getSslInfo` (poll), `getSslInvoices`, `initiatePayment` (settle invoice), `getSslWelcomeEmail`, `sslCancel`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`ssl_order_request`** | [**`SslOrderRequest`**](SslOrderRequest.md) |  |

### Return type

[**`ServiceOrderPostResponse`**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_new_ssl**
> `get_new_ssl`(_api::`SSLCertificatesApi`; _mediaType=nothing) -> `Any`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_new_ssl`(_api::`SSLCertificatesApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Any` }, `OpenAPI.Clients.ApiResponse`

Get available SSL certificate packages and pricing for placing a new order

Use before addSsl to discover which DV/OV/EV certificate types and validation tiers are buyable, plus their costs. Returns object with packageCosts (services_id keyed map of float costs) and serviceTypes (full list of SSL product offerings from the get_service_types event). No parameters required - prices are in the customer's currency. Returns 401 if unauthenticated. Show these to the customer to pick a service_type, then call putSsl to dry-run validation (hostname, CSR, coupon) without charging, then addSsl to commit. Costs do not include taxes or applied coupons — putSsl returns the actual computed price with discounts.  Sibling ops: `putSsl` (validate), `addSsl` (commit), `getSslList` (existing certs), `getSslInfo` (per-cert).

### Required Parameters
This endpoint does not need any parameter.

### Return type

**`Any`**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ssl_info**
> `get_ssl_info`(_api::`SSLCertificatesApi`, `id`::`Int64`; _mediaType=nothing) -> `Any`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_ssl_info`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `Any` }, `OpenAPI.Clients.ApiResponse`

Get full details for one SSL certificate by id - status, expiration, links

Use to inspect a single SSL cert after locating its id via getSslList. Path param id (integer, required) is the ssl_id; cross-account ids return 404 (get_service enforces ownership). Returns the ViewSSL detail payload: hostname, service_type, status, expiration, company, plus client_links (rewrite/reissue/install actions available to the customer). admin_links, settings, csrf are stripped from client responses. Returns 401 unauthenticated, 404 if id not owned by the session customer. Reissue/rekey/install actions surfaced in client_links are time-sensitive and may require fresh DNS validation. Pair with getSslInvoices for billing history, getSslWelcomeEmail to resend, sslCancel to terminate, updateSslInfo to modify settings.  Sibling ops: `updateSslInfo`, `getSslInvoices`, `getSslWelcomeEmail`, `sslCancel`, `getSslList`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`id`** | **`Int64`** | SSL certificate ID number. |

### Return type

**`Any`**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ssl_invoices**
> `get_ssl_invoices`(_api::`SSLCertificatesApi`, `id`::`Int64`; _mediaType=nothing) -> `ChargeInvoiceRows`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_ssl_invoices`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `ChargeInvoiceRows` }, `OpenAPI.Clients.ApiResponse`

List all billing invoices and charges tied to one SSL certificate by id

Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.  Sibling ops: `getSslInfo`, `sslCancel`, `getSslWelcomeEmail`, `getBillingInvoice` (per-invoice detail), `initiatePayment` (settle unpaid).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`id`** | **`Int64`** | SSL Cert ID number |

### Return type

[**`ChargeInvoiceRows`**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ssl_list**
> `get_ssl_list`(_api::`SSLCertificatesApi`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_ssl_list`(_api::`SSLCertificatesApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`

List all SSL certificates on the authenticated customer account with status and hostname

Use to enumerate every SSL certificate (DV/OV/EV) the current customer owns before drilling into a specific cert. Returns an array of SslRow objects with id, hostname, services_name (package), status (pending/active/expired/canceled), and company. No query parameters - results are auto-scoped to the session account_id. Empty array if customer has no certs. Returns 401 if unauthenticated. Pair the returned id with getSslInfo for full details, getSslInvoices for billing, getSslWelcomeEmail to resend credentials, sslCancel to terminate, or addSsl to order a new cert. Status values may be stale relative to CA - issuance/validation can take minutes to hours after order.  Sibling ops: `getSslInfo`, `getNewSsl` (catalog), `addSsl` (order new cert).

### Required Parameters
This endpoint does not need any parameter.

### Return type

`Nothing`

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ssl_welcome_email**
> `get_ssl_welcome_email`(_api::`SSLCertificatesApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_ssl_welcome_email`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Resend the SSL welcome email with cert credentials and install instructions

Use when a customer lost the original welcome email containing CSR submission steps, validation links, or installation guidance for an active SSL cert. Path param id (integer, required) is the ssl_id. Triggers the module's ssl_welcome_email function to re-send to the account's email on file. Returns SuccessTextResponse: text='Welcome Email has been resent.' Returns 401 unauthenticated, 404 if id not found or not owned by session customer ('Invalid Service Passed'), 409 if cert status is not 'active' (pending/canceled/expired certs do not have a welcome email to resend). Caveat: cannot change the destination email - update the account profile first if the customer's address has changed.  Sibling ops: `getSslInfo` (verify status), `sslCancel` (terminate), `updateAccountInfo` (change email first).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`id`** | **`Int64`** | SSL Cert ID number |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_ssl**
> `put_ssl`(_api::`SSLCertificatesApi`, `ssl_order_request`::`SslOrderRequest`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `put_ssl`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `ssl_order_request`::`SslOrderRequest`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`

Validate an SSL certificate order without charging - dry-run before addSsl

Use after getNewSsl and before addSsl to verify hostname, CSR, service_type, frequency, and coupon_code are acceptable without creating an invoice or charging the customer. Body params (form): frequency (months, default 12), service_type, hostname, csr, coupon_code, plus extra/vars per cert type. Returns continue (bool), errors (array), serviceType, serviceCost (after coupon), originalCost, hostname, couponCode. If continue=false the errors array explains what to fix - typical issues are invalid hostname/CSR mismatch, expired coupon, or unsupported service_type. Returns 401 if unauthenticated, 422 on validation failure semantics. No state is mutated. Always run this before addSsl to prevent failed charges. Sibling ops: `getNewSsl` (catalog), `addSsl` (commit).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`ssl_order_request`** | [**`SslOrderRequest`**](SslOrderRequest.md) |  |

### Return type

`Nothing`

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ssl_cancel**
> `ssl_cancel`(_api::`SSLCertificatesApi`, `id`::`Int64`; _mediaType=nothing) -> `SslCancel200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `ssl_cancel`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SslCancel200Response` }, `OpenAPI.Clients.ApiResponse`

Cancel an SSL certificate service - stops renewals at end of billing cycle

[DESTRUCTIVE] Use to cancel a customer-owned SSL cert. Path param id (integer, required) is the ssl_id. Cancellation marks the service for non-renewal - the cert stays valid until its current paid period ends, after which auto-billing stops. The CA-issued certificate itself is NOT revoked by this call (file a separate revocation request if needed). Returns SSLCancelResponse with success bool and text. Returns 401 unauthenticated, 404 if id not owned by session customer, error if the cancel_service hook fails. Caveat: irreversible at the billing level - re-enabling requires a new addSsl order. Verify the right cert with getSslInfo and confirm no unpaid charges via getSslInvoices first.  Sibling ops: `getSslInfo` (verify cert), `getSslInvoices` (check unpaid), `addSsl` (re-order).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`id`** | **`Int64`** | SSL Cert ID number |

### Return type

[**`SslCancel200Response`**](SslCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_ssl_info**
> `update_ssl_info`(_api::`SSLCertificatesApi`, `id`::`String`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_ssl_info`(_api::`SSLCertificatesApi`, response_stream::`Channel`, `id`::`String`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Update mutable settings on an existing SSL certificate order by id

Use to modify mutable fields on a customer-owned SSL cert (e.g. contact info, renewal preferences, hostname or CSR data depending on cert state and CA rules). Path param id (string/int, required) is the ssl_id. Body params depend on the cert package and which fields the underlying service supports - inspect getSslInfo client_links first to see which actions are exposed. Returns SuccessTextResponse on success. Returns 401 unauthenticated, 404 if id not owned, 409 if cert state forbids the change (e.g. canceled or pending CA validation), 422 on invalid field values. Caveat: changes that affect the certificate identity (hostname, CSR) typically trigger a reissue with the CA which is time-sensitive and may require new DNS or email validation.  Sibling ops: `getSslInfo` (read), `sslCancel` (terminate), `getSslWelcomeEmail`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`SSLCertificatesApi`** | API context | 
**`id`** | **`String`** | SSL certificate ID number. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

