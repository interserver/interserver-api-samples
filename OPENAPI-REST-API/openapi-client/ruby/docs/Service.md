# InterServerClient::Service

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **Integer** |  |  |
| **services_name** | **String** |  |  |
| **services_cost** | **Float** |  |  |
| **services_currency** | **String** |  |  |
| **services_category** | **Integer** |  |  |
| **services_buyable** | **Boolean** |  |  |
| **services_type** | **Integer** |  |  |
| **services_field1** | **String** |  |  |
| **services_field2** | **String** |  |  |
| **services_module** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Service.new(
  services_id: 31,
  services_name: OpenVZ VPS Slice,
  services_cost: 6,
  services_currency: USD,
  services_category: 1,
  services_buyable: true,
  services_type: 6,
  services_field1: slice,
  services_field2: null,
  services_module: vps
)
```

