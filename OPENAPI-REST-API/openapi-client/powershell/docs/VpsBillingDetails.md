# VpsBillingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceLastInvoiceDate** | **String** | Last invoice date | [optional] 
**ServicePaymentStatus** | **String** | Payment status | [optional] 
**ServiceFrequency** | **String** | Billing frequency | [optional] 
**NextDate** | **String** | Next billing date | [optional] 
**ServiceNextInvoiceDate** | **String** | Next invoice date | [optional] 
**ServiceCurrency** | **String** | Currency used for billing | [optional] 
**ServiceCurrencySymbol** | **String** | Currency symbol | [optional] 
**ServiceCoupon** | **String** | Billing coupon code | [optional] 
**ServiceCostInfo** | **String** | Cost information | [optional] 
**ServiceExtra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | [optional] 
**ServiceExtraJson** | **String** | Additional information in JSON format | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsBillingDetails = Initialize-InterserverApiVpsBillingDetails  -ServiceLastInvoiceDate July 26, 2023 `
 -ServicePaymentStatus Paid `
 -ServiceFrequency Monthly `
 -NextDate 2023-08-26T09:41:12.000Z `
 -ServiceNextInvoiceDate August 26, 2023 `
 -ServiceCurrency USD `
 -ServiceCurrencySymbol $ `
 -ServiceCoupon TheCouponIUsed `
 -ServiceCostInfo 0.00 `
 -ServiceExtra null `
 -ServiceExtraJson {&quot;spice&quot;:5903,&quot;snapshots&quot;:[{&quot;name&quot;:&quot;third&quot;,&quot;used&quot;:36490445,&quot;date&quot;:1692095220},{&quot;name&quot;:&quot;second&quot;,&quot;used&quot;:40894464,&quot;date&quot;:1692181620},{&quot;name&quot;:&quot;first&quot;,&quot;used&quot;:54735668,&quot;date&quot;:1692268020}]}
```

- Convert the resource to JSON
```powershell
$VpsBillingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

