# InterServerClient::ServerIpmiPowerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The power action to send to the ipmi controller. |  |
| **asset** | **Integer** | The Asset ID | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerIpmiPowerRequest.new(
  action: on,
  asset: 5432
)
```

