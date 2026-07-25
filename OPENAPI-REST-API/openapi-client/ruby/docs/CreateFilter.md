# InterServerClient::CreateFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_type** | **String** |  |  |
| **port** | **Integer** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateFilter.new(
  filter_type: cs2_udp,
  port: 8080
)
```

