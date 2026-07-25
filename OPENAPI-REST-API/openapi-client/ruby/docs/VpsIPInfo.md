# InterServerClient::VpsIPInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the table | [optional] |
| **rows** | [**Array&lt;VpsIPInfoRow&gt;**](VpsIPInfoRow.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsIPInfo.new(
  title: IP Information,
  rows: null
)
```

