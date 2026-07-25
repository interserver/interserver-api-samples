# LicenseBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Last invoice date | [optional] 
**ServicePaymentStatus** | **String** | Payment status | [optional] 
**ServiceFrequency** | **String** | Service frequency | [optional] 
**NextDate** | **System.DateTime** | Next date | [optional] 
**ServiceNextInvoiceDate** | **String** | Next invoice date | [optional] 
**ServiceCurrency** | **String** | Service currency | [optional] 
**ServiceCurrencySymbol** | **String** | Service currency symbol | [optional] 
**ServiceCoupon** | **String** | Service coupon | [optional] 
**ServiceCostInfo** | **String** | Service cost information | [optional] 
**ServiceExtra** | **String[]** | Additional service information | [optional] 
**ServiceExtraJson** | **String** | Additional service information in JSON format | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseBillingDetails = Initialize-InterserverApiLicenseBillingDetails  -ServiceLastInvoiceDate August 14, 2023 `
 -ServicePaymentStatus Paid `
 -ServiceFrequency Monthly `
 -NextDate 2023-09-14T09:39:46Z `
 -ServiceNextInvoiceDate September 14, 2023 `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCoupon ACOUPONFORLICENSES `
 -ServiceCostInfo 0.00 `
 -ServiceExtra null `
 -ServiceExtraJson [&quot;&quot;]
```

- Convert the resource to JSON
```powershell
$LicenseBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

