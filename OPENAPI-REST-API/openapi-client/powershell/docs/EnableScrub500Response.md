# EnableScrub500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EnableScrub500Response = Initialize-InterserverApiEnableScrub500Response  -Success false `
 -Text Unable to enable Scrub on your IP.
```

- Convert the resource to JSON
```powershell
$EnableScrub500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

