# HomeDetailsModulesQuickservers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for quick servers. | [optional] 
**ViewLink** | **String** | Link to view quick servers. | [optional] 
**Heading** | **String** | Heading for quick servers. | [optional] 
**BuyLink** | **String** | Link to order quick server. | [optional] 
**ListLink** | **String** | Link to view quick servers list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesQuickservers = Initialize-InterserverApiHomeDetailsModulesQuickservers  -Icon database `
 -ViewLink view_qs `
 -Heading Quick Servers `
 -BuyLink order_quickserver `
 -ListLink view_quickservers_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesQuickservers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

