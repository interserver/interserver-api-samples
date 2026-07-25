# DomainOrderResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OPSVersion** | **String** |  | [optional] 
**Protocol** | **String** |  | [optional] 
**IsSuccess** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Attributes** | [**DomainOrderResponseAttributes**](DomainOrderResponseAttributes.md) |  | [optional] 
**ResponseText** | **String** |  | [optional] 
**Object** | **String** |  | [optional] 
**ResponseCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOrderResponse = Initialize-InterserverApiDomainOrderResponse  -OPSVersion null `
 -Protocol null `
 -IsSuccess null `
 -Action null `
 -Attributes null `
 -ResponseText null `
 -Object null `
 -ResponseCode null
```

- Convert the resource to JSON
```powershell
$DomainOrderResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

