# InterServerClient::QuickserverRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qs_id** | **String** | The id of the qs. |  |
| **qs_name** | **String** | The name of the qs. |  |
| **cost** | **String** | The cost of the qs. |  |
| **qs_hostname** | **String** | The hostname of the qs. |  |
| **qs_status** | **String** | The status of the qs. |  |
| **qs_comment** | **String** | The comment of the qs. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverRow.new(
  qs_id: 19504,
  qs_name: Quickserver199,
  cost: 65.00,
  qs_hostname: qs19504,
  qs_status: canceled,
  qs_comment: 
)
```

