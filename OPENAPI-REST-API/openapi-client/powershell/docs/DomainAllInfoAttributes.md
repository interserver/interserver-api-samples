# DomainAllInfoAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContactSet** | [**DomainAllInfoAttributesContactSet**](DomainAllInfoAttributesContactSet.md) |  | [optional] 
**RegistryCreatedate** | **String** |  | [optional] 
**RegistryExpiredate** | **String** |  | [optional] 
**TldData** | **String** |  | [optional] 
**LetExpire** | **String** |  | [optional] 
**AutoRenew** | **String** |  | [optional] 
**SponsoringRsp** | **String** |  | [optional] 
**GdprConsentStatus** | **String** |  | [optional] 
**NameserverList** | [**DomainNameServer[]**](DomainNameServer.md) |  | [optional] 
**RegistryUpdatedate** | **String** |  | [optional] 
**AffiliateId** | **String** |  | [optional] 
**Expiredate** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainAllInfoAttributes = Initialize-InterserverApiDomainAllInfoAttributes  -ContactSet null `
 -RegistryCreatedate null `
 -RegistryExpiredate null `
 -TldData null `
 -LetExpire null `
 -AutoRenew null `
 -SponsoringRsp null `
 -GdprConsentStatus null `
 -NameserverList null `
 -RegistryUpdatedate null `
 -AffiliateId null `
 -Expiredate null
```

- Convert the resource to JSON
```powershell
$DomainAllInfoAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

