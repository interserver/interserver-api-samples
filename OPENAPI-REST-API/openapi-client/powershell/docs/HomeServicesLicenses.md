# HomeServicesLicenses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**HomeServicesLicensesLinks**](HomeServicesLicensesLinks.md) |  | [optional] 
**Count** | **Int32** | Number of licenses. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesLicenses = Initialize-InterserverApiHomeServicesLicenses  -Links null `
 -Count 1
```

- Convert the resource to JSON
```powershell
$HomeServicesLicenses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

