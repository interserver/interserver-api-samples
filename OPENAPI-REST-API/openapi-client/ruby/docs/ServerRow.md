# InterServerClient::ServerRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The id of the server. |  |
| **account_lid** | **String** | The account lid of the server. |  |
| **server_hostname** | **String** | The hostname of the server. |  |
| **server_status** | **String** | The status of the server. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerRow.new(
  server_id: 8404,
  account_lid: detain@interserver.net,
  server_hostname: testsignup.is.net,
  server_status: deleted
)
```

