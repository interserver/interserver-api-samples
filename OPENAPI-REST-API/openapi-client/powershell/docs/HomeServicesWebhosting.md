# HomeServicesWebhosting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**HomeServicesWebhostingLinks**](HomeServicesWebhostingLinks.md) |  | [optional] 
**Count** | **Int32** | Number of web hosting services. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesWebhosting = Initialize-InterserverApiHomeServicesWebhosting  -Links null `
 -Count 8
```

- Convert the resource to JSON
```powershell
$HomeServicesWebhosting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

