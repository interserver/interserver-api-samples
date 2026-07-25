# DomainAdminContact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**OrgName** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**PostalCode** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**Fax** | **String** |  | [optional] 
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
$DomainAdminContact = Initialize-InterserverApiDomainAdminContact  -Status null `
 -State null `
 -OrgName null `
 -Country null `
 -PostalCode null `
 -Email null `
 -Fax null `
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
$DomainAdminContact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

