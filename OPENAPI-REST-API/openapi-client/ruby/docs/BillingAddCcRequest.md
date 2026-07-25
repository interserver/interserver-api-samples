# InterServerClient::BillingAddCcRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **cc** | **String** |  | [optional] |
| **cc_exp** | **String** |  | [optional] |
| **cc_ccv2** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BillingAddCcRequest.new(
  name: null,
  address: null,
  city: null,
  state: null,
  country: null,
  zip: null,
  cc: null,
  cc_exp: null,
  cc_ccv2: null
)
```

