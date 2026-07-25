# MailBlockClickHouse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **System.DateTime** |  | 
**VarFrom** | **String** |  | 
**MessageId** | **String** |  | 
**Subject** | **String** |  | 
**To** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MailBlockClickHouse = Initialize-InterserverApiMailBlockClickHouse  -Date null `
 -VarFrom null `
 -MessageId null `
 -Subject null `
 -To null
```

- Convert the resource to JSON
```powershell
$MailBlockClickHouse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

