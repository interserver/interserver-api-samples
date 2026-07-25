# DomainProvProcessPendingAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**OrderId** | **String** |  | [optional] 
**RegistrationExpirationDate** | **String** |  | [optional] 
**FAutoRenew** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainProvProcessPendingAttributes = Initialize-InterserverApiDomainProvProcessPendingAttributes  -Id null `
 -OrderId null `
 -RegistrationExpirationDate null `
 -FAutoRenew null
```

- Convert the resource to JSON
```powershell
$DomainProvProcessPendingAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

