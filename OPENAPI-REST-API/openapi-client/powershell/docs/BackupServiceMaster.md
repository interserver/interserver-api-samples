# BackupServiceMaster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **Int32** | Backup ID of the service master. | [optional] 
**BackupName** | **String** | Name of the backup service. | [optional] 
**BackupIp** | **String** | IP address of the backup service. | [optional] 
**BackupType** | **Int32** | Type of the backup service. | [optional] 
**BackupHdsize** | **Int32** | Size of the backup service&#39;s hard drive. | [optional] 
**BackupHdfree** | **Int32** | Amount of free space on the backup service&#39;s hard drive. | [optional] 
**BackupLastUpdate** | **String** | Last update timestamp of the backup service. | [optional] 
**BackupAvailable** | **Int32** | Availability status of the backup service. | [optional] 
**BackupIowait** | **Int32** | I/O wait status of the backup service. | [optional] 
**BackupOrder** | **Int32** | Order associated with the backup service. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupServiceMaster = Initialize-InterserverApiBackupServiceMaster  -BackupId 38 `
 -BackupName storage1400.is.cc `
 -BackupIp 44.22.11.88 `
 -BackupType 703 `
 -BackupHdsize 156448 `
 -BackupHdfree 61374 `
 -BackupLastUpdate 2023-08-17T23:20:02.000Z `
 -BackupAvailable 0 `
 -BackupIowait 0 `
 -BackupOrder 21359
```

- Convert the resource to JSON
```powershell
$BackupServiceMaster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

