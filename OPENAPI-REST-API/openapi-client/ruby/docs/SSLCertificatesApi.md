# InterServerClient::SSLCertificatesApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_ssl**](SSLCertificatesApi.md#add_ssl) | **POST** /ssl/order | Place a new SSL certificate order - creates invoice and queues issuance |
| [**get_new_ssl**](SSLCertificatesApi.md#get_new_ssl) | **GET** /ssl/order | Get available SSL certificate packages and pricing for placing a new order |
| [**get_ssl_info**](SSLCertificatesApi.md#get_ssl_info) | **GET** /ssl/{id} | Get full details for one SSL certificate by id - status, expiration, links |
| [**get_ssl_invoices**](SSLCertificatesApi.md#get_ssl_invoices) | **GET** /ssl/{id}/invoices | List all billing invoices and charges tied to one SSL certificate by id |
| [**get_ssl_list**](SSLCertificatesApi.md#get_ssl_list) | **GET** /ssl | List all SSL certificates on the authenticated customer account with status and hostname |
| [**get_ssl_welcome_email**](SSLCertificatesApi.md#get_ssl_welcome_email) | **GET** /ssl/{id}/welcome_email | Resend the SSL welcome email with cert credentials and install instructions |
| [**put_ssl**](SSLCertificatesApi.md#put_ssl) | **PUT** /ssl/order | Validate an SSL certificate order without charging - dry-run before addSsl |
| [**ssl_cancel**](SSLCertificatesApi.md#ssl_cancel) | **DELETE** /ssl/{id} | Cancel an SSL certificate service - stops renewals at end of billing cycle |
| [**update_ssl_info**](SSLCertificatesApi.md#update_ssl_info) | **POST** /ssl/{id} | Update mutable settings on an existing SSL certificate order by id |


## add_ssl

> <ServiceOrderPostResponse> add_ssl(ssl_order_request)

Place a new SSL certificate order - creates invoice and queues issuance

[DESTRUCTIVE] Use after putSsl returns continue=true to commit the SSL order. Body (form): frequency (default 12 months), service_type, hostname, csr, coupon_code, plus per-type vars/extra. Re-runs validate_buy_ssl then calls place_buy_ssl which creates the service row, generates invoice (iid/iids/real_iids), and returns serviceId, serviceCost, invoice_description. CA validation is async - issuance takes minutes to hours and may require DNS or email validation post-order. If validation fails, returns continue=false with errors and no charge. Returns 401 unauthenticated, 422 invalid input. Caveat: cert is not active until invoice paid AND CA validation completes. Poll status via getSslInfo; resend instructions via getSslWelcomeEmail.  Sibling ops: `getNewSsl` (catalog), `putSsl` (validate), `getSslInfo` (poll), `getSslInvoices`, `initiatePayment` (settle invoice), `getSslWelcomeEmail`, `sslCancel`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
ssl_order_request = InterServerClient::SslOrderRequest.new({ssl: 37, hostname: 'hostname_example', approver_email: 'approver_email_example'}) # SslOrderRequest | 

begin
  # Place a new SSL certificate order - creates invoice and queues issuance
  result = api_instance.add_ssl(ssl_order_request)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->add_ssl: #{e}"
end
```

#### Using the add_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceOrderPostResponse>, Integer, Hash)> add_ssl_with_http_info(ssl_order_request)

```ruby
begin
  # Place a new SSL certificate order - creates invoice and queues issuance
  data, status_code, headers = api_instance.add_ssl_with_http_info(ssl_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceOrderPostResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->add_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssl_order_request** | [**SslOrderRequest**](SslOrderRequest.md) |  |  |

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_new_ssl

> Object get_new_ssl

Get available SSL certificate packages and pricing for placing a new order

Use before addSsl to discover which DV/OV/EV certificate types and validation tiers are buyable, plus their costs. Returns object with packageCosts (services_id keyed map of float costs) and serviceTypes (full list of SSL product offerings from the get_service_types event). No parameters required - prices are in the customer's currency. Returns 401 if unauthenticated. Show these to the customer to pick a service_type, then call putSsl to dry-run validation (hostname, CSR, coupon) without charging, then addSsl to commit. Costs do not include taxes or applied coupons — putSsl returns the actual computed price with discounts.  Sibling ops: `putSsl` (validate), `addSsl` (commit), `getSslList` (existing certs), `getSslInfo` (per-cert).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new

begin
  # Get available SSL certificate packages and pricing for placing a new order
  result = api_instance.get_new_ssl
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_new_ssl: #{e}"
end
```

#### Using the get_new_ssl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_new_ssl_with_http_info

```ruby
begin
  # Get available SSL certificate packages and pricing for placing a new order
  data, status_code, headers = api_instance.get_new_ssl_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_new_ssl_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssl_info

> Object get_ssl_info(id)

Get full details for one SSL certificate by id - status, expiration, links

Use to inspect a single SSL cert after locating its id via getSslList. Path param id (integer, required) is the ssl_id; cross-account ids return 404 (get_service enforces ownership). Returns the ViewSSL detail payload: hostname, service_type, status, expiration, company, plus client_links (rewrite/reissue/install actions available to the customer). admin_links, settings, csrf are stripped from client responses. Returns 401 unauthenticated, 404 if id not owned by the session customer. Reissue/rekey/install actions surfaced in client_links are time-sensitive and may require fresh DNS validation. Pair with getSslInvoices for billing history, getSslWelcomeEmail to resend, sslCancel to terminate, updateSslInfo to modify settings.  Sibling ops: `updateSslInfo`, `getSslInvoices`, `getSslWelcomeEmail`, `sslCancel`, `getSslList`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
id = 56 # Integer | SSL certificate ID number.

begin
  # Get full details for one SSL certificate by id - status, expiration, links
  result = api_instance.get_ssl_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_info: #{e}"
end
```

#### Using the get_ssl_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_ssl_info_with_http_info(id)

```ruby
begin
  # Get full details for one SSL certificate by id - status, expiration, links
  data, status_code, headers = api_instance.get_ssl_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SSL certificate ID number. |  |

### Return type

**Object**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssl_invoices

> <ChargeInvoiceRows> get_ssl_invoices(id)

List all billing invoices and charges tied to one SSL certificate by id

Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.  Sibling ops: `getSslInfo`, `sslCancel`, `getSslWelcomeEmail`, `getBillingInvoice` (per-invoice detail), `initiatePayment` (settle unpaid).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
id = 56 # Integer | SSL Cert ID number

begin
  # List all billing invoices and charges tied to one SSL certificate by id
  result = api_instance.get_ssl_invoices(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_invoices: #{e}"
end
```

#### Using the get_ssl_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeInvoiceRows>, Integer, Hash)> get_ssl_invoices_with_http_info(id)

```ruby
begin
  # List all billing invoices and charges tied to one SSL certificate by id
  data, status_code, headers = api_instance.get_ssl_invoices_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeInvoiceRows>
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SSL Cert ID number |  |

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssl_list

> get_ssl_list

List all SSL certificates on the authenticated customer account with status and hostname

Use to enumerate every SSL certificate (DV/OV/EV) the current customer owns before drilling into a specific cert. Returns an array of SslRow objects with id, hostname, services_name (package), status (pending/active/expired/canceled), and company. No query parameters - results are auto-scoped to the session account_id. Empty array if customer has no certs. Returns 401 if unauthenticated. Pair the returned id with getSslInfo for full details, getSslInvoices for billing, getSslWelcomeEmail to resend credentials, sslCancel to terminate, or addSsl to order a new cert. Status values may be stale relative to CA - issuance/validation can take minutes to hours after order.  Sibling ops: `getSslInfo`, `getNewSsl` (catalog), `addSsl` (order new cert).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new

begin
  # List all SSL certificates on the authenticated customer account with status and hostname
  api_instance.get_ssl_list
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_list: #{e}"
end
```

#### Using the get_ssl_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_ssl_list_with_http_info

```ruby
begin
  # List all SSL certificates on the authenticated customer account with status and hostname
  data, status_code, headers = api_instance.get_ssl_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssl_welcome_email

> <SuccessTextResponse> get_ssl_welcome_email(id)

Resend the SSL welcome email with cert credentials and install instructions

Use when a customer lost the original welcome email containing CSR submission steps, validation links, or installation guidance for an active SSL cert. Path param id (integer, required) is the ssl_id. Triggers the module's ssl_welcome_email function to re-send to the account's email on file. Returns SuccessTextResponse: text='Welcome Email has been resent.' Returns 401 unauthenticated, 404 if id not found or not owned by session customer ('Invalid Service Passed'), 409 if cert status is not 'active' (pending/canceled/expired certs do not have a welcome email to resend). Caveat: cannot change the destination email - update the account profile first if the customer's address has changed.  Sibling ops: `getSslInfo` (verify status), `sslCancel` (terminate), `updateAccountInfo` (change email first).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
id = 56 # Integer | SSL Cert ID number

begin
  # Resend the SSL welcome email with cert credentials and install instructions
  result = api_instance.get_ssl_welcome_email(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_welcome_email: #{e}"
end
```

#### Using the get_ssl_welcome_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> get_ssl_welcome_email_with_http_info(id)

```ruby
begin
  # Resend the SSL welcome email with cert credentials and install instructions
  data, status_code, headers = api_instance.get_ssl_welcome_email_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->get_ssl_welcome_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SSL Cert ID number |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_ssl

> put_ssl(ssl_order_request)

Validate an SSL certificate order without charging - dry-run before addSsl

Use after getNewSsl and before addSsl to verify hostname, CSR, service_type, frequency, and coupon_code are acceptable without creating an invoice or charging the customer. Body params (form): frequency (months, default 12), service_type, hostname, csr, coupon_code, plus extra/vars per cert type. Returns continue (bool), errors (array), serviceType, serviceCost (after coupon), originalCost, hostname, couponCode. If continue=false the errors array explains what to fix - typical issues are invalid hostname/CSR mismatch, expired coupon, or unsupported service_type. Returns 401 if unauthenticated, 422 on validation failure semantics. No state is mutated. Always run this before addSsl to prevent failed charges. Sibling ops: `getNewSsl` (catalog), `addSsl` (commit).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
ssl_order_request = InterServerClient::SslOrderRequest.new({ssl: 37, hostname: 'hostname_example', approver_email: 'approver_email_example'}) # SslOrderRequest | 

begin
  # Validate an SSL certificate order without charging - dry-run before addSsl
  api_instance.put_ssl(ssl_order_request)
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->put_ssl: #{e}"
end
```

#### Using the put_ssl_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_ssl_with_http_info(ssl_order_request)

```ruby
begin
  # Validate an SSL certificate order without charging - dry-run before addSsl
  data, status_code, headers = api_instance.put_ssl_with_http_info(ssl_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->put_ssl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssl_order_request** | [**SslOrderRequest**](SslOrderRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ssl_cancel

> <SslCancel200Response> ssl_cancel(id)

Cancel an SSL certificate service - stops renewals at end of billing cycle

[DESTRUCTIVE] Use to cancel a customer-owned SSL cert. Path param id (integer, required) is the ssl_id. Cancellation marks the service for non-renewal - the cert stays valid until its current paid period ends, after which auto-billing stops. The CA-issued certificate itself is NOT revoked by this call (file a separate revocation request if needed). Returns SSLCancelResponse with success bool and text. Returns 401 unauthenticated, 404 if id not owned by session customer, error if the cancel_service hook fails. Caveat: irreversible at the billing level - re-enabling requires a new addSsl order. Verify the right cert with getSslInfo and confirm no unpaid charges via getSslInvoices first.  Sibling ops: `getSslInfo` (verify cert), `getSslInvoices` (check unpaid), `addSsl` (re-order).

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
id = 56 # Integer | SSL Cert ID number

begin
  # Cancel an SSL certificate service - stops renewals at end of billing cycle
  result = api_instance.ssl_cancel(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->ssl_cancel: #{e}"
end
```

#### Using the ssl_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SslCancel200Response>, Integer, Hash)> ssl_cancel_with_http_info(id)

```ruby
begin
  # Cancel an SSL certificate service - stops renewals at end of billing cycle
  data, status_code, headers = api_instance.ssl_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SslCancel200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->ssl_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SSL Cert ID number |  |

### Return type

[**SslCancel200Response**](SslCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ssl_info

> <SuccessTextResponse> update_ssl_info(id)

Update mutable settings on an existing SSL certificate order by id

Use to modify mutable fields on a customer-owned SSL cert (e.g. contact info, renewal preferences, hostname or CSR data depending on cert state and CA rules). Path param id (string/int, required) is the ssl_id. Body params depend on the cert package and which fields the underlying service supports - inspect getSslInfo client_links first to see which actions are exposed. Returns SuccessTextResponse on success. Returns 401 unauthenticated, 404 if id not owned, 409 if cert state forbids the change (e.g. canceled or pending CA validation), 422 on invalid field values. Caveat: changes that affect the certificate identity (hostname, CSR) typically trigger a reissue with the CA which is time-sensitive and may require new DNS or email validation.  Sibling ops: `getSslInfo` (read), `sslCancel` (terminate), `getSslWelcomeEmail`.

### Examples

```ruby
require 'time'
require 'inter_server_client'
# setup authorization
InterServerClient.configure do |config|
  # Configure API key authorization: sessionIdCookieAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'

  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: sessionIdHeaderAuth
  config.api_key['sessionid'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['sessionid'] = 'Bearer'
end

api_instance = InterServerClient::SSLCertificatesApi.new
id = 'id_example' # String | SSL certificate ID number.

begin
  # Update mutable settings on an existing SSL certificate order by id
  result = api_instance.update_ssl_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->update_ssl_info: #{e}"
end
```

#### Using the update_ssl_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_ssl_info_with_http_info(id)

```ruby
begin
  # Update mutable settings on an existing SSL certificate order by id
  data, status_code, headers = api_instance.update_ssl_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling SSLCertificatesApi->update_ssl_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | SSL certificate ID number. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

