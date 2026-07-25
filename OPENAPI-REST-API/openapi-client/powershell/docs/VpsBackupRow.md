# VpsBackupRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Backup Type | 
**Service** | **Int32** | The service id such as vps  id. | 
**Name** | **String** | The name of the backup. | 
**Size** | **Int32** | Size of the file in bytes | 
**Date** | **Int32** | The creation date of the backup in a unix timestamp. | 

## Examples

- Prepare the resource
```powershell
$VpsBackupRow = Initialize-InterserverApiVpsBackupRow  -Type zfs `
 -Service 12343 `
 -Name automated_backup `
 -Size 132412343124213 `
 -Date 1693996140
```

- Convert the resource to JSON
```powershell
$VpsBackupRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

