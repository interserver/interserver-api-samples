# CreateFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilterType** | **String** |  | 
**Port** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$CreateFilter = Initialize-InterserverApiCreateFilter  -FilterType cs2_udp `
 -Port 8080
```

- Convert the resource to JSON
```powershell
$CreateFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

