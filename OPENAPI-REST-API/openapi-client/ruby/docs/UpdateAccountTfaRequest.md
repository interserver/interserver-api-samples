# InterServerClient::UpdateAccountTfaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_2fa_google_code** | **String** | The 6-digit verification code from your authenticator app. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::UpdateAccountTfaRequest.new(
  _2fa_google_code: null
)
```

