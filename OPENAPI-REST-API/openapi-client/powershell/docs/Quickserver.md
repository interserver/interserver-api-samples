# Quickserver
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**QuickserverServiceInfo**](QuickserverServiceInfo.md) |  | 
**ClientLinks** | [**QuickserverClientLink[]**](QuickserverClientLink.md) |  | 
**BillingDetails** | [**QuickserverBillingDetails**](QuickserverBillingDetails.md) |  | 
**CustCurrency** | **String** | Currency of the customer | 
**CustCurrencySymbol** | **String** | Currency symbol of the customer | 
**ServiceMaster** | [**QuickserverServiceMaster**](QuickserverServiceMaster.md) |  | 
**Package** | **String** | Package name | 
**OsTemplate** | **String** | Operating system template | 
**ServiceExtra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | 
**ExtraInfoTables** | [**QuickserverExtraInfoTables**](QuickserverExtraInfoTables.md) |  | 
**CpuGraphData** | **String** | CPU graph data | 
**BandwidthXaxis** | **String** | Bandwidth x-axis data | 
**BandwidthYaxis** | **String** | Bandwidth y-axis data | 
**Module** | **String** | Module information | 
**Token** | **String** | Authentication token | 
**ServiceDiskUsed** | **String** | Used disk space | 
**ServiceDiskTotal** | **String** | Total disk space | 
**DiskPercentage** | **Decimal** | Disk usage percentage | 
**Memory** | **String** | Memory information | 
**Hdd** | **String** | HDD information | 
**ServiceOverviewExtra** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$Quickserver = Initialize-InterserverApiQuickserver  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency USD `
 -CustCurrencySymbol $ `
 -ServiceMaster null `
 -Package Rapid Deploy Server `
 -OsTemplate Ubuntu 22.04 `
 -ServiceExtra null `
 -ExtraInfoTables null `
 -CpuGraphData {&quot;labels&quot;:[],&quot;value&quot;:[]} `
 -BandwidthXaxis [] `
 -BandwidthYaxis [] `
 -Module quickservers `
 -Token %3Ftoken%3DAKLFIJOAQIRFOPIEWQRURQOIURWQOI `
 -ServiceDiskUsed 0.00 GB `
 -ServiceDiskTotal 0.00 GB `
 -DiskPercentage 32.27 `
 -Memory 0GB `
 -Hdd 0GB `
 -ServiceOverviewExtra null
```

- Convert the resource to JSON
```powershell
$Quickserver | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

