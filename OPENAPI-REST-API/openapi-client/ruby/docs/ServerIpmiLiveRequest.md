# InterServerClient::ServerIpmiLiveRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | Your IP Address you wish to connect to the IPMI system from. |  |
| **asset** | **Integer** | Asset ID | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerIpmiLiveRequest.new(
  ip: 1.2.3.4,
  asset: 5431
)
```

