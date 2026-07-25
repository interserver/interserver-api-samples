# InterServerClient::MailStatsType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** |  | [optional][default to &#39;1h&#39;] |
| **usage** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **currency_symbol** | **String** |  | [optional] |
| **cost** | **Float** |  | [optional] |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **volume** | [**MailStatsTypeVolume**](MailStatsTypeVolume.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailStatsType.new(
  time: null,
  usage: null,
  currency: null,
  currency_symbol: null,
  cost: null,
  received: null,
  sent: null,
  volume: null
)
```

