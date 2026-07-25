# InterServerClient::CreateFirewallRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protocol_id** | **Integer** | 1 &#x3D; TCP, 2 &#x3D; UDP |  |
| **xdp_action** | **Integer** | 1 &#x3D; Block,  0 &#x3D; Whitelist |  |
| **destination_port** | **Integer** |  | [optional][default to 80] |
| **source_ip** | **String** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional][default to &#39;0.0.0.0&#39;] |
| **source_port** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateFirewallRule.new(
  protocol_id: 1,
  xdp_action: 1,
  destination_port: 22,
  source_ip: 1.2.4.5,
  source_port: 1302
)
```

