# ScrubIpsDeleteRule200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpsDeleteRule200Response = Initialize-InterserverApiScrubIpsDeleteRule200Response  -Success true `
 -Text Firewall Rule has been deleted.
```

- Convert the resource to JSON
```powershell
$ScrubIpsDeleteRule200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

