# CancelScrubIp200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CancelScrubIp200Response = Initialize-InterserverApiCancelScrubIp200Response  -Success true `
 -Text Scrub Ips is canceled.
```

- Convert the resource to JSON
```powershell
$CancelScrubIp200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

