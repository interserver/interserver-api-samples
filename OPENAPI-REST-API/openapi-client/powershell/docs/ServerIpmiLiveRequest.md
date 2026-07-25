# ServerIpmiLiveRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Asset** | **Int32** | Asset ID | [optional] 
**Ip** | **String** | Your IP Address you wish to connect to the IPMI system from. | 

## Examples

- Prepare the resource
```powershell
$ServerIpmiLiveRequest = Initialize-InterserverApiServerIpmiLiveRequest  -Asset 5431 `
 -Ip 1.2.3.4
```

- Convert the resource to JSON
```powershell
$ServerIpmiLiveRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

