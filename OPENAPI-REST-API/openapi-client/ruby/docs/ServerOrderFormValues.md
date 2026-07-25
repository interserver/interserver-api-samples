# InterServerClient::ServerOrderFormValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memory** | **Integer** | Memory value for the server order. | [optional] |
| **bandwidth** | **String** | Bandwidth value for the server order. | [optional] |
| **ips** | **String** | IPs value for the server order. | [optional] |
| **os** | **String** | Operating System value for the server order. | [optional] |
| **cp** | **Integer** | Control Panel value for the server order. | [optional] |
| **raid** | **String** | RAID value for the server order. | [optional] |
| **hd** | **String** | Hard Drives value for the server order. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderFormValues.new(
  memory: 22,
  bandwidth: 3,
  ips: 9,
  os: 5,
  cp: 5,
  raid: 0,
  hd: 16
)
```

