# DomainRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainId** | **String** | The ID number of the domain in our billing system. | [optional] 
**DomainHostname** | **String** | The hostname of the domain. | [optional] 
**DomainExpireDate** | **String** | The expiration date of the domain. | [optional] 
**Cost** | **String** | The cost of the domain. | [optional] 
**DomainStatus** | **String** | The billing / registration status of the domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainRow = Initialize-InterserverApiDomainRow  -DomainId 59237 `
 -DomainHostname mydomain.com `
 -DomainExpireDate 2023-08-14T00:59:38.000Z `
 -Cost 11.00 `
 -DomainStatus active
```

- Convert the resource to JSON
```powershell
$DomainRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

