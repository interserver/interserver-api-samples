# InterServerClient::FloatingIpOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_type** | **Integer** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). |  |
| **coupon** | **String** | Coupon code. | [optional][default to &#39;&#39;] |
| **comment** | **String** | Free-form note saved on the service row (used on addFloatingIp). | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::FloatingIpOrderRequest.new(
  service_type: null,
  coupon: null,
  comment: null
)
```

