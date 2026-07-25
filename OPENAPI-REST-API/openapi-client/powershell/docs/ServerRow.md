# ServerRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerId** | **String** | The id of the server. | 
**AccountLid** | **String** | The account lid of the server. | 
**ServerHostname** | **String** | The hostname of the server. | 
**ServerStatus** | **String** | The status of the server. | 

## Examples

- Prepare the resource
```powershell
$ServerRow = Initialize-InterserverApiServerRow  -ServerId 8404 `
 -AccountLid detain@interserver.net `
 -ServerHostname testsignup.is.net `
 -ServerStatus deleted
```

- Convert the resource to JSON
```powershell
$ServerRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

