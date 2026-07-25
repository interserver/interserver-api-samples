# InterServerClient::PatchOauthTwoFactor200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **Boolean** | Whether the 2FA verification succeeded and the user is now logged in. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PatchOauthTwoFactor200Response.new(
  login: null
)
```

