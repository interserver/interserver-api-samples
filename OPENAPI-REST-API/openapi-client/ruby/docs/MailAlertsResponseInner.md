# InterServerClient::MailAlertsResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **Integer** |  | [optional] |
| **alert_type** | **String** |  | [optional] |
| **alert_value** | **String** |  | [optional] |
| **alert_to** | **String** |  | [optional] |
| **alert_enabled** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailAlertsResponseInner.new(
  alert_id: null,
  alert_type: null,
  alert_value: null,
  alert_to: null,
  alert_enabled: null
)
```

