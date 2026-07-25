# InterServerClient::HomeDetailsModulesBackups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for storages. | [optional] |
| **view_link** | **String** | Link to view backup. | [optional] |
| **heading** | **String** | Heading for storages. | [optional] |
| **buy_link** | **String** | Link to order storage. | [optional] |
| **list_link** | **String** | Link to view backups list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesBackups.new(
  icon: warehouse,
  view_link: view_backup,
  heading: Storages,
  buy_link: order_storage,
  list_link: view_backups_list
)
```

