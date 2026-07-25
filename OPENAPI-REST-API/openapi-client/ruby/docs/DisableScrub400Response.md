# InterServerClient::DisableScrub400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  |  |
| **text** | **String** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DisableScrub400Response.new(
  success: false,
  text: Scrub is not enabled in this service.
)
```

