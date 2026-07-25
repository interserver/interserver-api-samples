# PlaceScrubOrder201Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 
**OrderDetails** | [**PlaceScrubOrder201ResponseOrderDetails**](PlaceScrubOrder201ResponseOrderDetails.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlaceScrubOrder201Response = Initialize-InterserverApiPlaceScrubOrder201Response  -Success true `
 -Text ScrubIp order is placed. `
 -OrderDetails null
```

- Convert the resource to JSON
```powershell
$PlaceScrubOrder201Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

