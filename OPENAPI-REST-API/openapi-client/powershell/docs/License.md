# License
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**LicenseServiceInfo**](LicenseServiceInfo.md) |  | 
**ClientLinks** | [**LicenseClientLink[]**](LicenseClientLink.md) |  | 
**BillingDetails** | [**LicenseBillingDetails**](LicenseBillingDetails.md) |  | 
**CustCurrency** | **String** | Customer&#39;s currency | 
**CustCurrencySymbol** | **String** | Currency symbol for customer | 
**Package** | **String** | Package name | 
**ServiceExtra** | **String[]** | Extra service information | 
**ExtraInfoTables** | [**LicenseExtraInfoTables**](LicenseExtraInfoTables.md) |  | 
**ServiceOverviewExtra** | **String** | Extra service overview information | 
**ServiceType** | [**LicenseServiceType**](LicenseServiceType.md) |  | 
**LicenseKey** | **String** | License key | 

## Examples

- Prepare the resource
```powershell
$License = Initialize-InterserverApiLicense  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency USD `
 -CustCurrencySymbol $ `
 -Package KernelCare License `
 -ServiceExtra null `
 -ExtraInfoTables null `
 -ServiceOverviewExtra null `
 -ServiceType null `
 -LicenseKey 
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

