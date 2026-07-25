# InterServerClient::BuyItNowServerOrder200ResponseOsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **short_desc** | **String** |  | [optional] |
| **long_desc** | **String** |  | [optional] |
| **monthly_price** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BuyItNowServerOrder200ResponseOsInner.new(
  id: 5,
  short_desc: FreeBSD,
  long_desc: Latest FreeBSD 6.x OS&lt;br&gt;&lt;pre&gt;CP(s): cPanel/DirectAdmin&lt;/pre&gt;,
  monthly_price: 0
)
```

