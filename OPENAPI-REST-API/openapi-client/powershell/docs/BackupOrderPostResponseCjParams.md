# BackupOrderPostResponseCjParams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerTagId** | **String** |  | [optional] 
**CID** | **String** |  | [optional] 
**OID** | **String** |  | [optional] 
**TYPE** | **String** |  | [optional] 
**ITEM1** | **String** |  | [optional] 
**AMT1** | **String** |  | [optional] 
**QTY1** | **Int32** |  | [optional] 
**CURRENCY** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupOrderPostResponseCjParams = Initialize-InterserverApiBackupOrderPostResponseCjParams  -ContainerTagId null `
 -CID null `
 -OID null `
 -TYPE null `
 -ITEM1 null `
 -AMT1 null `
 -QTY1 null `
 -CURRENCY null
```

- Convert the resource to JSON
```powershell
$BackupOrderPostResponseCjParams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

