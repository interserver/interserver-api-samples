# InterServerClient::UpdateTicket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **customer_server_access** | **String** |  | [optional] |
| **root_password** | **String** |  | [optional] |
| **sudo_username** | **String** |  | [optional] |
| **sudo_password** | **String** |  | [optional] |
| **port** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::UpdateTicket.new(
  ip: null,
  ip_address: null,
  customer_server_access: null,
  root_password: null,
  sudo_username: null,
  sudo_password: null,
  port: null
)
```

