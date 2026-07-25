# Domain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] 
**ServiceTypes** | [**System.Collections.Hashtable**](DomainServiceType.md) |  | [optional] 
**ClientLinks** | [**DomainClientLink[]**](DomainClientLink.md) |  | [optional] 
**BillingDetails** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] 
**CustCurrency** | **String** |  | [optional] 
**CustCurrencySymbol** | **String** |  | [optional] 
**ServiceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**ExtraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 
**ServiceType** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] 
**ContactDetails** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] 
**Pwarning** | **String** |  | [optional] 
**TransferInfo** | **String** |  | [optional] 
**Errors** | **Boolean** |  | [optional] 
**DomainLogs** | **String[]** |  | [optional] 
**AllInfo** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] 
**RegistrarStatus** | **String** |  | [optional] 
**Locked** | **String** |  | [optional] 
**WhoisPrivacy** | **String** |  | [optional] 
**AutoRenew** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Domain = Initialize-InterserverApiDomain  -ServiceInfo null `
 -ServiceTypes null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency null `
 -CustCurrencySymbol null `
 -ServiceExtra null `
 -ExtraInfoTables null `
 -ServiceType null `
 -ContactDetails null `
 -Pwarning null `
 -TransferInfo null `
 -Errors null `
 -DomainLogs null `
 -AllInfo null `
 -RegistrarStatus null `
 -Locked null `
 -WhoisPrivacy null `
 -AutoRenew null
```

- Convert the resource to JSON
```powershell
$Domain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

