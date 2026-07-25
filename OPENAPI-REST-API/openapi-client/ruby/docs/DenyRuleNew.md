# InterServerClient::DenyRuleNew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of deny rule. |  |
| **data** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. |  |
| **user** | **String** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DenyRuleNew.new(
  type: email,
  data: domeinwo@server.guesshost.net,
  user: mb20682
)
```

