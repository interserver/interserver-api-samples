# InterServerClient::TicketsCountArray

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **open** | **Integer** |  | [optional] |
| **on_hold** | **Integer** |  | [optional] |
| **closed** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TicketsCountArray.new(
  open: null,
  on_hold: null,
  closed: null
)
```

