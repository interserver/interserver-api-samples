# DomainOwnerContact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PostalCode** | **String** |  | [optional] 
**OrgName** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Address3** | **String** |  | [optional] 
**Fax** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**Address1** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOwnerContact = Initialize-InterserverApiDomainOwnerContact  -PostalCode null `
 -OrgName null `
 -Country null `
 -Status null `
 -State null `
 -FirstName null `
 -LastName null `
 -Address3 null `
 -Fax null `
 -Address2 null `
 -Email null `
 -City null `
 -Phone null `
 -Address1 null
```

- Convert the resource to JSON
```powershell
$DomainOwnerContact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

