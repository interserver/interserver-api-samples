# InterServerClient::FloatingIPsApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_floating_ip**](FloatingIPsApi.md#add_floating_ip) | **POST** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service |
| [**floating_ips_cancel**](FloatingIPsApi.md#floating_ips_cancel) | **DELETE** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops |
| [**get_floating_ip_info**](FloatingIPsApi.md#get_floating_ip_info) | **GET** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP |
| [**get_floating_ip_invoices**](FloatingIPsApi.md#get_floating_ip_invoices) | **GET** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service |
| [**get_floating_ips_list**](FloatingIPsApi.md#get_floating_ips_list) | **GET** /floating_ips | List all Floating IP services on the authenticated customer&#39;s account |
| [**get_floating_ips_welcome_email**](FloatingIPsApi.md#get_floating_ips_welcome_email) | **GET** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact |
| [**get_new_floating_ip**](FloatingIPsApi.md#get_new_floating_ip) | **GET** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP |
| [**post_floating_ips_change_ip**](FloatingIPsApi.md#post_floating_ips_change_ip) | **POST** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer&#39;s services |
| [**put_floating_ips**](FloatingIPsApi.md#put_floating_ips) | **PUT** /floating_ips/order | Validate a Floating IP order and price it without charging the customer |
| [**update_floating_ip_info**](FloatingIPsApi.md#update_floating_ip_info) | **POST** /floating_ips/{id} | Update a Floating IP service&#39;s editable settings (label / metadata) |


## add_floating_ip

> <ServiceOrderPostResponse> add_floating_ip(floating_ip_order_request)

Place a real Floating IP order, create billing records, and provision the service

Charges the customer and creates a new Floating IP service via `place_buy_floating_ip`. Validate first with `putFloating_ips` to avoid surprise failures. Body (form-encoded): `serviceType` (required, `services_id`), `coupon` (optional), `comment` (optional internal note). On success returns `{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — `iid` is the master invoice ID, `serviceId` is the new `floating_ip_id`. On validation failure returns `{ continue:false, errors:[...] }` with no charge. Errors: 401 if unauthenticated; soft errors in `errors[]`. The newly-issued IP starts unassigned — point it at a target with `postFloatingIpsChangeIp` once the service is `active`.  Sibling ops: `getNewFloatingIp` (catalog), `putFloating_ips` (validate), `getFloatingIpInfo` (poll), `postFloatingIpsChangeIp` (route), `getBillingInvoice` + `initiatePayment` (settle invoice), `floating_ipsCancel`.

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

api_instance = InterServerClient::FloatingIPsApi.new
floating_ip_order_request = InterServerClient::FloatingIpOrderRequest.new({service_type: 37}) # FloatingIpOrderRequest | 

begin
  # Place a real Floating IP order, create billing records, and provision the service
  result = api_instance.add_floating_ip(floating_ip_order_request)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->add_floating_ip: #{e}"
end
```

#### Using the add_floating_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceOrderPostResponse>, Integer, Hash)> add_floating_ip_with_http_info(floating_ip_order_request)

```ruby
begin
  # Place a real Floating IP order, create billing records, and provision the service
  data, status_code, headers = api_instance.add_floating_ip_with_http_info(floating_ip_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceOrderPostResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->add_floating_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **floating_ip_order_request** | [**FloatingIpOrderRequest**](FloatingIpOrderRequest.md) |  |  |

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## floating_ips_cancel

> <FloatingIpsCancel200Response> floating_ips_cancel(id)

Cancel a Floating IP service and release the IP — destructive, billing stops

Cancels the Floating IP via the shared `Api\\Billing\\CancelService` flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `FloatingIpsCancelResponse` shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when `id` is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use `postFloatingIpsChangeIp` instead of cancel-and-reorder.  Sibling ops: `getFloatingIpInfo` (status), `getFloatingIpInvoices` (outstanding charges), `postFloatingIpsChangeIp` (re-route instead of cancel), `addFloatingIp` (re-order).

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 56 # Integer | The Floating IP service ID. Use the ID from `GET /floating_ips`.

begin
  # Cancel a Floating IP service and release the IP — destructive, billing stops
  result = api_instance.floating_ips_cancel(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->floating_ips_cancel: #{e}"
end
```

#### Using the floating_ips_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FloatingIpsCancel200Response>, Integer, Hash)> floating_ips_cancel_with_http_info(id)

```ruby
begin
  # Cancel a Floating IP service and release the IP — destructive, billing stops
  data, status_code, headers = api_instance.floating_ips_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FloatingIpsCancel200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->floating_ips_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |

### Return type

[**FloatingIpsCancel200Response**](FloatingIpsCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_floating_ip_info

> Object get_floating_ip_info(id)

Fetch full details for one Floating IP service, including current target IP

Use for a Floating IP detail screen, or to read `floating_ip_ip` / `floating_ip_target_ip` before calling `postFloatingIpsChangeIp`. Read-only. Path param `id` (integer, `floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ViewFloatingIp.getDetails()` payload — service info, billing/cost summary, status, target IP, and `client_links` (action URLs the UI can render). Internal-only fields (`admin_links`, `settings`, `csrf`) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller (`get_service` filters by custid). Siblings: `postFloatingIpsChangeIp`, `updateFloatingIpInfo`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, `floating_ipsCancel`.

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 56 # Integer | The Floating IP service ID. Use the ID from `GET /floating_ips`.

begin
  # Fetch full details for one Floating IP service, including current target IP
  result = api_instance.get_floating_ip_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ip_info: #{e}"
end
```

#### Using the get_floating_ip_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_floating_ip_info_with_http_info(id)

```ruby
begin
  # Fetch full details for one Floating IP service, including current target IP
  data, status_code, headers = api_instance.get_floating_ip_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ip_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |

### Return type

**Object**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_floating_ip_invoices

> <ChargeInvoiceRows> get_floating_ip_invoices(id)

List all billing invoices charged against a specific Floating IP service

Use for a per-service billing history view — pulls the standard `Api\\Billing\\InvoicesList` rows scoped to this Floating IP. Read-only. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ChargeInvoiceRows` schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (`getBillingInvoice`, `initiatePayment`) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller. Siblings: `getFloatingIpInfo` (service details), `getFloatingIpsWelcomeEmail`.

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 56 # Integer | The Floating IP service ID. Use the ID from `GET /floating_ips`.

begin
  # List all billing invoices charged against a specific Floating IP service
  result = api_instance.get_floating_ip_invoices(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ip_invoices: #{e}"
end
```

#### Using the get_floating_ip_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeInvoiceRows>, Integer, Hash)> get_floating_ip_invoices_with_http_info(id)

```ruby
begin
  # List all billing invoices charged against a specific Floating IP service
  data, status_code, headers = api_instance.get_floating_ip_invoices_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeInvoiceRows>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ip_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_floating_ips_list

> Array&lt;Object&gt; get_floating_ips_list

List all Floating IP services on the authenticated customer's account

Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: `floating_ip_id`, `repeat_invoices_cost` (recurring price), `floating_ip_ip` (the portable IP), `floating_ip_target_ip` (the IP it currently routes to), `floating_ip_status` (active/pending/canceled/etc.), `services_name` (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with `getFloatingIpInfo`, `postFloatingIpsChangeIp`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, or `floating_ipsCancel`. To order a new one see `getNewFloatingIp` / `addFloatingIp`.  Sibling ops: `getFloatingIpInfo`, `getNewFloatingIp` (catalog), `addFloatingIp` (order).

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

api_instance = InterServerClient::FloatingIPsApi.new

begin
  # List all Floating IP services on the authenticated customer's account
  result = api_instance.get_floating_ips_list
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ips_list: #{e}"
end
```

#### Using the get_floating_ips_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> get_floating_ips_list_with_http_info

```ruby
begin
  # List all Floating IP services on the authenticated customer's account
  data, status_code, headers = api_instance.get_floating_ips_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ips_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_floating_ips_welcome_email

> <SuccessTextResponse> get_floating_ips_welcome_email(id)

Resend the Floating IP welcome / setup email to the account contact

Triggers `floating_ip_welcome_email($id)` to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer's on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path `id` (`floating_ip_id`). Returns `{ text: 'Welcome Email has been resent.' }`. Errors: 401 if unauthenticated; 404 (`Invalid Service Passed`) if `id` is not owned by the caller; 409 (`Service is not active`) if status is not `active`. Side effect: sends an outbound email — avoid in tight loops. Read state first via `getFloatingIpInfo` if unsure of status.  Sibling ops: `getFloatingIpInfo` (status), `addFloatingIp` (new order), `floating_ipsCancel`.

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 56 # Integer | The Floating IP service ID. Use the ID from `GET /floating_ips`.

begin
  # Resend the Floating IP welcome / setup email to the account contact
  result = api_instance.get_floating_ips_welcome_email(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ips_welcome_email: #{e}"
end
```

#### Using the get_floating_ips_welcome_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> get_floating_ips_welcome_email_with_http_info(id)

```ruby
begin
  # Resend the Floating IP welcome / setup email to the account contact
  data, status_code, headers = api_instance.get_floating_ips_welcome_email_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_floating_ips_welcome_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_new_floating_ip

> Object get_new_floating_ip

Get pricing and service-type options for ordering a new Floating IP

Use before showing a Floating IP order form, or before calling `addFloatingIp`, to discover which service types (`serviceTypes`) and prices (`packageCosts`, keyed by `services_id` in the customer's currency) are currently buyable. Read-only; no side effects. No params, no body. Returns `{ packageCosts: { <services_id>: <cost> }, serviceTypes: [ ... ] } `. Costs are `services.services_cost` filtered to `services_buyable=1` for module `floating_ips`. Errors: 401 if unauthenticated. Next steps: validate the chosen `serviceType` with `putFloating_ips`, then place the order with `addFloatingIp`. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer's active services.  Sibling ops: `putFloating_ips` (validate), `addFloatingIp` (commit), `getFloatingIpsList` (existing IPs).

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

api_instance = InterServerClient::FloatingIPsApi.new

begin
  # Get pricing and service-type options for ordering a new Floating IP
  result = api_instance.get_new_floating_ip
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_new_floating_ip: #{e}"
end
```

#### Using the get_new_floating_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_new_floating_ip_with_http_info

```ruby
begin
  # Get pricing and service-type options for ordering a new Floating IP
  data, status_code, headers = api_instance.get_new_floating_ip_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->get_new_floating_ip_with_http_info: #{e}"
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


## post_floating_ips_change_ip

> <SuccessTextResponse> post_floating_ips_change_ip(id, ip)

Re-point a Floating IP to a different target IP on one of the customer's services

Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 56 # Integer | The Floating IP service ID. Use the ID from `GET /floating_ips`.
ip = 'ip_example' # String | IP Address

begin
  # Re-point a Floating IP to a different target IP on one of the customer's services
  result = api_instance.post_floating_ips_change_ip(id, ip)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->post_floating_ips_change_ip: #{e}"
end
```

#### Using the post_floating_ips_change_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> post_floating_ips_change_ip_with_http_info(id, ip)

```ruby
begin
  # Re-point a Floating IP to a different target IP on one of the customer's services
  data, status_code, headers = api_instance.post_floating_ips_change_ip_with_http_info(id, ip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->post_floating_ips_change_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |
| **ip** | **String** | IP Address |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## put_floating_ips

> put_floating_ips(floating_ip_order_request)

Validate a Floating IP order and price it without charging the customer

Dry-run for `addFloatingIp` — runs `validate_buy_floating_ip` to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): `serviceType` (required, `services_id` from `getNewFloatingIp.packageCosts`), `coupon` (optional code). Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }`. `continue=true` means the order would succeed; `continue=false` plus populated `errors[]` means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the `errors` array. Use the returned `serviceType` and `couponCode` when calling `addFloatingIp`. Sibling ops: `getNewFloatingIp` (catalog), `addFloatingIp` (commit).

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

api_instance = InterServerClient::FloatingIPsApi.new
floating_ip_order_request = InterServerClient::FloatingIpOrderRequest.new({service_type: 37}) # FloatingIpOrderRequest | 

begin
  # Validate a Floating IP order and price it without charging the customer
  api_instance.put_floating_ips(floating_ip_order_request)
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->put_floating_ips: #{e}"
end
```

#### Using the put_floating_ips_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_floating_ips_with_http_info(floating_ip_order_request)

```ruby
begin
  # Validate a Floating IP order and price it without charging the customer
  data, status_code, headers = api_instance.put_floating_ips_with_http_info(floating_ip_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->put_floating_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **floating_ip_order_request** | [**FloatingIpOrderRequest**](FloatingIpOrderRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_floating_ip_info

> <SuccessTextResponse> update_floating_ip_info(id)

Update a Floating IP service's editable settings (label / metadata)

Stub edit endpoint that delegates to the same handler as `getFloatingIpInfo` — currently used for label/metadata edits surfaced by `ViewFloatingIp`. To re-route the IP to a different target use the dedicated `postFloatingIpsChangeIp` instead; this op does not change routing. Path param `id` (`floating_ip_id`). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if `id` not owned by the caller. Read state first with `getFloatingIpInfo`.  Sibling ops: `getFloatingIpInfo` (read), `postFloatingIpsChangeIp` (re-route), `floating_ipsCancel`.

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

api_instance = InterServerClient::FloatingIPsApi.new
id = 'id_example' # String | The Floating IP service ID. Use the ID from `GET /floating_ips`.

begin
  # Update a Floating IP service's editable settings (label / metadata)
  result = api_instance.update_floating_ip_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->update_floating_ip_info: #{e}"
end
```

#### Using the update_floating_ip_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_floating_ip_info_with_http_info(id)

```ruby
begin
  # Update a Floating IP service's editable settings (label / metadata)
  data, status_code, headers = api_instance.update_floating_ip_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling FloatingIPsApi->update_floating_ip_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

