# InterServerClient::HomeDetailsModulesQuickservers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for quick servers. | [optional] |
| **view_link** | **String** | Link to view quick servers. | [optional] |
| **heading** | **String** | Heading for quick servers. | [optional] |
| **buy_link** | **String** | Link to order quick server. | [optional] |
| **list_link** | **String** | Link to view quick servers list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesQuickservers.new(
  icon: database,
  view_link: view_qs,
  heading: Quick Servers,
  buy_link: order_quickserver,
  list_link: view_quickservers_list
)
```

