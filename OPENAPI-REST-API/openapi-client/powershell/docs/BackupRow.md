# BackupRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** | The id of the backup. | [optional] 
**BackupName** | **String** | The name of the backup. | [optional] 
**BackupCost** | **String** | The cost of the backup. | [optional] 
**BackupUsername** | **String** | The username of the backup. | [optional] 
**BackupStatus** | **String** | The status of the backup. | [optional] 
**ServicesName** | **String** | The services name of the backup. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupRow = Initialize-InterserverApiBackupRow  -BackupId 2414 `
 -BackupName storage-nj.interserver.net `
 -BackupCost 5.99 `
 -BackupUsername detainin2414 `
 -BackupStatus pending-setup `
 -ServicesName Swift Storage
```

- Convert the resource to JSON
```powershell
$BackupRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

