# BackupServiceInfo

Core service record for a backup storage service including ID, status, quota, and billing details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **string** | Backup ID. | [optional] [default to undefined]
**backup_server** | **string** | Backup server ID. | [optional] [default to undefined]
**backup_username** | **string** | Backup username. | [optional] [default to undefined]
**backup_type** | **string** | Backup type. | [optional] [default to undefined]
**backup_currency** | **string** | Backup currency. | [optional] [default to undefined]
**backup_order_date** | **string** | Backup order date. | [optional] [default to undefined]
**backup_custid** | **string** | Backup customer ID. | [optional] [default to undefined]
**backup_quota** | **string** | Backup quota. | [optional] [default to undefined]
**backup_ip** | **string** | Backup IP address. | [optional] [default to undefined]
**backup_status** | **string** | Backup status. | [optional] [default to undefined]
**backup_invoice** | **string** | Backup invoice. | [optional] [default to undefined]
**backup_coupon** | **string** | Backup coupon. | [optional] [default to undefined]
**backup_extra** | **string** | Backup extra information. | [optional] [default to undefined]
**backup_server_status** | **string** | Backup server status. | [optional] [default to undefined]
**backup_comment** | **string** | Backup comment. | [optional] [default to undefined]

## Example

```typescript
import { BackupServiceInfo } from '@interserver/myadmin-client';

const instance: BackupServiceInfo = {
    backup_id,
    backup_server,
    backup_username,
    backup_type,
    backup_currency,
    backup_order_date,
    backup_custid,
    backup_quota,
    backup_ip,
    backup_status,
    backup_invoice,
    backup_coupon,
    backup_extra,
    backup_server_status,
    backup_comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
