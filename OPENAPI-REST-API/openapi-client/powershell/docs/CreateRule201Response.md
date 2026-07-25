# CreateRule201Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRule201Response = Initialize-InterserverApiCreateRule201Response  -Success true `
 -Text New firewall Rule has been created.
```

- Convert the resource to JSON
```powershell
$CreateRule201Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

