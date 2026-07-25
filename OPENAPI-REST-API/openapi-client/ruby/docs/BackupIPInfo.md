# InterServerClient::BackupIPInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the IP information table. | [optional] |
| **rows** | [**Array&lt;BackupIPInfoRow&gt;**](BackupIPInfoRow.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupIPInfo.new(
  title: IP Information,
  rows: null
)
```

