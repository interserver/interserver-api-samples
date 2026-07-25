# DomainBillingExtra
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Order** | [**DomainOrderResponse**](DomainOrderResponse.md) |  | [optional] 
**OrderId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**ProvProcessPending** | [**DomainProvProcessPending**](DomainProvProcessPending.md) |  | [optional] 
**Email** | **String** |  | [optional] 
**Firstname** | **String** |  | [optional] 
**Lastname** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**Address** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**Address3** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**Fax** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainBillingExtra = Initialize-InterserverApiDomainBillingExtra  -Order null `
 -OrderId null `
 -DomainId null `
 -ProvProcessPending null `
 -Email null `
 -Firstname null `
 -Lastname null `
 -Company null `
 -Address null `
 -Address2 null `
 -Address3 null `
 -City null `
 -State null `
 -Zip null `
 -Country null `
 -Phone null `
 -Fax null
```

- Convert the resource to JSON
```powershell
$DomainBillingExtra | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

