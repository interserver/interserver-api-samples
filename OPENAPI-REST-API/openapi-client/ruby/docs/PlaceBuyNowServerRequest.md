# InterServerClient::PlaceBuyNowServerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **Float** | The ID of the buy-it-now server configuration to order. Use the server listing from &#x60;GET /servers/order/buy_now_server&#x60; to find valid IDs. | [optional] |
| **server_hostname** | **String** | The fully-qualified hostname to assign to the server. | [optional] |
| **server_root_password** | **String** | The root or administrator password to set on the server. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PlaceBuyNowServerRequest.new(
  server_id: 2343,
  server_hostname: server.int.com,
  server_root_password: uD1c!@cgD
)
```

