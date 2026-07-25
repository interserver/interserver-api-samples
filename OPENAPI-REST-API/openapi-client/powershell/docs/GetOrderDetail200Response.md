# GetOrderDetail200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PackageCosts** | [**GetOrderDetail200ResponsePackageCosts**](GetOrderDetail200ResponsePackageCosts.md) |  | [optional] 
**ServiceTypes** | [**GetOrderDetail200ResponseServiceTypesInner[]**](GetOrderDetail200ResponseServiceTypesInner.md) |  | [optional] 
**Ips** | [**GetOrderDetail200ResponseIpsInner[]**](GetOrderDetail200ResponseIpsInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrderDetail200Response = Initialize-InterserverApiGetOrderDetail200Response  -PackageCosts null `
 -ServiceTypes null `
 -Ips null
```

- Convert the resource to JSON
```powershell
$GetOrderDetail200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

