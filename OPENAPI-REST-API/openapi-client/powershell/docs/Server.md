# Server
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpmiAuth** | **Boolean** |  | 
**ClientLinks** | [**ServerClientLink[]**](ServerClientLink.md) |  | 
**BillingDetails** | [**ServerBillingDetails**](ServerBillingDetails.md) |  | 
**CustCurrency** | **String** |  | 
**CustCurrencySymbol** | **String** |  | 
**Package** | **String** |  | 
**ServiceExtra** | **String[]** |  | 
**Locations** | [**ServerLocations**](ServerLocations.md) |  | 
**NetworkInfo** | [**ServerNetworkInfo**](ServerNetworkInfo.md) |  | 
**ExtraInfoTables** | [**ServerExtraInfoTables**](ServerExtraInfoTables.md) |  | 
**ServiceInfo** | [**ServerServiceInfo**](ServerServiceInfo.md) |  | 

## Examples

- Prepare the resource
```powershell
$Server = Initialize-InterserverApiServer  -IpmiAuth null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency null `
 -CustCurrencySymbol null `
 -Package null `
 -ServiceExtra null `
 -Locations null `
 -NetworkInfo null `
 -ExtraInfoTables null `
 -ServiceInfo null
```

- Convert the resource to JSON
```powershell
$Server | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

