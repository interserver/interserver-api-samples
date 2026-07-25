# ScrubIpsDeleteRule400Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpsDeleteRule400Response = Initialize-InterserverApiScrubIpsDeleteRule400Response  -Success false `
 -Text Invalid rule id
```

- Convert the resource to JSON
```powershell
$ScrubIpsDeleteRule400Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

