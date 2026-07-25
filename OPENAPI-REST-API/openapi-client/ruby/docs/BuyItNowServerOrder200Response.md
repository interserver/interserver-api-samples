# InterServerClient::BuyItNowServerOrder200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bandwidth** | [**Array&lt;BuyItNowServerOrder200ResponseBandwidthInner&gt;**](BuyItNowServerOrder200ResponseBandwidthInner.md) |  | [optional] |
| **ips** | [**Array&lt;BuyItNowServerOrder200ResponseIpsInner&gt;**](BuyItNowServerOrder200ResponseIpsInner.md) |  | [optional] |
| **os** | [**Array&lt;BuyItNowServerOrder200ResponseOsInner&gt;**](BuyItNowServerOrder200ResponseOsInner.md) |  | [optional] |
| **cp** | [**Array&lt;BuyItNowServerOrder200ResponseCpInner&gt;**](BuyItNowServerOrder200ResponseCpInner.md) |  | [optional] |
| **raid** | [**Array&lt;BuyItNowServerOrder200ResponseRaidInner&gt;**](BuyItNowServerOrder200ResponseRaidInner.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BuyItNowServerOrder200Response.new(
  bandwidth: null,
  ips: null,
  os: null,
  cp: null,
  raid: null
)
```

