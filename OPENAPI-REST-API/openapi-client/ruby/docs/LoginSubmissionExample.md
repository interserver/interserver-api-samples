# InterServerClient::LoginSubmissionExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** |  |  |
| **passwd** | **String** |  |  |
| **remember** | **String** |  | [optional] |
| **g_recaptcha_response** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md) |  | [optional] |
| **tfa** | **String** | Two Factor Authentication Response. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LoginSubmissionExample.new(
  login: null,
  passwd: null,
  remember: null,
  g_recaptcha_response: null,
  tfa: null
)
```

