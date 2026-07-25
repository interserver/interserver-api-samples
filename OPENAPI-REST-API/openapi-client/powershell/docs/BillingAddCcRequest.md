# BillingAddCcRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Address** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**Cc** | **String** |  | [optional] 
**CcExp** | **String** |  | [optional] 
**CcCcv2** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BillingAddCcRequest = Initialize-InterserverApiBillingAddCcRequest  -Name null `
 -Address null `
 -City null `
 -State null `
 -Country null `
 -Zip null `
 -Cc null `
 -CcExp null `
 -CcCcv2 null
```

- Convert the resource to JSON
```powershell
$BillingAddCcRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

