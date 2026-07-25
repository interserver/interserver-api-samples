# InterServerClient::LoginSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** |  | [optional] |
| **account_id** | **Integer** |  | [optional] |
| **account_lid** | **String** |  | [optional] |
| **ima** | **String** |  | [optional] |
| **gravatar** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LoginSuccessResponse.new(
  session_id: null,
  account_id: null,
  account_lid: null,
  ima: null,
  gravatar: null
)
```

