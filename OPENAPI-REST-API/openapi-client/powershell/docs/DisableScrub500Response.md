# DisableScrub500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DisableScrub500Response = Initialize-InterserverApiDisableScrub500Response  -Success false `
 -Text Unable to disable scrub on your IP.
```

- Convert the resource to JSON
```powershell
$DisableScrub500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

