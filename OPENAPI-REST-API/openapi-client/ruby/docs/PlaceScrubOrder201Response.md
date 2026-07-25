# InterServerClient::PlaceScrubOrder201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **text** | **String** |  | [optional] |
| **order_details** | [**PlaceScrubOrder201ResponseOrderDetails**](PlaceScrubOrder201ResponseOrderDetails.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PlaceScrubOrder201Response.new(
  success: true,
  text: ScrubIp order is placed.,
  order_details: null
)
```

