# DisableScrub200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DisableScrub200Response = Initialize-InterserverApiDisableScrub200Response  -Success true `
 -Text Scrub is disabled on your IP.
```

- Convert the resource to JSON
```powershell
$DisableScrub200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

