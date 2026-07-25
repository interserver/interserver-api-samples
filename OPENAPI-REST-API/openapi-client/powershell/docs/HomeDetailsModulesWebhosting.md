# HomeDetailsModulesWebhosting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for web hosting. | [optional] 
**ViewLink** | **String** | Link to view website. | [optional] 
**Heading** | **String** | Heading for web hosting. | [optional] 
**BuyLink** | **String** | Link to order website. | [optional] 
**ListLink** | **String** | Link to view websites list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesWebhosting = Initialize-InterserverApiHomeDetailsModulesWebhosting  -Icon window-maximize `
 -ViewLink view_website `
 -Heading Web Hosting `
 -BuyLink order_website `
 -ListLink view_websites_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesWebhosting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

