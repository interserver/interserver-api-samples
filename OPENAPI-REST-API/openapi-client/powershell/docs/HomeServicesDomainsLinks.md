# HomeServicesDomainsLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var376114** | **String** | Link to a domain. | [optional] 
**Var376503** | **String** | Link to a domain. | [optional] 
**Var592337** | **String** | Link to a domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesDomainsLinks = Initialize-InterserverApiHomeServicesDomainsLinks  -Var376114 pimpmy.website `
 -Var376503 hostingenuity.com `
 -Var592337 detain.dev
```

- Convert the resource to JSON
```powershell
$HomeServicesDomainsLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

