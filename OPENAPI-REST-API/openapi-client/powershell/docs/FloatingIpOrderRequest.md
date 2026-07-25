# FloatingIpOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceType** | **Int32** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | 
**Coupon** | **String** | Coupon code. | [optional] [default to ""]
**Comment** | **String** | Free-form note saved on the service row (used on addFloatingIp). | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$FloatingIpOrderRequest = Initialize-InterserverApiFloatingIpOrderRequest  -ServiceType null `
 -Coupon null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$FloatingIpOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

