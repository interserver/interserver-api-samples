# BackupIPInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Title of the IP information table. | [optional] 
**Rows** | [**BackupIPInfoRow[]**](BackupIPInfoRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupIPInfo = Initialize-InterserverApiBackupIPInfo  -Title IP Information `
 -Rows null
```

- Convert the resource to JSON
```powershell
$BackupIPInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

