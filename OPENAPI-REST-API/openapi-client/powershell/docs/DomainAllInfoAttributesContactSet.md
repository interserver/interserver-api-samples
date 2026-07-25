# DomainAllInfoAttributesContactSet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Owner** | [**DomainOwnerContact**](DomainOwnerContact.md) |  | [optional] 
**Admin** | [**DomainAdminContact**](DomainAdminContact.md) |  | [optional] 
**Tech** | [**DomainTechContact**](DomainTechContact.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainAllInfoAttributesContactSet = Initialize-InterserverApiDomainAllInfoAttributesContactSet  -Owner null `
 -Admin null `
 -Tech null
```

- Convert the resource to JSON
```powershell
$DomainAllInfoAttributesContactSet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

