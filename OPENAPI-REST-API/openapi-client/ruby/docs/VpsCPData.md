# InterServerClient::VpsCPData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Control panel name (e.g., cPanel). | [optional] |
| **cost** | **Integer** | Monthly cost in cents for the control panel license. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsCPData.new(
  name: null,
  cost: null
)
```

