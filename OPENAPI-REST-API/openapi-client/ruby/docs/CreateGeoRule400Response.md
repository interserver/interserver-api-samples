# InterServerClient::CreateGeoRule400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **text** | **String** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateGeoRule400Response.new(
  success: false,
  text: Bad Request,
  errors: null
)
```

