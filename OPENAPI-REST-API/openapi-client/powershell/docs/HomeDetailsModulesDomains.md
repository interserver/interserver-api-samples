# HomeDetailsModulesDomains
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for domains. | [optional] 
**ViewLink** | **String** | Link to view domain. | [optional] 
**Heading** | **String** | Heading for domains. | [optional] 
**BuyLink** | **String** | Link to order domain. | [optional] 
**ListLink** | **String** | Link to view domains list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesDomains = Initialize-InterserverApiHomeDetailsModulesDomains  -Icon globe `
 -ViewLink view_domain `
 -Heading Domains `
 -BuyLink domain_order `
 -ListLink view_domains_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesDomains | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

