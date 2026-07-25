# InterServerClient::ServersBuyNowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Whether the order was placed successfully. | [optional] |
| **text** | **String** | Human-readable status message. | [optional] |
| **order_details** | [**ServersBuyNowResponseOrderDetails**](ServersBuyNowResponseOrderDetails.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServersBuyNowResponse.new(
  success: true,
  text: Server order is placed.,
  order_details: null
)
```

