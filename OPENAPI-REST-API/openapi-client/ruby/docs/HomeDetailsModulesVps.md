# InterServerClient::HomeDetailsModulesVps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for VPS. | [optional] |
| **view_link** | **String** | Link to view VPS. | [optional] |
| **heading** | **String** | Heading for VPS. | [optional] |
| **buy_link** | **String** | Link to order VPS. | [optional] |
| **list_link** | **String** | Link to view VPS list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesVps.new(
  icon: cloud-meatball,
  view_link: view_vps,
  heading: VPS,
  buy_link: order_vps,
  list_link: view_vps_list
)
```

