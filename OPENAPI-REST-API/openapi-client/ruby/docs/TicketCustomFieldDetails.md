# InterServerClient::TicketCustomFieldDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_server_access** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **root_password** | **String** |  | [optional] |
| **sudo_user** | **String** |  | [optional] |
| **sudo_password** | **Integer** |  | [optional] |
| **port** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TicketCustomFieldDetails.new(
  customer_server_access: null,
  ip_address: null,
  root_password: null,
  sudo_user: null,
  sudo_password: null,
  port: null
)
```

