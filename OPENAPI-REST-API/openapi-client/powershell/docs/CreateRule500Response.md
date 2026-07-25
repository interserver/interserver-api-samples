# CreateRule500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRule500Response = Initialize-InterserverApiCreateRule500Response  -Success false `
 -Text Unable to create new firewall Rule.
```

- Convert the resource to JSON
```powershell
$CreateRule500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

