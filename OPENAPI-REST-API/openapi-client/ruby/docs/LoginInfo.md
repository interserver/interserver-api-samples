# InterServerClient::LoginInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **captcha** | **String** | A base64 encoded image to use for rendering the alternateive captcha. |  |
| **counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  |  |
| **logo** | **String** | A logo image url. | [optional] |
| **language** | **String** | The desired langauge to render the site with. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LoginInfo.new(
  captcha: data:image/jpeg;base64,/9j/,
  counts: null,
  logo: //my.interserver.net/images/logos/mystaging.png,
  language: en-US
)
```

