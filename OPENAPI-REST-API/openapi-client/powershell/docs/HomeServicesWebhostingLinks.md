# HomeServicesWebhostingLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var376359** | **String** | Link to a website. | [optional] 
**Var376473** | **String** | Link to a website. | [optional] 
**Var386218** | **String** | Link to a website. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesWebhostingLinks = Initialize-InterserverApiHomeServicesWebhostingLinks  -Var376359 Doefamily.com `
 -Var376473 fancytush.com `
 -Var386218 admincoded.net
```

- Convert the resource to JSON
```powershell
$HomeServicesWebhostingLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

