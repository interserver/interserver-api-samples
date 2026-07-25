# QuickserverBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Last invoice date | [optional] 
**ServicePaymentStatus** | **String** | Payment status | [optional] 
**ServiceFrequency** | **String** | Service frequency | [optional] 
**NextDate** | **String** | Next date | [optional] 
**ServiceNextInvoiceDate** | **String** | Next invoice date | [optional] 
**ServiceCurrency** | **String** | Currency | [optional] 
**ServiceCurrencySymbol** | **String** | Currency symbol | [optional] 
**ServiceCostInfo** | **String** | Cost information | [optional] 
**ServiceExtra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | [optional] 
**ServiceExtraJson** | **String** | Extra information (JSON format) | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverBillingDetails = Initialize-InterserverApiQuickserverBillingDetails  -ServiceLastInvoiceDate April 11, 2023 `
 -ServicePaymentStatus Paid `
 -ServiceFrequency Monthly `
 -NextDate 2023-05-11T20:00:06.000Z `
 -ServiceNextInvoiceDate May 11, 2023 `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCostInfo 49.00 `
 -ServiceExtra null `
 -ServiceExtraJson {&quot;platform&quot;:&quot;kvm&quot;}
```

- Convert the resource to JSON
```powershell
$QuickserverBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

