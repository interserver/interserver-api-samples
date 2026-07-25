# InterServerClient::GetAccountTfaSetup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_2fa_google_key** | **String** | Base64-encoded secret key for TOTP setup. | [optional] |
| **_2fa_google_split** | **String** | Human-readable formatted key (chunks of 4 characters). | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetAccountTfaSetup200Response.new(
  _2fa_google_key: null,
  _2fa_google_split: null
)
```

