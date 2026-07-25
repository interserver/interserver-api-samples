# DomainServiceType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | Service type ID. | [optional] 
**ServicesName** | **String** | Service type name (e.g., .com Registration). | [optional] 
**ServicesCost** | **String** | Service cost per billing period. | [optional] 
**ServicesCategory** | **String** | Service category ID. | [optional] 
**ServicesBuyable** | **String** | Whether this service type is available for purchase. | [optional] 
**ServicesType** | **String** | Internal service type identifier. | [optional] 
**ServicesField1** | **String** | TLD or first configurable field for the service type. | [optional] 
**ServicesField2** | **String** | Second configurable field for the service type. | [optional] 
**ServicesModule** | **String** | Backend module handling this service type. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainServiceType = Initialize-InterserverApiDomainServiceType  -ServicesId null `
 -ServicesName null `
 -ServicesCost null `
 -ServicesCategory null `
 -ServicesBuyable null `
 -ServicesType null `
 -ServicesField1 null `
 -ServicesField2 null `
 -ServicesModule null
```

- Convert the resource to JSON
```powershell
$DomainServiceType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

