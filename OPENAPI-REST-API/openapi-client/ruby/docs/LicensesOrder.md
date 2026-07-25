# InterServerClient::LicensesOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_categories** | [**LicensesOrderServiceCategories**](LicensesOrderServiceCategories.md) |  | [optional] |
| **package_costs** | [**LicensesOrderPackageCosts**](LicensesOrderPackageCosts.md) |  | [optional] |
| **service_types** | [**LicensesOrderServiceTypes**](LicensesOrderServiceTypes.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicensesOrder.new(
  service_categories: null,
  package_costs: null,
  service_types: null
)
```

