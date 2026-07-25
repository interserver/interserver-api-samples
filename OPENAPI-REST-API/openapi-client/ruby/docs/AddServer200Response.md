# InterServerClient::AddServer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Status message. | [optional] |
| **invoice** | **Integer** | Invoice ID for payment. | [optional] |
| **order** | **Integer** | Server order ID. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::AddServer200Response.new(
  text: Order Completed,
  invoice: null,
  order: null
)
```

