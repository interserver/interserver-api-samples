# InterServerClient::PatchBillingCreditCardVerifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cc_ccv2** | **String** | The CVV/CVC code on the back of the credit card. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PatchBillingCreditCardVerifyRequest.new(
  cc_ccv2: null
)
```

