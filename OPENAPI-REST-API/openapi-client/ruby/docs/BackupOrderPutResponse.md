# InterServerClient::BackupOrderPutResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continue** | **Boolean** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |
| **service_type** | **Integer** |  | [optional] |
| **service_cost** | **String** |  | [optional] |
| **original_cost** | **String** |  | [optional] |
| **repeat_service_cost** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **coupon** | **String** |  | [optional] |
| **coupon_code** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupOrderPutResponse.new(
  continue: null,
  errors: null,
  service_type: null,
  service_cost: null,
  original_cost: null,
  repeat_service_cost: null,
  hostname: null,
  password: null,
  coupon: null,
  coupon_code: null
)
```

