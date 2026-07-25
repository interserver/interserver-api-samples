# QsOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Server** | **Int32** | QuickServer plan/server id from getNewQs. | 
**Password** | **String** | Root password for the QuickServer. | 
**Os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to ""]
**Tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**Comment** | **String** | Free-form note saved on the service row. | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$QsOrderRequest = Initialize-InterserverApiQsOrderRequest  -Server null `
 -Password null `
 -Os null `
 -Tos null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$QsOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

