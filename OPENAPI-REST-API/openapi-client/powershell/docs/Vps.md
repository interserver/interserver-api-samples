# Vps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**VpsServiceInfo**](VpsServiceInfo.md) |  | 
**ClientLinks** | [**VpsClientLink[]**](VpsClientLink.md) |  | 
**BillingDetails** | [**VpsBillingDetails**](VpsBillingDetails.md) |  | 
**CustCurrency** | **String** |  | 
**CustCurrencySymbol** | **String** |  | 
**ServiceMaster** | [**VpsServiceMaster**](VpsServiceMaster.md) |  | 
**Package** | **String** |  | 
**OsTemplate** | **String** |  | [optional] 
**ServiceExtra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | 
**ExtraInfoTables** | [**VpsExtraInfoTables**](VpsExtraInfoTables.md) |  | 
**CpuGraphData** | [**AnyType**](.md) |  | [optional] 
**Module** | **String** |  | 
**Token** | **String** |  | 
**DaLink** | **Int32** |  | 
**SrLink** | **Int32** |  | 
**CpData** | [**VpsCPData**](VpsCPData.md) |  | 
**DaData** | [**VpsDAData**](VpsDAData.md) |  | 
**Plesk12Data** | [**VpsPlesk12Data**](VpsPlesk12Data.md) |  | 
**ServiceAddons** | [**VpsServiceAddons**](VpsServiceAddons.md) |  | 

## Examples

- Prepare the resource
```powershell
$Vps = Initialize-InterserverApiVps  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency null `
 -CustCurrencySymbol null `
 -ServiceMaster null `
 -Package null `
 -OsTemplate null `
 -ServiceExtra null `
 -ExtraInfoTables null `
 -CpuGraphData null `
 -Module null `
 -Token null `
 -DaLink null `
 -SrLink null `
 -CpData null `
 -DaData null `
 -Plesk12Data null `
 -ServiceAddons null
```

- Convert the resource to JSON
```powershell
$Vps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

