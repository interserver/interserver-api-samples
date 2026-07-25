# HomeDetailsModulesVps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for VPS. | [optional] 
**ViewLink** | **String** | Link to view VPS. | [optional] 
**Heading** | **String** | Heading for VPS. | [optional] 
**BuyLink** | **String** | Link to order VPS. | [optional] 
**ListLink** | **String** | Link to view VPS list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesVps = Initialize-InterserverApiHomeDetailsModulesVps  -Icon cloud-meatball `
 -ViewLink view_vps `
 -Heading VPS `
 -BuyLink order_vps `
 -ListLink view_vps_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesVps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

