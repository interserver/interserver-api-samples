# InterServerClient::ScrubIpsApi

All URIs are relative to *https://my.interserver.net/apiv2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_scrub_ip**](ScrubIpsApi.md#cancel_scrub_ip) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing |
| [**create_filter**](ScrubIpsApi.md#create_filter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port |
| [**create_geo_rule**](ScrubIpsApi.md#create_geo_rule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN) |
| [**create_rule**](ScrubIpsApi.md#create_rule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol) |
| [**delete_filter**](ScrubIpsApi.md#delete_filter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port |
| [**disable_scrub**](ScrubIpsApi.md#disable_scrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP |
| [**enable_scrub**](ScrubIpsApi.md#enable_scrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service&#39;s protected IP |
| [**get_order_detail**](ScrubIpsApi.md#get_order_detail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order |
| [**get_scrub_ip_details**](ScrubIpsApi.md#get_scrub_ip_details) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters) |
| [**get_scrub_ip_filter_types**](ScrubIpsApi.md#get_scrub_ip_filter_types) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter |
| [**get_scrub_ip_invoices**](ScrubIpsApi.md#get_scrub_ip_invoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service |
| [**get_scrub_ip_logs**](ScrubIpsApi.md#get_scrub_ip_logs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP |
| [**get_scrub_ips_list**](ScrubIpsApi.md#get_scrub_ips_list) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account |
| [**place_scrub_order**](ScrubIpsApi.md#place_scrub_order) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice |
| [**put_scrub_ips**](ScrubIpsApi.md#put_scrub_ips) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing |
| [**scrub_ips_delete_geo_rule**](ScrubIpsApi.md#scrub_ips_delete_geo_rule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails |
| [**scrub_ips_delete_rule**](ScrubIpsApi.md#scrub_ips_delete_rule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails |


## cancel_scrub_ip

> <CancelScrubIp200Response> cancel_scrub_ip(id)

Cancel a Scrub IP service and stop its recurring DDoS billing

Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number

begin
  # Cancel a Scrub IP service and stop its recurring DDoS billing
  result = api_instance.cancel_scrub_ip(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->cancel_scrub_ip: #{e}"
end
```

#### Using the cancel_scrub_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelScrubIp200Response>, Integer, Hash)> cancel_scrub_ip_with_http_info(id)

```ruby
begin
  # Cancel a Scrub IP service and stop its recurring DDoS billing
  data, status_code, headers = api_instance.cancel_scrub_ip_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelScrubIp200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->cancel_scrub_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |

### Return type

[**CancelScrubIp200Response**](CancelScrubIp200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_filter

> <CreateFilter201Response> create_filter(id, create_filter)

Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port

Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
create_filter = InterServerClient::CreateFilter.new({filter_type: 'cs2_udp', port: 8080}) # CreateFilter | 

begin
  # Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
  result = api_instance.create_filter(id, create_filter)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_filter: #{e}"
end
```

#### Using the create_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFilter201Response>, Integer, Hash)> create_filter_with_http_info(id, create_filter)

```ruby
begin
  # Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
  data, status_code, headers = api_instance.create_filter_with_http_info(id, create_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFilter201Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **create_filter** | [**CreateFilter**](CreateFilter.md) |  |  |

### Return type

[**CreateFilter201Response**](CreateFilter201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_geo_rule

> <CreateRule201Response> create_geo_rule(id, create_geo_firewall_rule)

Add a geographic firewall rule (block/allow by country code or ASN)

Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
create_geo_firewall_rule = InterServerClient::CreateGeoFirewallRule.new({xdp_action: 0}) # CreateGeoFirewallRule | 

begin
  # Add a geographic firewall rule (block/allow by country code or ASN)
  result = api_instance.create_geo_rule(id, create_geo_firewall_rule)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_geo_rule: #{e}"
end
```

#### Using the create_geo_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRule201Response>, Integer, Hash)> create_geo_rule_with_http_info(id, create_geo_firewall_rule)

```ruby
begin
  # Add a geographic firewall rule (block/allow by country code or ASN)
  data, status_code, headers = api_instance.create_geo_rule_with_http_info(id, create_geo_firewall_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRule201Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_geo_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **create_geo_firewall_rule** | [**CreateGeoFirewallRule**](CreateGeoFirewallRule.md) |  |  |

### Return type

[**CreateRule201Response**](CreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rule

> <CreateRule201Response> create_rule(id, create_firewall_rule)

Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)

Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
create_firewall_rule = InterServerClient::CreateFirewallRule.new({protocol_id: 1, xdp_action: 0}) # CreateFirewallRule | 

begin
  # Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
  result = api_instance.create_rule(id, create_firewall_rule)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_rule: #{e}"
end
```

#### Using the create_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRule201Response>, Integer, Hash)> create_rule_with_http_info(id, create_firewall_rule)

```ruby
begin
  # Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
  data, status_code, headers = api_instance.create_rule_with_http_info(id, create_firewall_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRule201Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->create_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **create_firewall_rule** | [**CreateFirewallRule**](CreateFirewallRule.md) |  |  |

### Return type

[**CreateRule201Response**](CreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_filter

> <DeleteFilter200Response> delete_filter(id, create_filter)

Remove a scrubbing filter by matching filter_type and port

Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. 

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
create_filter = InterServerClient::CreateFilter.new({filter_type: 'cs2_udp', port: 8080}) # CreateFilter | 

begin
  # Remove a scrubbing filter by matching filter_type and port
  result = api_instance.delete_filter(id, create_filter)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->delete_filter: #{e}"
end
```

#### Using the delete_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFilter200Response>, Integer, Hash)> delete_filter_with_http_info(id, create_filter)

```ruby
begin
  # Remove a scrubbing filter by matching filter_type and port
  data, status_code, headers = api_instance.delete_filter_with_http_info(id, create_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFilter200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->delete_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **create_filter** | [**CreateFilter**](CreateFilter.md) |  |  |

### Return type

[**DeleteFilter200Response**](DeleteFilter200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_scrub

> <DisableScrub200Response> disable_scrub(id)

Disable DDoS scrubbing and remove the BGP announcement on the IP

Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number

begin
  # Disable DDoS scrubbing and remove the BGP announcement on the IP
  result = api_instance.disable_scrub(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->disable_scrub: #{e}"
end
```

#### Using the disable_scrub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableScrub200Response>, Integer, Hash)> disable_scrub_with_http_info(id)

```ruby
begin
  # Disable DDoS scrubbing and remove the BGP announcement on the IP
  data, status_code, headers = api_instance.disable_scrub_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableScrub200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->disable_scrub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |

### Return type

[**DisableScrub200Response**](DisableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_scrub

> <EnableScrub200Response> enable_scrub(id)

Enable DDoS scrubbing (BGP announcement) on the service's protected IP

Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number

begin
  # Enable DDoS scrubbing (BGP announcement) on the service's protected IP
  result = api_instance.enable_scrub(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->enable_scrub: #{e}"
end
```

#### Using the enable_scrub_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableScrub200Response>, Integer, Hash)> enable_scrub_with_http_info(id)

```ruby
begin
  # Enable DDoS scrubbing (BGP announcement) on the service's protected IP
  data, status_code, headers = api_instance.enable_scrub_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableScrub200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->enable_scrub_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |

### Return type

[**EnableScrub200Response**](EnableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_detail

> <GetOrderDetail200Response> get_order_detail

Get plans, pricing, and eligible IPs for a new Scrub IP order

Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.

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

api_instance = InterServerClient::ScrubIpsApi.new

begin
  # Get plans, pricing, and eligible IPs for a new Scrub IP order
  result = api_instance.get_order_detail
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_order_detail: #{e}"
end
```

#### Using the get_order_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderDetail200Response>, Integer, Hash)> get_order_detail_with_http_info

```ruby
begin
  # Get plans, pricing, and eligible IPs for a new Scrub IP order
  data, status_code, headers = api_instance.get_order_detail_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderDetail200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_order_detail_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetOrderDetail200Response**](GetOrderDetail200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrub_ip_details

> <GetScrubIpDetails200Response> get_scrub_ip_details(id)

Get full Scrub IP service detail (rules + geo + filters)

Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. 

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number

begin
  # Get full Scrub IP service detail (rules + geo + filters)
  result = api_instance.get_scrub_ip_details(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_details: #{e}"
end
```

#### Using the get_scrub_ip_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetScrubIpDetails200Response>, Integer, Hash)> get_scrub_ip_details_with_http_info(id)

```ruby
begin
  # Get full Scrub IP service detail (rules + geo + filters)
  data, status_code, headers = api_instance.get_scrub_ip_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetScrubIpDetails200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |

### Return type

[**GetScrubIpDetails200Response**](GetScrubIpDetails200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrub_ip_filter_types

> <ScrubIpFilterTypes> get_scrub_ip_filter_types

List enabled traffic filter profiles available for createFilter

Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.

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

api_instance = InterServerClient::ScrubIpsApi.new

begin
  # List enabled traffic filter profiles available for createFilter
  result = api_instance.get_scrub_ip_filter_types
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_filter_types: #{e}"
end
```

#### Using the get_scrub_ip_filter_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScrubIpFilterTypes>, Integer, Hash)> get_scrub_ip_filter_types_with_http_info

```ruby
begin
  # List enabled traffic filter profiles available for createFilter
  data, status_code, headers = api_instance.get_scrub_ip_filter_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScrubIpFilterTypes>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_filter_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ScrubIpFilterTypes**](ScrubIpFilterTypes.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrub_ip_invoices

> <ChargeInvoiceRows> get_scrub_ip_invoices(id)

List recurring and one-time invoices billed for this Scrub IP service

Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number

begin
  # List recurring and one-time invoices billed for this Scrub IP service
  result = api_instance.get_scrub_ip_invoices(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_invoices: #{e}"
end
```

#### Using the get_scrub_ip_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeInvoiceRows>, Integer, Hash)> get_scrub_ip_invoices_with_http_info(id)

```ruby
begin
  # List recurring and one-time invoices billed for this Scrub IP service
  data, status_code, headers = api_instance.get_scrub_ip_invoices_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeInvoiceRows>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrub_ip_logs

> <Array<ScrubIpsLogRowSchema>> get_scrub_ip_logs(id)

Get last 50000 packet/event log entries for the protected IP

Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = '413232  ' # String | Scrub Order ID

begin
  # Get last 50000 packet/event log entries for the protected IP
  result = api_instance.get_scrub_ip_logs(id)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_logs: #{e}"
end
```

#### Using the get_scrub_ip_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScrubIpsLogRowSchema>>, Integer, Hash)> get_scrub_ip_logs_with_http_info(id)

```ruby
begin
  # Get last 50000 packet/event log entries for the protected IP
  data, status_code, headers = api_instance.get_scrub_ip_logs_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScrubIpsLogRowSchema>>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ip_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Scrub Order ID |  |

### Return type

[**Array&lt;ScrubIpsLogRowSchema&gt;**](ScrubIpsLogRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrub_ips_list

> <Array<ScrubIpsRowSchema>> get_scrub_ips_list

List all Scrub IP DDoS protection services on the authenticated account

Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.

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

api_instance = InterServerClient::ScrubIpsApi.new

begin
  # List all Scrub IP DDoS protection services on the authenticated account
  result = api_instance.get_scrub_ips_list
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ips_list: #{e}"
end
```

#### Using the get_scrub_ips_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScrubIpsRowSchema>>, Integer, Hash)> get_scrub_ips_list_with_http_info

```ruby
begin
  # List all Scrub IP DDoS protection services on the authenticated account
  data, status_code, headers = api_instance.get_scrub_ips_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScrubIpsRowSchema>>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->get_scrub_ips_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ScrubIpsRowSchema&gt;**](ScrubIpsRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## place_scrub_order

> <PlaceScrubOrder201Response> place_scrub_order(scrub_ip_place_order)

Place a new Scrub IP DDoS protection order and generate an invoice

Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.

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

api_instance = InterServerClient::ScrubIpsApi.new
scrub_ip_place_order = InterServerClient::ScrubIpPlaceOrder.new({service_type: 102, ip: '1.2.3.4'}) # ScrubIpPlaceOrder | 

begin
  # Place a new Scrub IP DDoS protection order and generate an invoice
  result = api_instance.place_scrub_order(scrub_ip_place_order)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->place_scrub_order: #{e}"
end
```

#### Using the place_scrub_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceScrubOrder201Response>, Integer, Hash)> place_scrub_order_with_http_info(scrub_ip_place_order)

```ruby
begin
  # Place a new Scrub IP DDoS protection order and generate an invoice
  data, status_code, headers = api_instance.place_scrub_order_with_http_info(scrub_ip_place_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceScrubOrder201Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->place_scrub_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scrub_ip_place_order** | [**ScrubIpPlaceOrder**](ScrubIpPlaceOrder.md) |  |  |

### Return type

[**PlaceScrubOrder201Response**](PlaceScrubOrder201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_scrub_ips

> <PutScrubIps200Response> put_scrub_ips(scrub_ip_place_order)

Validate a Scrub IP order and return effective pricing without billing

Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.

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

api_instance = InterServerClient::ScrubIpsApi.new
scrub_ip_place_order = InterServerClient::ScrubIpPlaceOrder.new({service_type: 102, ip: '1.2.3.4'}) # ScrubIpPlaceOrder | 

begin
  # Validate a Scrub IP order and return effective pricing without billing
  result = api_instance.put_scrub_ips(scrub_ip_place_order)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->put_scrub_ips: #{e}"
end
```

#### Using the put_scrub_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutScrubIps200Response>, Integer, Hash)> put_scrub_ips_with_http_info(scrub_ip_place_order)

```ruby
begin
  # Validate a Scrub IP order and return effective pricing without billing
  data, status_code, headers = api_instance.put_scrub_ips_with_http_info(scrub_ip_place_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutScrubIps200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->put_scrub_ips_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scrub_ip_place_order** | [**ScrubIpPlaceOrder**](ScrubIpPlaceOrder.md) |  |  |

### Return type

[**PutScrubIps200Response**](PutScrubIps200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## scrub_ips_delete_geo_rule

> <ScrubIpsDeleteRule200Response> scrub_ips_delete_geo_rule(id, delete_geo_firewall_rule)

Delete a geo firewall rule by rule_id from getScrubIpDetails

Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
delete_geo_firewall_rule = InterServerClient::DeleteGeoFirewallRule.new({rule_id: 2045}) # DeleteGeoFirewallRule | 

begin
  # Delete a geo firewall rule by rule_id from getScrubIpDetails
  result = api_instance.scrub_ips_delete_geo_rule(id, delete_geo_firewall_rule)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->scrub_ips_delete_geo_rule: #{e}"
end
```

#### Using the scrub_ips_delete_geo_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScrubIpsDeleteRule200Response>, Integer, Hash)> scrub_ips_delete_geo_rule_with_http_info(id, delete_geo_firewall_rule)

```ruby
begin
  # Delete a geo firewall rule by rule_id from getScrubIpDetails
  data, status_code, headers = api_instance.scrub_ips_delete_geo_rule_with_http_info(id, delete_geo_firewall_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScrubIpsDeleteRule200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->scrub_ips_delete_geo_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **delete_geo_firewall_rule** | [**DeleteGeoFirewallRule**](DeleteGeoFirewallRule.md) |  |  |

### Return type

[**ScrubIpsDeleteRule200Response**](ScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## scrub_ips_delete_rule

> <ScrubIpsDeleteRule200Response> scrub_ips_delete_rule(id, delete_firewall_rule)

Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails

Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.

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

api_instance = InterServerClient::ScrubIpsApi.new
id = 56 # Integer | ScrubIp ID number
delete_firewall_rule = InterServerClient::DeleteFirewallRule.new({rule_id: 2045}) # DeleteFirewallRule | 

begin
  # Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
  result = api_instance.scrub_ips_delete_rule(id, delete_firewall_rule)
  p result
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->scrub_ips_delete_rule: #{e}"
end
```

#### Using the scrub_ips_delete_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScrubIpsDeleteRule200Response>, Integer, Hash)> scrub_ips_delete_rule_with_http_info(id, delete_firewall_rule)

```ruby
begin
  # Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
  data, status_code, headers = api_instance.scrub_ips_delete_rule_with_http_info(id, delete_firewall_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScrubIpsDeleteRule200Response>
rescue InterServerClient::ApiError => e
  puts "Error when calling ScrubIpsApi->scrub_ips_delete_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ScrubIp ID number |  |
| **delete_firewall_rule** | [**DeleteFirewallRule**](DeleteFirewallRule.md) |  |  |

### Return type

[**ScrubIpsDeleteRule200Response**](ScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

