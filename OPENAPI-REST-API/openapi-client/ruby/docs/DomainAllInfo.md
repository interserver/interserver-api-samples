# InterServerClient::DomainAllInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_ops_version** | **String** |  | [optional] |
| **attributes** | [**DomainAllInfoAttributes**](DomainAllInfoAttributes.md) |  | [optional] |
| **object** | **String** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **response_text** | **String** |  | [optional] |
| **response_code** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **is_success** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainAllInfo.new(
  _ops_version: null,
  attributes: null,
  object: null,
  protocol: null,
  response_text: null,
  response_code: null,
  action: null,
  is_success: null
)
```

