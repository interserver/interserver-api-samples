# DomainContactDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Contact status reported by the registrar. | [optional] 
**State** | **String** | State or region for the contact address. | [optional] 
**OrgName** | **String** | Organization name for the contact. | [optional] 
**Country** | **String** | Two-letter country code for the contact. | [optional] 
**PostalCode** | **String** | Postal or ZIP code for the contact address. | [optional] 
**Email** | **String** | Email address for the contact. | [optional] 
**Fax** | **String** | Fax number for the contact, if available. | [optional] 
**Address2** | **String** | Secondary street address line. | [optional] 
**Address3** | **String** | Tertiary street address line. | [optional] 
**Address1** | **String** | Primary street address line. | [optional] 
**City** | **String** | City for the contact address. | [optional] 
**Phone** | **String** | Phone number for the contact. | [optional] 
**FirstName** | **String** | First name for the contact. | [optional] 
**LastName** | **String** | Last name for the contact. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainContactDetails = Initialize-InterserverApiDomainContactDetails  -Status null `
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
$DomainContactDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

