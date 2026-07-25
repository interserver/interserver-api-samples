# InterServerClient::LicensesApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_license**](LicensesApi.md#add_license) | **POST** /licenses/order | Order a new software license and create the recurring invoice |
| [**get_license_info**](LicensesApi.md#get_license_info) | **GET** /licenses/{id} | Get full details for one license including status, IP, and links |
| [**get_license_invoices**](LicensesApi.md#get_license_invoices) | **GET** /licenses/{id}/invoices | List all billing invoices tied to one software license service |
| [**get_license_list**](LicensesApi.md#get_license_list) | **GET** /licenses | List all software licenses owned by the authenticated customer |
| [**get_licenses_welcome_email**](LicensesApi.md#get_licenses_welcome_email) | **GET** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps |
| [**get_new_license**](LicensesApi.md#get_new_license) | **GET** /licenses/order | Get available license types, packages, and pricing for ordering |
| [**licenses_cancel**](LicensesApi.md#licenses_cancel) | **DELETE** /licenses/{id} | Cancel a license service and stop future billing (irreversible) |
| [**post_license_change_ip**](LicensesApi.md#post_license_change_ip) | **POST** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee) |
| [**put_licenses**](LicensesApi.md#put_licenses) | **PUT** /licenses/order | Validate a software license order before placing it (dry run preview) |
| [**update_license_info**](LicensesApi.md#update_license_info) | **POST** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP) |


## add_license

> <ServiceOrderPostResponse> add_license(license_order_request)

Order a new software license and create the recurring invoice

Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue=false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.  Sibling ops: `getNewLicense` (catalog), `putLicenses` (validate), `getLicenseInfo` (poll status), `getLicenseInvoices`, `getBillingInvoice` + `initiatePayment` (settle invoice), `licensesCancel`.

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

api_instance = InterServerClient::LicensesApi.new
license_order_request = InterServerClient::LicenseOrderRequest.new({package: 37, ip: 'ip_example', tos: false}) # LicenseOrderRequest | 

begin
  # Order a new software license and create the recurring invoice
  result = api_instance.add_license(license_order_request)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->add_license: #{e}"
end
```

#### Using the add_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceOrderPostResponse>, Integer, Hash)> add_license_with_http_info(license_order_request)

```ruby
begin
  # Order a new software license and create the recurring invoice
  data, status_code, headers = api_instance.add_license_with_http_info(license_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceOrderPostResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->add_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_order_request** | [**LicenseOrderRequest**](LicenseOrderRequest.md) |  |  |

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_license_info

> <License> get_license_info(id)

Get full details for one license including status, IP, and links

Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.

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

api_instance = InterServerClient::LicensesApi.new
id = 56 # Integer | The license service ID. Use `license_id` from `GET /licenses`.

begin
  # Get full details for one license including status, IP, and links
  result = api_instance.get_license_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_info: #{e}"
end
```

#### Using the get_license_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<License>, Integer, Hash)> get_license_info_with_http_info(id)

```ruby
begin
  # Get full details for one license including status, IP, and links
  data, status_code, headers = api_instance.get_license_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <License>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |

### Return type

[**License**](License.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_license_invoices

> <ChargeInvoiceRows> get_license_invoices(id)

List all billing invoices tied to one software license service

Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success=false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.

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

api_instance = InterServerClient::LicensesApi.new
id = 56 # Integer | The license service ID. Use `license_id` from `GET /licenses`.

begin
  # List all billing invoices tied to one software license service
  result = api_instance.get_license_invoices(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_invoices: #{e}"
end
```

#### Using the get_license_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeInvoiceRows>, Integer, Hash)> get_license_invoices_with_http_info(id)

```ruby
begin
  # List all billing invoices tied to one software license service
  data, status_code, headers = api_instance.get_license_invoices_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeInvoiceRows>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_license_list

> <Array<LicenseRow>> get_license_list

List all software licenses owned by the authenticated customer

Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer's account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.

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

api_instance = InterServerClient::LicensesApi.new

begin
  # List all software licenses owned by the authenticated customer
  result = api_instance.get_license_list
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_list: #{e}"
end
```

#### Using the get_license_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LicenseRow>>, Integer, Hash)> get_license_list_with_http_info

```ruby
begin
  # List all software licenses owned by the authenticated customer
  data, status_code, headers = api_instance.get_license_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LicenseRow>>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LicenseRow&gt;**](LicenseRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_licenses_welcome_email

> <SuccessTextResponse> get_licenses_welcome_email(id)

Resend the license welcome email with the key and activation steps

Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.

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

api_instance = InterServerClient::LicensesApi.new
id = 56 # Integer | The license service ID. Use `license_id` from `GET /licenses`.

begin
  # Resend the license welcome email with the key and activation steps
  result = api_instance.get_licenses_welcome_email(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_licenses_welcome_email: #{e}"
end
```

#### Using the get_licenses_welcome_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> get_licenses_welcome_email_with_http_info(id)

```ruby
begin
  # Resend the license welcome email with the key and activation steps
  data, status_code, headers = api_instance.get_licenses_welcome_email_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_licenses_welcome_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_new_license

> <LicensesOrder> get_new_license

Get available license types, packages, and pricing for ordering

Returns the catalog needed to build the license-order form: service categories (category_id->name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer's currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden=0, services_buyable=1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.

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

api_instance = InterServerClient::LicensesApi.new

begin
  # Get available license types, packages, and pricing for ordering
  result = api_instance.get_new_license
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_new_license: #{e}"
end
```

#### Using the get_new_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LicensesOrder>, Integer, Hash)> get_new_license_with_http_info

```ruby
begin
  # Get available license types, packages, and pricing for ordering
  data, status_code, headers = api_instance.get_new_license_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LicensesOrder>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->get_new_license_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LicensesOrder**](LicensesOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## licenses_cancel

> <LicensesCancel200Response> licenses_cancel(id)

Cancel a license service and stop future billing (irreversible)

Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success=false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.

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

api_instance = InterServerClient::LicensesApi.new
id = 56 # Integer | The license service ID. Use `license_id` from `GET /licenses`.

begin
  # Cancel a license service and stop future billing (irreversible)
  result = api_instance.licenses_cancel(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->licenses_cancel: #{e}"
end
```

#### Using the licenses_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LicensesCancel200Response>, Integer, Hash)> licenses_cancel_with_http_info(id)

```ruby
begin
  # Cancel a license service and stop future billing (irreversible)
  data, status_code, headers = api_instance.licenses_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LicensesCancel200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->licenses_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |

### Return type

[**LicensesCancel200Response**](LicensesCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_license_change_ip

> <SuccessTextResponse> post_license_change_ip(id, ip_object)

Rebind a license to a new IP address (may incur a vendor fee)

Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status != active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.

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

api_instance = InterServerClient::LicensesApi.new
id = 56 # Integer | The license service ID. Use `license_id` from `GET /licenses`.
ip_object = InterServerClient::IpObject.new({ip: 'ip_example'}) # IpObject | 

begin
  # Rebind a license to a new IP address (may incur a vendor fee)
  result = api_instance.post_license_change_ip(id, ip_object)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->post_license_change_ip: #{e}"
end
```

#### Using the post_license_change_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> post_license_change_ip_with_http_info(id, ip_object)

```ruby
begin
  # Rebind a license to a new IP address (may incur a vendor fee)
  data, status_code, headers = api_instance.post_license_change_ip_with_http_info(id, ip_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->post_license_change_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |
| **ip_object** | [**IpObject**](IpObject.md) |  |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## put_licenses

> put_licenses(license_order_request)

Validate a software license order before placing it (dry run preview)

Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue=true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue=false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.

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

api_instance = InterServerClient::LicensesApi.new
license_order_request = InterServerClient::LicenseOrderRequest.new({package: 37, ip: 'ip_example', tos: false}) # LicenseOrderRequest | 

begin
  # Validate a software license order before placing it (dry run preview)
  api_instance.put_licenses(license_order_request)
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->put_licenses: #{e}"
end
```

#### Using the put_licenses_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_licenses_with_http_info(license_order_request)

```ruby
begin
  # Validate a software license order before placing it (dry run preview)
  data, status_code, headers = api_instance.put_licenses_with_http_info(license_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->put_licenses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_order_request** | [**LicenseOrderRequest**](LicenseOrderRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_license_info

> <SuccessTextResponse> update_license_info(id)

Update mutable fields on a license service (e.g. assigned IP)

Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).

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

api_instance = InterServerClient::LicensesApi.new
id = 'id_example' # String | The license service ID. Use `license_id` from `GET /licenses`.

begin
  # Update mutable fields on a license service (e.g. assigned IP)
  result = api_instance.update_license_info(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->update_license_info: #{e}"
end
```

#### Using the update_license_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessTextResponse>, Integer, Hash)> update_license_info_with_http_info(id)

```ruby
begin
  # Update mutable fields on a license service (e.g. assigned IP)
  data, status_code, headers = api_instance.update_license_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessTextResponse>
rescue InterServerClient::ApiError => e
  puts "Error when calling LicensesApi->update_license_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. |  |

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

