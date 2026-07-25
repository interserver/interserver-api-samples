# DomainLookupResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Available** | **Boolean** | Whether the domain is available to register. | [optional] 
**Premium** | **Boolean** | Whether the domain is marked as premium by the registrar. | [optional] 
**Website** | **Boolean** | Indicates if the domain is already used by a website service. | [optional] 
**DomainService** | **Boolean** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**Service** | [**SystemCollectionsHashtable**](.md) | Service catalog details for the domain&#39;s TLD. | [optional] 
**WhoisPrivacy** | **Boolean** | Whether Whois privacy is available for the TLD. | [optional] 
**New** | **String** | Calculated registration price, when available. | [optional] 
**Renewal** | **String** | Calculated renewal price, when available. | [optional] 
**Transfer** | **String** | Calculated transfer price, when available. | [optional] 
**Fields** | [**SystemCollectionsHashtable**](.md) | Registrar field requirements for this domain/TLD. | [optional] 
**Currencies** | [**SystemCollectionsHashtable**](.md) | Pricing information normalized to supported currencies. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainLookupResponse = Initialize-InterserverApiDomainLookupResponse  -Available null `
 -Premium null `
 -Website null `
 -DomainService null `
 -Service null `
 -WhoisPrivacy null `
 -New null `
 -Renewal null `
 -Transfer null `
 -Fields null `
 -Currencies null
```

- Convert the resource to JSON
```powershell
$DomainLookupResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

