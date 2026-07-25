# InterServerClient::ServicesInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **modules** | [**Modules**](Modules.md) |  |  |
| **services** | [**Services**](Services.md) |  |  |
| **service_types** | [**ServiceTypes**](ServiceTypes.md) |  |  |
| **service_categories** | [**ServiceCategories**](ServiceCategories.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServicesInfo.new(
  modules: null,
  services: null,
  service_types: null,
  service_categories: null
)
```

