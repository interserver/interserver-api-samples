# InterServerClient::LicenseServiceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | Service ID | [optional] |
| **services_name** | **String** | Service name | [optional] |
| **services_cost** | **String** | Service cost | [optional] |
| **services_category** | **String** | Service category | [optional] |
| **services_buyable** | **String** | Buyable status | [optional] |
| **services_type** | **String** | Service type | [optional] |
| **services_field1** | **String** | Service field 1 | [optional] |
| **services_field2** | **String** | Service field 2 | [optional] |
| **services_module** | **String** | Service module | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseServiceType.new(
  services_id: 5034,
  services_name: KernelCare License,
  services_cost: 2.95,
  services_category: 508,
  services_buyable: 1,
  services_type: 508,
  services_field1: 16,
  services_field2: ,
  services_module: licenses
)
```

