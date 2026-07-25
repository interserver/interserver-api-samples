# DisableScrub400Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DisableScrub400Response = Initialize-InterserverApiDisableScrub400Response  -Success false `
 -Text Scrub is not enabled in this service.
```

- Convert the resource to JSON
```powershell
$DisableScrub400Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

