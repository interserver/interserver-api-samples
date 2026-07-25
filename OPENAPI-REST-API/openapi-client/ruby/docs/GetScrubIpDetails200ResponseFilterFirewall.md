# InterServerClient::GetScrubIpDetails200ResponseFilterFirewall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;GetScrubIpDetails200ResponseFilterFirewallRulesInner&gt;**](GetScrubIpDetails200ResponseFilterFirewallRulesInner.md) |  | [optional] |
| **filters** | [**Array&lt;GetScrubIpDetails200ResponseFilterFirewallFiltersInner&gt;**](GetScrubIpDetails200ResponseFilterFirewallFiltersInner.md) |  | [optional] |
| **scrub_enabled** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetScrubIpDetails200ResponseFilterFirewall.new(
  rules: null,
  filters: null,
  scrub_enabled: null
)
```

