# InterServerClient::PostOauthCallback200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **Boolean** | Whether the user was logged in to an existing account. | [optional] |
| **signup** | **Boolean** | Whether a new account was created. | [optional] |
| **linked** | **Boolean** | Whether the OAuth provider was linked to an existing account. | [optional] |
| **account_id** | **Integer** | The account ID associated with the OAuth login. | [optional] |
| **error_code** | **String** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PostOauthCallback200Response.new(
  login: null,
  signup: null,
  linked: null,
  account_id: null,
  error_code: null
)
```

