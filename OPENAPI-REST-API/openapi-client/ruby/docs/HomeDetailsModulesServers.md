# InterServerClient::HomeDetailsModulesServers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for dedicated servers. | [optional] |
| **view_link** | **String** | Link to view server. | [optional] |
| **heading** | **String** | Heading for dedicated servers. | [optional] |
| **buy_link** | **String** | Link to order server. | [optional] |
| **list_link** | **String** | Link to view servers list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesServers.new(
  icon: server,
  view_link: view_server,
  heading: Dedicated Servers,
  buy_link: order_server,
  list_link: view_servers_list
)
```

