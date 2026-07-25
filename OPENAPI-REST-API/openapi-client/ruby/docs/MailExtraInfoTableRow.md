# InterServerClient::MailExtraInfoTableRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **desc** | **String** | The description of the extra info table row. | [optional] |
| **value** | **String** | The value of the extra info table row. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailExtraInfoTableRow.new(
  desc: SMTP Server,
  value: relay.mailbaby.net
)
```

