# InterServerClient::MailAlertUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **Integer** | Alert ID to update. | [optional] |
| **type** | **String** | Alert type identifier. | [optional] |
| **value** | **String** | Alert value or threshold. | [optional] |
| **to** | **String** | Email address to notify. | [optional] |
| **enabled** | **String** | Whether the alert is enabled. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailAlertUpdateRequest.new(
  alert_id: null,
  type: null,
  value: null,
  to: null,
  enabled: null
)
```

