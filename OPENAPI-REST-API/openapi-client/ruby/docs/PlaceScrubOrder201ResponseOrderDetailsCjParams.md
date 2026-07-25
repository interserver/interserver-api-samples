# InterServerClient::PlaceScrubOrder201ResponseOrderDetailsCjParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **container_tag_id** | **Integer** |  | [optional] |
| **cid** | **Integer** |  | [optional] |
| **oid** | **String** |  | [optional] |
| **type** | **Integer** |  | [optional] |
| **item1** | **String** |  | [optional] |
| **amt1** | **Integer** |  | [optional] |
| **qty1** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PlaceScrubOrder201ResponseOrderDetailsCjParams.new(
  container_tag_id: 1684,
  cid: 2314,
  oid: scrub_ips12424,
  type: 2242343242,
  item1: scrub_ips904,
  amt1: 5,
  qty1: 1,
  currency: USD
)
```

