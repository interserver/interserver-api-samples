# WebsiteBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Last invoice date for the service | [optional] 
**ServicePaymentStatus** | **String** | Payment status for the service | [optional] 
**ServiceFrequency** | **String** | Frequency of the service | [optional] 
**NextDate** | **String** | Next date for the service | [optional] 
**ServiceNextInvoiceDate** | **String** | Next invoice date for the service | [optional] 
**ServiceCurrency** | **String** | Currency for the service | [optional] 
**ServiceCurrencySymbol** | **String** | Currency symbol for the service | [optional] 
**ServiceCoupon** | **String** | Coupon for the service | [optional] 
**ServiceCostInfo** | **String** | Cost information for the service | [optional] 
**ServiceExtra** | [**SystemCollectionsHashtable**](.md) | Extra information for the service | [optional] 
**ServiceExtraJson** | **String** | Extra information in JSON format for the service | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteBillingDetails = Initialize-InterserverApiWebsiteBillingDetails  -ServiceLastInvoiceDate null `
 -ServicePaymentStatus null `
 -ServiceFrequency null `
 -NextDate null `
 -ServiceNextInvoiceDate null `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCoupon null `
 -ServiceCostInfo null `
 -ServiceExtra null `
 -ServiceExtraJson null
```

- Convert the resource to JSON
```powershell
$WebsiteBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

