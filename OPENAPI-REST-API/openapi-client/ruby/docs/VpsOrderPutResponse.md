# InterServerClient::VpsOrderPutResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continue** | **Boolean** |  | [optional] |
| **errors** | **Array&lt;Object&gt;** |  | [optional] |
| **coupon_code** | **Integer** |  | [optional] |
| **service_cost** | **Integer** |  | [optional] |
| **slice_cost** | **Integer** |  | [optional] |
| **service_type** | **Integer** |  | [optional] |
| **repeat_slice_cost** | **Integer** |  | [optional] |
| **original_slice_cost** | **Integer** |  | [optional] |
| **original_cost** | **Integer** |  | [optional] |
| **repeat_service_cost** | **Integer** |  | [optional] |
| **monthly_service_cost** | **Integer** |  | [optional] |
| **custid** | **String** |  | [optional] |
| **os** | **String** |  | [optional] |
| **slices** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **controlpanel** | **String** |  | [optional] |
| **period** | **Integer** |  | [optional] |
| **location** | **Integer** |  | [optional] |
| **version** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **coupon** | **String** |  | [optional] |
| **rootpass** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrderPutResponse.new(
  continue: null,
  errors: null,
  coupon_code: null,
  service_cost: null,
  slice_cost: null,
  service_type: null,
  repeat_slice_cost: null,
  original_slice_cost: null,
  original_cost: null,
  repeat_service_cost: null,
  monthly_service_cost: null,
  custid: null,
  os: null,
  slices: null,
  platform: null,
  controlpanel: null,
  period: null,
  location: null,
  version: null,
  hostname: null,
  coupon: null,
  rootpass: null
)
```

