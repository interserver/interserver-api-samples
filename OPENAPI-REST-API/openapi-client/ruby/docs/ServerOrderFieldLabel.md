# InterServerClient::ServerOrderFieldLabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the field label. | [optional] |
| **active** | **Integer** | Active status of the field label. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderFieldLabel.new(
  name: Bandwidth,
  active: 1
)
```

