# InterServerClient::DomainOrderServices10001

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | Service ID | [optional] |
| **services_name** | **String** | Service Name | [optional] |
| **services_cost** | **String** | Service Cost | [optional] |
| **services_currency** | **String** | Currency of Service Cost | [optional] |
| **services_category** | **String** | Service Category | [optional] |
| **services_buyable** | **String** | Buyable flag for Service | [optional] |
| **services_type** | **String** | Service Type | [optional] |
| **services_field1** | **String** | Field 1 of Service | [optional] |
| **services_field2** | **String** | Field 2 of Service | [optional] |
| **services_module** | **String** | Module of Service | [optional] |
| **services_hidden** | **String** | Hidden flag for Service | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainOrderServices10001.new(
  services_id: 10001,
  services_name: .asia Domain Name Registration,
  services_cost: 19.00,
  services_currency: USD,
  services_category: 100,
  services_buyable: 1,
  services_type: 100,
  services_field1: .asia,
  services_field2: ,
  services_module: domains,
  services_hidden: 0
)
```

