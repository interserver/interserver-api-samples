# BackupExtraInfoTables
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpInfo** | [**BackupIPInfo**](BackupIPInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupExtraInfoTables = Initialize-InterserverApiBackupExtraInfoTables  -IpInfo null
```

- Convert the resource to JSON
```powershell
$BackupExtraInfoTables | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

