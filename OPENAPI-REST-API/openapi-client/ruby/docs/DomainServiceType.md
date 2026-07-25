# InterServerClient::DomainServiceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | Service type ID. | [optional] |
| **services_name** | **String** | Service type name (e.g., .com Registration). | [optional] |
| **services_cost** | **String** | Service cost per billing period. | [optional] |
| **services_category** | **String** | Service category ID. | [optional] |
| **services_buyable** | **String** | Whether this service type is available for purchase. | [optional] |
| **services_type** | **String** | Internal service type identifier. | [optional] |
| **services_field1** | **String** | TLD or first configurable field for the service type. | [optional] |
| **services_field2** | **String** | Second configurable field for the service type. | [optional] |
| **services_module** | **String** | Backend module handling this service type. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainServiceType.new(
  services_id: null,
  services_name: null,
  services_cost: null,
  services_category: null,
  services_buyable: null,
  services_type: null,
  services_field1: null,
  services_field2: null,
  services_module: null
)
```

