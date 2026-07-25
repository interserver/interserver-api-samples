# BillingVerifyCcRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Idx** | **Int32** | Card index to verify. | [optional] 
**CcCcv2** | **String** | CVV code for verification. | [optional] 
**CcAmount1** | **String** | First micro-charge amount for verification. | [optional] 
**CcAmount2** | **String** | Second micro-charge amount for verification. | [optional] 
**Terms** | **Boolean** | Whether terms were accepted for verification. | [optional] 

## Examples

- Prepare the resource
```powershell
$BillingVerifyCcRequest = Initialize-InterserverApiBillingVerifyCcRequest  -Idx null `
 -CcCcv2 null `
 -CcAmount1 null `
 -CcAmount2 null `
 -Terms null
```

- Convert the resource to JSON
```powershell
$BillingVerifyCcRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

