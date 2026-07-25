# InterServerClient::MailTutorialsTableRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **desc** | **String** | The description of the tutorials table row. | [optional] |
| **value** | **String** | The value of the tutorials table row. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailTutorialsTableRow.new(
  desc: cPanel Tutorial,
  value: &lt;a class&#x3D;&quot;link&quot; href&#x3D;&quot;https://mail.baby/cpanel/&quot; target&#x3D;&quot;_blank&quot;&gt;Click Here&lt;/a&gt;
)
```

