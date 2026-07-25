# PatchBillingCreditCardVerifyRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CcCcv2** | **String** | The CVV/CVC code on the back of the credit card. | 

## Examples

- Prepare the resource
```powershell
$PatchBillingCreditCardVerifyRequest = Initialize-InterserverApiPatchBillingCreditCardVerifyRequest  -CcCcv2 null
```

- Convert the resource to JSON
```powershell
$PatchBillingCreditCardVerifyRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

