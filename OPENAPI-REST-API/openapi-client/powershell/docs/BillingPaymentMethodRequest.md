# BillingPaymentMethodRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PaymentMethod** | **String** | Payment method identifier (cc, paypal, or cc{index}). | [optional] 
**CcAuto** | **String** | Whether automatic credit card payments are enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$BillingPaymentMethodRequest = Initialize-InterserverApiBillingPaymentMethodRequest  -PaymentMethod null `
 -CcAuto null
```

- Convert the resource to JSON
```powershell
$BillingPaymentMethodRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

