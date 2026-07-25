# ServerLocation1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocationId** | **Int32** |  | 
**LocationName** | **String** |  | 
**LocationLat** | **String** |  | 
**LocationLong** | **String** |  | 
**LocationDescription** | **String** |  | [optional] 
**LocationIpmiGroup** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerLocation1 = Initialize-InterserverApiServerLocation1  -LocationId null `
 -LocationName null `
 -LocationLat null `
 -LocationLong null `
 -LocationDescription null `
 -LocationIpmiGroup null
```

- Convert the resource to JSON
```powershell
$ServerLocation1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

