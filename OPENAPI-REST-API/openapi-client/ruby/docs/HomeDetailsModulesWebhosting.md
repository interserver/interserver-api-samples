# InterServerClient::HomeDetailsModulesWebhosting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for web hosting. | [optional] |
| **view_link** | **String** | Link to view website. | [optional] |
| **heading** | **String** | Heading for web hosting. | [optional] |
| **buy_link** | **String** | Link to order website. | [optional] |
| **list_link** | **String** | Link to view websites list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesWebhosting.new(
  icon: window-maximize,
  view_link: view_website,
  heading: Web Hosting,
  buy_link: order_website,
  list_link: view_websites_list
)
```

