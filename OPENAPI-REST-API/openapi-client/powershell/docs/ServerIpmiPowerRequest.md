# ServerIpmiPowerRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | The power action to send to the ipmi controller. | 
**Asset** | **Int32** | The Asset ID | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerIpmiPowerRequest = Initialize-InterserverApiServerIpmiPowerRequest  -Action on `
 -Asset 5432
```

- Convert the resource to JSON
```powershell
$ServerIpmiPowerRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

