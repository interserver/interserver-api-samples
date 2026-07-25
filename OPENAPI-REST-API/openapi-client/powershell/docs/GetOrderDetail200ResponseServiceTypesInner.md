# GetOrderDetail200ResponseServiceTypesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **Int32** |  | [optional] 
**ServicesName** | **String** |  | [optional] 
**ServicesCost** | **Int32** |  | [optional] 
**ServicesField1** | **String** |  | [optional] 
**ServicesField2** | **String** |  | [optional] 
**ServicesModule** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrderDetail200ResponseServiceTypesInner = Initialize-InterserverApiGetOrderDetail200ResponseServiceTypesInner  -ServicesId 11552 `
 -ServicesName Current IP + Scrub `
 -ServicesCost 5 `
 -ServicesField1  `
 -ServicesField2  `
 -ServicesModule scrub_ips
```

- Convert the resource to JSON
```powershell
$GetOrderDetail200ResponseServiceTypesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

