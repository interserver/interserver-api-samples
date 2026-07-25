# DomainTechContact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**OrgName** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**PostalCode** | **String** |  | [optional] 
**Fax** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**Address3** | **String** |  | [optional] 
**Address1** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainTechContact = Initialize-InterserverApiDomainTechContact  -State null `
 -Status null `
 -OrgName null `
 -Country null `
 -PostalCode null `
 -Fax null `
 -Email null `
 -Address2 null `
 -Address3 null `
 -Address1 null `
 -City null `
 -Phone null `
 -FirstName null `
 -LastName null
```

- Convert the resource to JSON
```powershell
$DomainTechContact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

