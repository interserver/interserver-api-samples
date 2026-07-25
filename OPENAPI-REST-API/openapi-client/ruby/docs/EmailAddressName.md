# InterServerClient::EmailAddressName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address. |  |
| **name** | **String** | Name to use for the sending contact. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::EmailAddressName.new(
  email: user@domain.com,
  name: John Smith
)
```

