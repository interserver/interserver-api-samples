# InterServerClient::MailSchemaExtraInfoTables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mail** | [**MailExtraInfoTable**](MailExtraInfoTable.md) |  | [optional] |
| **tutorials** | [**MailTutorialsTable**](MailTutorialsTable.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailSchemaExtraInfoTables.new(
  mail: null,
  tutorials: null
)
```

