# InterServerClient::HomeTicketStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **open** | **Integer** | Count of open tickets. | [optional] |
| **on_hold** | **Integer** | Count of tickets on hold. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeTicketStatus.new(
  open: 4,
  on_hold: 5
)
```

