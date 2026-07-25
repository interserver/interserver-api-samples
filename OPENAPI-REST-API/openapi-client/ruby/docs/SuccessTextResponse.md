# InterServerClient::SuccessTextResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Indicates whether or not the command was successful or not. |  |
| **text** | **String** | Text associated with the response. | [optional] |
| **action** | **String** | Optional Action relating to the response. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::SuccessTextResponse.new(
  success: null,
  text: null,
  action: null
)
```

