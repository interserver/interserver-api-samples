# InterServerClient::PlaceScrubOrder201ResponseOrderDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_cost** | **Integer** |  | [optional] |
| **service_id** | **Integer** |  | [optional] |
| **invoice_id** | **Integer** |  | [optional] |
| **invoice_description** | **String** |  | [optional] |
| **cj_params** | [**PlaceScrubOrder201ResponseOrderDetailsCjParams**](PlaceScrubOrder201ResponseOrderDetailsCjParams.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PlaceScrubOrder201ResponseOrderDetails.new(
  total_cost: 5,
  service_id: 12346,
  invoice_id: 2746273,
  invoice_description: Scrub + Current Ip,
  cj_params: null
)
```

