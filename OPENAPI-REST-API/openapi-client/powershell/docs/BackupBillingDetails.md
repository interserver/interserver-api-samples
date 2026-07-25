# BackupBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Last invoice date of the service. | [optional] 
**ServicePaymentStatus** | **String** | Payment status of the service. | [optional] 
**ServiceFrequency** | **String** | Billing frequency of the service. | [optional] 
**NextDate** | **String** | Next billing date of the service. | [optional] 
**ServiceNextInvoiceDate** | **String** | Next invoice date of the service. | [optional] 
**ServiceCurrency** | **String** | Currency of the service. | [optional] 
**ServiceCurrencySymbol** | **String** | Currency symbol of the service. | [optional] 
**ServiceCostInfo** | **String** | Cost information of the service. | [optional] 
**ServiceExtra** | **String** | Service Extra Info | [optional] 
**ServiceExtraJson** | **String** | JSON representation of extra service information. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupBillingDetails = Initialize-InterserverApiBackupBillingDetails  -ServiceLastInvoiceDate December 29, 2021 `
 -ServicePaymentStatus Paid `
 -ServiceFrequency Monthly `
 -NextDate 2022-01-29T14:09:57.000Z `
 -ServiceNextInvoiceDate January 29, 2022 `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCostInfo 3 `
 -ServiceExtra [] `
 -ServiceExtraJson []
```

- Convert the resource to JSON
```powershell
$BackupBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

