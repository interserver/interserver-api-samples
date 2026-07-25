# ServerIpmiLiveInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** |  | [optional] 
**PublicIp** | **String** |  | [optional] 
**AllowedIp** | **String** |  | [optional] 
**ClientUsername** | **String** |  | [optional] 
**ClientPassword** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerIpmiLiveInfo = Initialize-InterserverApiServerIpmiLiveInfo  -Text null `
 -PublicIp null `
 -AllowedIp null `
 -ClientUsername null `
 -ClientPassword null
```

- Convert the resource to JSON
```powershell
$ServerIpmiLiveInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

