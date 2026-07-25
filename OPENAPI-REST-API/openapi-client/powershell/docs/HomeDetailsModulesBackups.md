# HomeDetailsModulesBackups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for storages. | [optional] 
**ViewLink** | **String** | Link to view backup. | [optional] 
**Heading** | **String** | Heading for storages. | [optional] 
**BuyLink** | **String** | Link to order storage. | [optional] 
**ListLink** | **String** | Link to view backups list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesBackups = Initialize-InterserverApiHomeDetailsModulesBackups  -Icon warehouse `
 -ViewLink view_backup `
 -Heading Storages `
 -BuyLink order_storage `
 -ListLink view_backups_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesBackups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

