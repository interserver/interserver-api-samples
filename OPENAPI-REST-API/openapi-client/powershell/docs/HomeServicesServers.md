# HomeServicesServers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | [**HomeServicesServersLinks**](HomeServicesServersLinks.md) |  | [optional] 
**Count** | **Int32** | Number of servers. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesServers = Initialize-InterserverApiHomeServicesServers  -Links null `
 -Count 1
```

- Convert the resource to JSON
```powershell
$HomeServicesServers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

