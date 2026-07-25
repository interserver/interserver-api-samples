# InterServerClient::ScrubIpPlaceOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_type** | **Integer** |  |  |
| **ip** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ScrubIpPlaceOrder.new(
  service_type: 102,
  ip: 1.2.3.4
)
```

