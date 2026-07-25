# InterServerClient::VpsBackupRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Backup Type |  |
| **service** | **Integer** | The service id such as vps  id. |  |
| **name** | **String** | The name of the backup. |  |
| **size** | **Integer** | Size of the file in bytes |  |
| **date** | **Integer** | The creation date of the backup in a unix timestamp. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsBackupRow.new(
  type: zfs,
  service: 12343,
  name: automated_backup,
  size: 132412343124213,
  date: 1693996140
)
```

