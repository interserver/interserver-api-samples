# InterServerClient::ServerIpmiLiveInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  | [optional] |
| **public_ip** | **String** |  | [optional] |
| **allowed_ip** | **String** |  | [optional] |
| **client_username** | **String** |  | [optional] |
| **client_password** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerIpmiLiveInfo.new(
  text: null,
  public_ip: null,
  allowed_ip: null,
  client_username: null,
  client_password: null
)
```

