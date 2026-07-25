# InterServerClient::ServiceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **st_id** | **Integer** |  |  |
| **st_name** | **String** |  |  |
| **st_category** | **Integer** |  |  |
| **st_module** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServiceType.new(
  st_id: 600,
  st_name: Dedicated Server,
  st_category: 600,
  st_module: servers
)
```

