# InterServerClient::GetOrderDetail200ResponseIpsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **Float** |  | [optional] |
| **service_module** | **String** |  | [optional] |
| **service_hostname** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetOrderDetail200ResponseIpsInner.new(
  service_id: 12345,
  service_module: vps,
  service_hostname: server.gtest.com
)
```

