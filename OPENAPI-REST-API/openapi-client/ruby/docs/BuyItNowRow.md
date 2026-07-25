# InterServerClient::BuyItNowRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] |
| **cpu** | [**Array&lt;BuyItNowRowCpuInner&gt;**](BuyItNowRowCpuInner.md) |  | [optional] |
| **memory** | **String** |  | [optional] |
| **disk** | **Hash&lt;String, String&gt;** |  | [optional] |
| **bandwidth** | **String** |  | [optional] |
| **ips** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |
| **price** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BuyItNowRow.new(
  server_id: 11432,
  cpu: null,
  memory: 64GB,
  disk: null,
  bandwidth: 1Gbps Unmetered,
  ips: 1 Vlan Ip (/30),
  location: NYC Region,
  price: 64
)
```

