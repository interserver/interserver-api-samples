# InterServerClient::MailTutorialsTable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the tutorials table. | [optional] |
| **rows** | [**Array&lt;MailTutorialsTableRow&gt;**](MailTutorialsTableRow.md) | The rows of the tutorials table. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailTutorialsTable.new(
  title: Tutorials,
  rows: null
)
```

