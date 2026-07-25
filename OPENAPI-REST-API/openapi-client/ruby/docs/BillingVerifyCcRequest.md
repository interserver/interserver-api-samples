# InterServerClient::BillingVerifyCcRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idx** | **Integer** | Card index to verify. | [optional] |
| **cc_ccv2** | **String** | CVV code for verification. | [optional] |
| **cc_amount1** | **String** | First micro-charge amount for verification. | [optional] |
| **cc_amount2** | **String** | Second micro-charge amount for verification. | [optional] |
| **terms** | **Boolean** | Whether terms were accepted for verification. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BillingVerifyCcRequest.new(
  idx: null,
  cc_ccv2: null,
  cc_amount1: null,
  cc_amount2: null,
  terms: null
)
```

