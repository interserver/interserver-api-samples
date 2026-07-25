# HomeDetailsModulesLicenses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | **String** | The icon for licenses. | [optional] 
**ViewLink** | **String** | Link to view license. | [optional] 
**Heading** | **String** | Heading for licenses. | [optional] 
**BuyLink** | **String** | Link to order license. | [optional] 
**ListLink** | **String** | Link to view licenses list. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModulesLicenses = Initialize-InterserverApiHomeDetailsModulesLicenses  -Icon id-card `
 -ViewLink view_license `
 -Heading Licenses `
 -BuyLink order_license `
 -ListLink view_licenses_list
```

- Convert the resource to JSON
```powershell
$HomeDetailsModulesLicenses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

