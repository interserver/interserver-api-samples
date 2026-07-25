# InterServerClient::BackupIPInfoRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **desc** | **String** | Description of the IP information. | [optional] |
| **value** | **String** | Value of the IP information. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupIPInfoRow.new(
  desc: Netmask,
  value: 255.255.255.248
)
```

