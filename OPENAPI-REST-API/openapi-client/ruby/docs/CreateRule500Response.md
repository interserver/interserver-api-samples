# InterServerClient::CreateRule500Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateRule500Response.new(
  success: false,
  text: Unable to create new firewall Rule.
)
```

