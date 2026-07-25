# AccountInfoDataCc
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cc** | **String** |  | [optional] 
**CcExp** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Address** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Zip** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**MaxmindRiskscore** | **String** |  | [optional] 
**Maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] 
**Verified** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoDataCc = Initialize-InterserverApiAccountInfoDataCc  -Cc null `
 -CcExp null `
 -Name null `
 -Address null `
 -City null `
 -State null `
 -Zip null `
 -Country null `
 -MaxmindRiskscore null `
 -Maxmind null `
 -Verified null
```

- Convert the resource to JSON
```powershell
$AccountInfoDataCc | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

