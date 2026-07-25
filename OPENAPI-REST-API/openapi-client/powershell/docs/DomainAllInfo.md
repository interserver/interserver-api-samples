# DomainAllInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OPSVersion** | **String** |  | [optional] 
**Attributes** | [**DomainAllInfoAttributes**](DomainAllInfoAttributes.md) |  | [optional] 
**Object** | **String** |  | [optional] 
**Protocol** | **String** |  | [optional] 
**ResponseText** | **String** |  | [optional] 
**ResponseCode** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**IsSuccess** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainAllInfo = Initialize-InterserverApiDomainAllInfo  -OPSVersion null `
 -Attributes null `
 -Object null `
 -Protocol null `
 -ResponseText null `
 -ResponseCode null `
 -Action null `
 -IsSuccess null
```

- Convert the resource to JSON
```powershell
$DomainAllInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

