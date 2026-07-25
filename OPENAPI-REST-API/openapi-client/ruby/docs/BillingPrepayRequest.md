# InterServerClient::BillingPrepayRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_module** | **String** | Module the prepay should be applied to (for example &#x60;default&#x60;). | [optional] |
| **amount** | **Float** | Amount to add to prepay balance. Minimum is $10. | [optional] |
| **automatic_use** | **String** | Whether the prepay balance should be used automatically. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BillingPrepayRequest.new(
  _module: null,
  amount: null,
  automatic_use: 1
)
```

