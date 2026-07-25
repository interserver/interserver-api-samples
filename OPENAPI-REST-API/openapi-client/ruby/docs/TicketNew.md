# InterServerClient::TicketNew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** |  |  |
| **body** | **String** |  |  |
| **service_id** | **Integer** |  | [optional] |
| **service_module** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TicketNew.new(
  subject: null,
  body: null,
  service_id: null,
  service_module: null
)
```

