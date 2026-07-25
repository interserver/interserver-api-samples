# HomeServicesVpsLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var465503** | **String** | Link to a VPS. | [optional] 
**Var2500081** | **String** | Link to a VPS. | [optional] 
**Var2578866** | **String** | Link to a VPS. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesVpsLinks = Initialize-InterserverApiHomeServicesVpsLinks  -Var465503 vps465503 `
 -Var2500081 vps2500081 `
 -Var2578866 vps2578866
```

- Convert the resource to JSON
```powershell
$HomeServicesVpsLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

