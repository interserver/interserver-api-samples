# ScrubIpsDeleteRule500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpsDeleteRule500Response = Initialize-InterserverApiScrubIpsDeleteRule500Response  -Success false `
 -Text Unable to deleted firewall rule.
```

- Convert the resource to JSON
```powershell
$ScrubIpsDeleteRule500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

