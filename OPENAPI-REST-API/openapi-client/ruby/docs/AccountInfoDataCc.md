# InterServerClient::AccountInfoDataCc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cc** | **String** |  | [optional] |
| **cc_exp** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **maxmind_riskscore** | **String** |  | [optional] |
| **maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] |
| **verified** | **Boolean** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::AccountInfoDataCc.new(
  cc: null,
  cc_exp: null,
  name: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  country: null,
  maxmind_riskscore: null,
  maxmind: null,
  verified: null
)
```

