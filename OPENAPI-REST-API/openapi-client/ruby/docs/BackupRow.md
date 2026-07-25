# InterServerClient::BackupRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | The id of the backup. | [optional] |
| **backup_name** | **String** | The name of the backup. | [optional] |
| **backup_cost** | **String** | The cost of the backup. | [optional] |
| **backup_username** | **String** | The username of the backup. | [optional] |
| **backup_status** | **String** | The status of the backup. | [optional] |
| **services_name** | **String** | The services name of the backup. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupRow.new(
  backup_id: 2414,
  backup_name: storage-nj.interserver.net,
  backup_cost: 5.99,
  backup_username: detainin2414,
  backup_status: pending-setup,
  services_name: Swift Storage
)
```

