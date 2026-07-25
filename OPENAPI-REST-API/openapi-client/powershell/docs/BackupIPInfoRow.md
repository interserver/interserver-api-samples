# BackupIPInfoRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Desc** | **String** | Description of the IP information. | [optional] 
**Value** | **String** | Value of the IP information. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupIPInfoRow = Initialize-InterserverApiBackupIPInfoRow  -Desc Netmask `
 -Value 255.255.255.248
```

- Convert the resource to JSON
```powershell
$BackupIPInfoRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

