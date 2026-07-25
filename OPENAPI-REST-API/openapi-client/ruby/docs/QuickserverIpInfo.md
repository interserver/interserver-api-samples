# InterServerClient::QuickserverIpInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Table title | [optional] |
| **rows** | [**Array&lt;QuickserverIpTableRow&gt;**](QuickserverIpTableRow.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverIpInfo.new(
  title: IP Information,
  rows: null
)
```

