# InterServerClient::ScrubIpsLogRowSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** |  | [optional] |
| **filter** | **String** |  | [optional] |
| **blocked_ip** | **String** |  | [optional] |
| **target_ip** | **String** |  | [optional] |
| **target_port** | **Float** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **byte_count** | **Float** |  | [optional] |
| **xdp_action** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ScrubIpsLogRowSchema.new(
  date: null,
  filter: null,
  blocked_ip: null,
  target_ip: null,
  target_port: null,
  protocol: null,
  byte_count: null,
  xdp_action: null
)
```

