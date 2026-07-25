# BackupOrderPutRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ValidateOnly** | **Boolean** |  | [optional] 
**ServiceType** | **Int32** |  | [optional] 
**Coupon** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupOrderPutRequest = Initialize-InterserverApiBackupOrderPutRequest  -ValidateOnly null `
 -ServiceType null `
 -Coupon null
```

- Convert the resource to JSON
```powershell
$BackupOrderPutRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

