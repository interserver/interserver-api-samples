# InterServerClient::DomainOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_ops_version** | **String** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **is_success** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **attributes** | [**DomainOrderResponseAttributes**](DomainOrderResponseAttributes.md) |  | [optional] |
| **response_text** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **response_code** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainOrderResponse.new(
  _ops_version: null,
  protocol: null,
  is_success: null,
  action: null,
  attributes: null,
  response_text: null,
  object: null,
  response_code: null
)
```

