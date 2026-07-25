# ScrubIpPlaceOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceType** | **Int32** |  | 
**Ip** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ScrubIpPlaceOrder = Initialize-InterserverApiScrubIpPlaceOrder  -ServiceType 102 `
 -Ip 1.2.3.4
```

- Convert the resource to JSON
```powershell
$ScrubIpPlaceOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

