# InterServerClient::CreateFilter400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **text** | **String** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateFilter400Response.new(
  success: false,
  text: Bad Request,
  errors: null
)
```

