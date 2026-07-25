# Backup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**BackupServiceInfo**](BackupServiceInfo.md) |  | [optional] 
**ClientLinks** | [**BackupClientLink[]**](BackupClientLink.md) |  | [optional] 
**BillingDetails** | [**BackupBillingDetails**](BackupBillingDetails.md) |  | [optional] 
**CustCurrency** | **String** | Customer&#39;s currency. | [optional] 
**CustCurrencySymbol** | **String** | Customer&#39;s currency symbol. | [optional] 
**ServiceMaster** | [**BackupServiceMaster**](BackupServiceMaster.md) |  | [optional] 
**Package** | **String** | Package information. | [optional] 
**ServiceExtra** | **String** |  | [optional] 
**ExtraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Backup = Initialize-InterserverApiBackup  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency USD `
 -CustCurrencySymbol $ `
 -ServiceMaster null `
 -Package null `
 -ServiceExtra null `
 -ExtraInfoTables null
```

- Convert the resource to JSON
```powershell
$Backup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

