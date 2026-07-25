# InterServerClient::LicenseIpInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Table title | [optional] |
| **rows** | [**Array&lt;LicenseIpInfoRow&gt;**](LicenseIpInfoRow.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseIpInfo.new(
  title: IP Information,
  rows: null
)
```

