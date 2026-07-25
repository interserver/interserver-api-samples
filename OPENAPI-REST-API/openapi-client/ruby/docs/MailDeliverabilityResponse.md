# InterServerClient::MailDeliverabilityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stat** | **Object** | Delivered and bounced counts. | [optional] |
| **percent** | **Float** | Bounce percentage. | [optional] |
| **table_data** | **Array&lt;Array&lt;String&gt;&gt;** | Detailed deliverability breakdown by sender or domain. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailDeliverabilityResponse.new(
  stat: null,
  percent: null,
  table_data: null
)
```

