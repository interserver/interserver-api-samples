# BackupServiceMaster


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_id** | **number** | Backup ID of the service master. | [optional] [default to undefined]
**backup_name** | **string** | Name of the backup service. | [optional] [default to undefined]
**backup_ip** | **string** | IP address of the backup service. | [optional] [default to undefined]
**backup_type** | **number** | Type of the backup service. | [optional] [default to undefined]
**backup_hdsize** | **number** | Size of the backup service\&#39;s hard drive. | [optional] [default to undefined]
**backup_hdfree** | **number** | Amount of free space on the backup service\&#39;s hard drive. | [optional] [default to undefined]
**backup_last_update** | **string** | Last update timestamp of the backup service. | [optional] [default to undefined]
**backup_available** | **number** | Availability status of the backup service. | [optional] [default to undefined]
**backup_iowait** | **number** | I/O wait status of the backup service. | [optional] [default to undefined]
**backup_order** | **number** | Order associated with the backup service. | [optional] [default to undefined]

## Example

```typescript
import { BackupServiceMaster } from '@interserver/myadmin-client';

const instance: BackupServiceMaster = {
    backup_id,
    backup_name,
    backup_ip,
    backup_type,
    backup_hdsize,
    backup_hdfree,
    backup_last_update,
    backup_available,
    backup_iowait,
    backup_order,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
