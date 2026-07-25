# InterServerClient::LicensesOrderServiceTypes11482

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | Service ID | [optional] |
| **services_name** | **String** | Service Name | [optional] |
| **services_cost** | **String** | Service Cost | [optional] |
| **services_category** | **String** | Service Category | [optional] |
| **services_buyable** | **String** | Buyable flag for Service | [optional] |
| **services_type** | **String** | Service Type | [optional] |
| **services_field1** | **String** | Field 1 of Service | [optional] |
| **services_field2** | **String** | Field 2 of Service | [optional] |
| **services_module** | **String** | Module of Service | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicensesOrderServiceTypes11482.new(
  services_id: 11482,
  services_name: DirectAdmin Standard,
  services_cost: 21.75,
  services_category: 506,
  services_buyable: 1,
  services_type: 506,
  services_field1: 2704,Standard,
  services_field2: Unlimited Accounts &amp; Domains&lt;br&gt;&lt;br&gt;The DirectAdmin standard license is best for medium to large shared-hosting and/or reseller-hosting companies. No limit on accounts or domains.,
  services_module: licenses
)
```

