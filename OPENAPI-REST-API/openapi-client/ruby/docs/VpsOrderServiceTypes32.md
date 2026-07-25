# InterServerClient::VpsOrderServiceTypes32

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** |  | [optional] |
| **services_name** | **String** |  | [optional] |
| **services_cost** | **String** |  | [optional] |
| **services_category** | **String** |  | [optional] |
| **services_buyable** | **String** |  | [optional] |
| **services_type** | **String** |  | [optional] |
| **services_field1** | **String** |  | [optional] |
| **services_field2** | **String** |  | [optional] |
| **services_module** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrderServiceTypes32.new(
  services_id: 32,
  services_name: KVM Windows VPS Slice,
  services_cost: 10.00,
  services_category: 2,
  services_buyable: 1,
  services_type: 1,
  services_field1: slice,
  services_field2: ,
  services_module: vps
)
```

