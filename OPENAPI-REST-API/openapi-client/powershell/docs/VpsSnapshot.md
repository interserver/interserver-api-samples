# VpsSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Snapshot name. | [optional] 
**Used** | **Int32** | Disk space used by this snapshot in bytes. | [optional] 
**Date** | **Int32** | Unix timestamp of when the snapshot was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsSnapshot = Initialize-InterserverApiVpsSnapshot  -Name null `
 -Used null `
 -Date null
```

- Convert the resource to JSON
```powershell
$VpsSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

