# InterServerClient::PatchOauthTwoFactorRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **Integer** | The account ID returned from the POST callback. |  |
| **code** | **String** | The 6-digit two-factor authentication code. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PatchOauthTwoFactorRequest.new(
  account_id: null,
  code: null
)
```

