# MailBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | The last invoice date of the service. | [optional] 
**ServicePaymentStatus** | **String** | The payment status of the service. | [optional] 
**ServiceFrequency** | **String** | The frequency of the service payment. | [optional] 
**NextDate** | **String** | The next payment date of the service. | [optional] 
**ServiceNextInvoiceDate** | **String** | The next invoice date of the service. | [optional] 
**ServiceCurrency** | **String** | The currency of the service. | [optional] 
**ServiceCurrencySymbol** | **String** | The currency symbol of the service. | [optional] 
**ServiceCostInfo** | **String** | The cost information of the service. | [optional] 
**ServiceExtra** | **String[]** | Extra information for the service. | [optional] 
**ServiceExtraJson** | **String** | Extra JSON information for the service. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailBillingDetails = Initialize-InterserverApiMailBillingDetails  -ServiceLastInvoiceDate July 16, 2023 `
 -ServicePaymentStatus Unpaid `
 -ServiceFrequency Monthly `
 -NextDate 2023-08-16T00:55:05.000Z `
 -ServiceNextInvoiceDate August 16, 2023 `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCostInfo 1.00 `
 -ServiceExtra [] `
 -ServiceExtraJson []
```

- Convert the resource to JSON
```powershell
$MailBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

