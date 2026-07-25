# InterServerClient::BackupsOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_costs** | [**BackupsOrderPackageCosts**](BackupsOrderPackageCosts.md) |  |  |
| **service_types** | [**BackupsOrderServiceTypes**](BackupsOrderServiceTypes.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupsOrder.new(
  package_costs: null,
  service_types: null
)
```

