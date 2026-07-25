# DomainProvProcessPending
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OPSVersion** | **String** |  | [optional] 
**ResponseText** | **String** |  | [optional] 
**Protocol** | **String** |  | [optional] 
**ResponseCode** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Object** | **String** |  | [optional] 
**IsSuccess** | **String** |  | [optional] 
**Attributes** | [**DomainProvProcessPendingAttributes**](DomainProvProcessPendingAttributes.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainProvProcessPending = Initialize-InterserverApiDomainProvProcessPending  -OPSVersion null `
 -ResponseText null `
 -Protocol null `
 -ResponseCode null `
 -Action null `
 -Object null `
 -IsSuccess null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$DomainProvProcessPending | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

