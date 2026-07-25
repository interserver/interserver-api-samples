# InterServerClient::GetOrderDetail200ResponsePackageCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_id** | **Float** |  | [optional] |
| **package_cost** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **currency_symbol** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetOrderDetail200ResponsePackageCosts.new(
  package_id: 11552,
  package_cost: 5,
  currency: USD,
  currency_symbol: $
)
```

