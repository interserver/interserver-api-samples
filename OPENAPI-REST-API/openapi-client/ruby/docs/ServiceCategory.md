# InterServerClient::ServiceCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **Integer** |  |  |
| **category_name** | **String** |  |  |
| **category_tag** | **String** |  |  |
| **category_module** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServiceCategory.new(
  category_id: 1,
  category_name: OpenVZ Virtual Servers,
  category_tag: openvz,
  category_module: vps
)
```

