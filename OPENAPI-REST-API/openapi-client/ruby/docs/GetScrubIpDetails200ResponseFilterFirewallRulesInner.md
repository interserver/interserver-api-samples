# InterServerClient::GetScrubIpDetails200ResponseFilterFirewallRulesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **source_ip** | **String** |  | [optional] |
| **destination_ip** | **String** |  | [optional] |
| **protocol_id** | **String** |  | [optional] |
| **source_port** | **String** |  | [optional] |
| **destination_port** | **String** |  | [optional] |
| **xdp_action** | **String** |  | [optional] |
| **global_drop** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetScrubIpDetails200ResponseFilterFirewallRulesInner.new(
  id: null,
  source_ip: null,
  destination_ip: null,
  protocol_id: null,
  source_port: null,
  destination_port: null,
  xdp_action: null,
  global_drop: null
)
```

