# IpLimitRange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Start** | **String** | The begining (or first) IP address in the range. | 
**VarEnd** | **String** | The ending (or last) IP address in the range. | 

## Examples

- Prepare the resource
```powershell
$IpLimitRange = Initialize-InterserverApiIpLimitRange  -Start 1.2.3.0 `
 -VarEnd 1.2.3.255
```

- Convert the resource to JSON
```powershell
$IpLimitRange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

