# InterServerClient::DomainOrderResponseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Registrar order ID. | [optional] |
| **admin_email** | **String** | Administrative contact email provided for the order. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainOrderResponseAttributes.new(
  id: null,
  admin_email: null
)
```

