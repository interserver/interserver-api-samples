# InterServerClient::ServerOrderConfigIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memory** | **Integer** | Memory configuration ID for the server order. | [optional] |
| **bandwidth** | **String** | Bandwidth configuration ID for the server order. | [optional] |
| **ips** | **String** | IPs configuration ID for the server order. | [optional] |
| **os** | **String** | Operating System configuration ID for the server order. | [optional] |
| **cp** | **Integer** | Control Panel configuration ID for the server order. | [optional] |
| **raid** | **String** | RAID configuration ID for the server order. | [optional] |
| **hd** | **String** | Hard Drives configuration ID for the server order. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderConfigIds.new(
  memory: 22,
  bandwidth: 3,
  ips: 9,
  os: 5,
  cp: 5,
  raid: 0,
  hd: 16
)
```

