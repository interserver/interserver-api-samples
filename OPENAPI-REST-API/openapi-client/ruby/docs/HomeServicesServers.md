# InterServerClient::HomeServicesServers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**HomeServicesServersLinks**](HomeServicesServersLinks.md) |  | [optional] |
| **count** | **Integer** | Number of servers. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServicesServers.new(
  links: null,
  count: 1
)
```

