# HomeServicesVps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**HomeServicesVpsLinks**](HomeServicesVpsLinks.md) |  | [optional] 
**Count** | **Int32** | Number of VPS services. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesVps = Initialize-InterserverApiHomeServicesVps  -Links null `
 -Count 20
```

- Convert the resource to JSON
```powershell
$HomeServicesVps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

