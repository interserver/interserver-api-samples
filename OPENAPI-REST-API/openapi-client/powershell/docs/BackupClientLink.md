# BackupClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Label of the client link. | [optional] 
**Link** | **String** | Link URL of the client link. | [optional] 
**Icon** | **String** | Icon of the client link. | [optional] 
**IconText** | **String** | Icon text of the client link. | [optional] 
**HelpText** | **String** | Help text of the client link. | [optional] 
**OtherAttr** | **String** | Other attributes of the client link. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupClientLink = Initialize-InterserverApiBackupClientLink  -Label null `
 -Link null `
 -Icon null `
 -IconText null `
 -HelpText null `
 -OtherAttr null
```

- Convert the resource to JSON
```powershell
$BackupClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

