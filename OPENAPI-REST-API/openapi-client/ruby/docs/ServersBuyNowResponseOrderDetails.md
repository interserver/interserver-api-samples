# InterServerClient::ServersBuyNowResponseOrderDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **Float** | The newly created service ID for the ordered server. | [optional] |
| **invoice_id** | **Float** | The invoice ID generated for the order. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServersBuyNowResponseOrderDetails.new(
  service_id: 1234,
  invoice_id: 2342355
)
```

