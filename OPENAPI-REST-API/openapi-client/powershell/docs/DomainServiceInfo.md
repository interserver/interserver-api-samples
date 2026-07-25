# DomainServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainId** | **String** |  | [optional] 
**DomainHostname** | **String** |  | [optional] 
**DomainUsername** | **String** |  | [optional] 
**DomainPassword** | **String** |  | [optional] 
**DomainType** | **String** |  | [optional] 
**DomainCurrency** | **String** |  | [optional] 
**DomainExpireDate** | **String** |  | [optional] 
**DomainOrderDate** | **String** |  | [optional] 
**DomainCustid** | **String** |  | [optional] 
**DomainStatus** | **String** |  | [optional] 
**DomainInvoice** | **String** |  | [optional] 
**DomainCoupon** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainServiceInfo = Initialize-InterserverApiDomainServiceInfo  -DomainId null `
 -DomainHostname null `
 -DomainUsername null `
 -DomainPassword null `
 -DomainType null `
 -DomainCurrency null `
 -DomainExpireDate null `
 -DomainOrderDate null `
 -DomainCustid null `
 -DomainStatus null `
 -DomainInvoice null `
 -DomainCoupon null
```

- Convert the resource to JSON
```powershell
$DomainServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

