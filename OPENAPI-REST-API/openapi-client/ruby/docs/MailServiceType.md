# InterServerClient::MailServiceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | The ID of the service type. | [optional] |
| **services_name** | **String** | The name of the service type. | [optional] |
| **services_cost** | **String** | The cost of the service type. | [optional] |
| **services_category** | **String** | The category of the service type. | [optional] |
| **services_buyable** | **String** | Whether the service type is buyable. | [optional] |
| **services_type** | **String** | The type of the service type. | [optional] |
| **services_field1** | **String** | Additional field for the service type. | [optional] |
| **services_field2** | **String** | Additional field for the service type. | [optional] |
| **services_module** | **String** | The module of the service type. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailServiceType.new(
  services_id: 10880,
  services_name: MailBaby Mail,
  services_cost: 1.00,
  services_category: 800,
  services_buyable: 1,
  services_type: 800,
  services_field1: ,
  services_field2: ,
  services_module: mail
)
```

