# Website
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**WebsiteServiceInfo**](WebsiteServiceInfo.md) |  | [optional] 
**ClientLinks** | [**WebsiteClientLink[]**](WebsiteClientLink.md) |  | [optional] 
**BillingDetails** | [**WebsiteBillingDetails**](WebsiteBillingDetails.md) |  | [optional] 
**CustCurrency** | **String** | Customer&#39;s currency | [optional] 
**CustCurrencySymbol** | **String** | Customer currency symbol | [optional] 
**ServiceMaster** | [**WebsiteServiceMaster**](WebsiteServiceMaster.md) |  | [optional] 
**Package** | **String** | Package information | [optional] 
**ServiceExtra** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**ExtraInfoTables** | [**WebsiteExtraInfoTables**](WebsiteExtraInfoTables.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Website = Initialize-InterserverApiWebsite  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency USD `
 -CustCurrencySymbol $ `
 -ServiceMaster null `
 -Package Web Hosting Direct Admin `
 -ServiceExtra null `
 -ExtraInfoTables null
```

- Convert the resource to JSON
```powershell
$Website | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

