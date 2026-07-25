# DomainWhoisPrivacyRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Func** | **String** | Action to perform (enable or disableCancel). | [optional] 
**CsrfToken** | **String** | CSRF token if the API requires it for the account. | [optional] 
**DomainFirstname** | **String** |  | [optional] 
**DomainLastname** | **String** |  | [optional] 
**DomainEmail** | **String** |  | [optional] 
**DomainAddress** | **String** |  | [optional] 
**DomainAddress2** | **String** |  | [optional] 
**DomainAddress3** | **String** |  | [optional] 
**DomainCity** | **String** |  | [optional] 
**DomainState** | **String** |  | [optional] 
**DomainZip** | **String** |  | [optional] 
**DomainCountry** | **String** |  | [optional] 
**DomainPhone** | **String** |  | [optional] 
**DomainFax** | **String** |  | [optional] 
**DomainCompany** | **String** |  | [optional] 
**DomainExtra** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainWhoisPrivacyRequest = Initialize-InterserverApiDomainWhoisPrivacyRequest  -Func enable `
 -CsrfToken null `
 -DomainFirstname null `
 -DomainLastname null `
 -DomainEmail null `
 -DomainAddress null `
 -DomainAddress2 null `
 -DomainAddress3 null `
 -DomainCity null `
 -DomainState null `
 -DomainZip null `
 -DomainCountry null `
 -DomainPhone null `
 -DomainFax null `
 -DomainCompany null `
 -DomainExtra null
```

- Convert the resource to JSON
```powershell
$DomainWhoisPrivacyRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

