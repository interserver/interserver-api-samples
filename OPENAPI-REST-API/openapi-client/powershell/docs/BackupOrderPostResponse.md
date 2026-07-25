# BackupOrderPostResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarContinue** | **Boolean** |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**TotalCost** | **String** |  | [optional] 
**Iid** | **String** |  | [optional] 
**Iids** | **String[]** |  | [optional] 
**RealIids** | **String[]** |  | [optional] 
**ServiceId** | **Int32** |  | [optional] 
**InvoiceDescription** | **String** |  | [optional] 
**CjParams** | [**BackupOrderPostResponseCjParams**](BackupOrderPostResponseCjParams.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupOrderPostResponse = Initialize-InterserverApiBackupOrderPostResponse  -VarContinue null `
 -Errors null `
 -TotalCost null `
 -Iid null `
 -Iids null `
 -RealIids null `
 -ServiceId null `
 -InvoiceDescription null `
 -CjParams null
```

- Convert the resource to JSON
```powershell
$BackupOrderPostResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

