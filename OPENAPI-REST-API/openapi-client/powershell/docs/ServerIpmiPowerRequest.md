# ServerIpmiPowerRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Asset** | **Int32** | The Asset ID | [optional] 
**Action** | **String** | The power action to send to the ipmi controller. | 

## Examples

- Prepare the resource
```powershell
$ServerIpmiPowerRequest = Initialize-InterserverApiServerIpmiPowerRequest  -Asset 5432 `
 -Action on
```

- Convert the resource to JSON
```powershell
$ServerIpmiPowerRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

