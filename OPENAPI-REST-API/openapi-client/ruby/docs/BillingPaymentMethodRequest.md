# InterServerClient::BillingPaymentMethodRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | Payment method identifier (cc, paypal, or cc{index}). | [optional] |
| **cc_auto** | **String** | Whether automatic credit card payments are enabled. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BillingPaymentMethodRequest.new(
  payment_method: null,
  cc_auto: null
)
```

