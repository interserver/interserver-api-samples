# InterServerClient::MailAlertRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Alert type identifier. | [optional] |
| **value** | **String** | Alert value or threshold. | [optional] |
| **to** | **String** | Email address to notify. | [optional] |
| **enabled** | **String** | Whether the alert is enabled. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailAlertRequest.new(
  type: null,
  value: null,
  to: null,
  enabled: null
)
```

