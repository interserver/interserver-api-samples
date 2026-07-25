# HomeServicesDomains
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**HomeServicesDomainsLinks**](HomeServicesDomainsLinks.md) |  | [optional] 
**Count** | **Int32** | Number of domains. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesDomains = Initialize-InterserverApiHomeServicesDomains  -Links null `
 -Count 5
```

- Convert the resource to JSON
```powershell
$HomeServicesDomains | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

