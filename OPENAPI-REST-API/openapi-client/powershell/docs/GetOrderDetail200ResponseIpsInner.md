# GetOrderDetail200ResponseIpsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceId** | **Decimal** |  | [optional] 
**ServiceModule** | **String** |  | [optional] 
**ServiceHostname** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrderDetail200ResponseIpsInner = Initialize-InterserverApiGetOrderDetail200ResponseIpsInner  -ServiceId 12345 `
 -ServiceModule vps `
 -ServiceHostname server.gtest.com
```

- Convert the resource to JSON
```powershell
$GetOrderDetail200ResponseIpsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

