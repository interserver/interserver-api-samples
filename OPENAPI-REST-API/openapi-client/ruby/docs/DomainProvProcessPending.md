# InterServerClient::DomainProvProcessPending

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_ops_version** | **String** |  | [optional] |
| **response_text** | **String** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **response_code** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **is_success** | **String** |  | [optional] |
| **attributes** | [**DomainProvProcessPendingAttributes**](DomainProvProcessPendingAttributes.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainProvProcessPending.new(
  _ops_version: null,
  response_text: null,
  protocol: null,
  response_code: null,
  action: null,
  object: null,
  is_success: null,
  attributes: null
)
```

