# InterServerClient::BackupServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | Backup ID. | [optional] |
| **backup_server** | **String** | Backup server ID. | [optional] |
| **backup_username** | **String** | Backup username. | [optional] |
| **backup_type** | **String** | Backup type. | [optional] |
| **backup_currency** | **String** | Backup currency. | [optional] |
| **backup_order_date** | **String** | Backup order date. | [optional] |
| **backup_custid** | **String** | Backup customer ID. | [optional] |
| **backup_quota** | **String** | Backup quota. | [optional] |
| **backup_ip** | **String** | Backup IP address. | [optional] |
| **backup_status** | **String** | Backup status. | [optional] |
| **backup_invoice** | **String** | Backup invoice. | [optional] |
| **backup_coupon** | **String** | Backup coupon. | [optional] |
| **backup_extra** | **String** | Backup extra information. | [optional] |
| **backup_server_status** | **String** | Backup server status. | [optional] |
| **backup_comment** | **String** | Backup comment. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupServiceInfo.new(
  backup_id: 21163,
  backup_server: 38,
  backup_username: st21163,
  backup_type: 10831,
  backup_currency: USD,
  backup_order_date: 2021-12-29T14:09:57.000Z,
  backup_custid: 2773,
  backup_quota: 0,
  backup_ip: 64.20.55.234,
  backup_status: canceled,
  backup_invoice: 19591007,
  backup_coupon: 0,
  backup_extra: [],
  backup_server_status: deleted,
  backup_comment: null
)
```

