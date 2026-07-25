# InterServerClient::GetOrderDetail200ResponseServiceTypesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **Integer** |  | [optional] |
| **services_name** | **String** |  | [optional] |
| **services_cost** | **Integer** |  | [optional] |
| **services_field1** | **String** |  | [optional] |
| **services_field2** | **String** |  | [optional] |
| **services_module** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetOrderDetail200ResponseServiceTypesInner.new(
  services_id: 11552,
  services_name: Current IP + Scrub,
  services_cost: 5,
  services_field1: ,
  services_field2: ,
  services_module: scrub_ips
)
```

