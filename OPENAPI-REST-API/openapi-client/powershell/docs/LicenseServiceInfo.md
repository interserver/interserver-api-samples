# LicenseServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **String** | License ID | 
**LicenseType** | **String** | License type | 
**LicenseCurrency** | **String** | License currency | 
**LicenseOrderDate** | **System.DateTime** | License order date | 
**LicenseCustid** | **String** | Customer ID | 
**LicenseIp** | **String** | License IP | 
**LicenseStatus** | **String** | License status | 
**LicenseHostname** | **String** | License hostname | [optional] 
**LicenseKey** | **String** | License key | [optional] 
**LicenseInvoice** | **String** | License invoice | 
**LicenseCoupon** | **String** | License coupon | 
**LicenseExtra** | **String** | Additional license information | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseServiceInfo = Initialize-InterserverApiLicenseServiceInfo  -LicenseId 386522 `
 -LicenseType 5034 `
 -LicenseCurrency USD `
 -LicenseOrderDate 2020-01-14T10:48:14Z `
 -LicenseCustid 771282 `
 -LicenseIp 1.2.3.4 `
 -LicenseStatus active `
 -LicenseHostname  `
 -LicenseKey  `
 -LicenseInvoice 18704419 `
 -LicenseCoupon 1836 `
 -LicenseExtra 
```

- Convert the resource to JSON
```powershell
$LicenseServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

