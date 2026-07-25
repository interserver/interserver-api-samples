# InterServerClient::BackupLoginResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Indicates whether a login session was created. | [optional] |
| **text** | **String** | Login URL or error text returned by the storage provider. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupLoginResponse.new(
  success: null,
  text: null
)
```

