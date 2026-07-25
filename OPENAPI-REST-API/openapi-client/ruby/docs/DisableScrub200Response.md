# InterServerClient::DisableScrub200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  |  |
| **text** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DisableScrub200Response.new(
  success: true,
  text: Scrub is disabled on your IP.
)
```

