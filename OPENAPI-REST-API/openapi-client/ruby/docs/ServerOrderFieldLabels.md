# InterServerClient::ServerOrderFieldLabels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bandwidth** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Bandwidth field label. | [optional] |
| **ips** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | IPs field label. | [optional] |
| **os** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Operating System field label. | [optional] |
| **cp** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Control Panel field label. | [optional] |
| **raid** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | RAID field label. | [optional] |
| **memory** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Memory field label. | [optional] |
| **hd** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Hard Drives field label | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderFieldLabels.new(
  bandwidth: null,
  ips: null,
  os: null,
  cp: null,
  raid: null,
  memory: null,
  hd: null
)
```

