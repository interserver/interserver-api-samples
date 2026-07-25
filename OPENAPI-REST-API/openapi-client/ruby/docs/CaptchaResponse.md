# InterServerClient::CaptchaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **captcha** | **String** | The base64 encoded captcha image. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CaptchaResponse.new(
  captcha: data:image/jpeg;base64,/9j/4AAQ
)
```

