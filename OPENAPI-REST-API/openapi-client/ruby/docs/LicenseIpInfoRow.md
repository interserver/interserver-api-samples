# InterServerClient::LicenseIpInfoRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **desc** | **String** | Row description | [optional] |
| **value** | **String** | Row value | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseIpInfoRow.new(
  desc: Netmask,
  value: 255.255.255.248
)
```

