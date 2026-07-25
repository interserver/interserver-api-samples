# InterServerClient::HomeServicesBackups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | **Array&lt;String&gt;** | List of backup links. | [optional] |
| **count** | **Integer** | Number of backups. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServicesBackups.new(
  links: null,
  count: 0
)
```

