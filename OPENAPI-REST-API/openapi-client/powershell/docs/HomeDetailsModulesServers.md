# HomeDetailsModulesServers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for dedicated servers. | [optional] 
**ViewLink** | **String** | Link to view server. | [optional] 
**Heading** | **String** | Heading for dedicated servers. | [optional] 
**BuyLink** | **String** | Link to order server. | [optional] 
**ListLink** | **String** | Link to view servers list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesServers = Initialize-InterserverApiHomeDetailsModulesServers  -Icon server `
 -ViewLink view_server `
 -Heading Dedicated Servers `
 -BuyLink order_server `
 -ListLink view_servers_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesServers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

