# InterServerClient::DisableScrub500Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  |  |
| **text** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DisableScrub500Response.new(
  success: false,
  text: Unable to disable scrub on your IP.
)
```

