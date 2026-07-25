# InterServerClient::TextResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Response text | [optional] |
| **message** | **String** | Response message | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TextResponse.new(
  text: &quot;You were successfull.&quot;,
  message: null
)
```

