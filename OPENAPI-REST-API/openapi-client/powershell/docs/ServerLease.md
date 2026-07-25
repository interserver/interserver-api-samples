# ServerLease
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mac** | **String** | MAC address associated with the lease. | 
**Authenticated** | **Boolean** | Indicates if the lease is authenticated. | 
**Group** | **String** | Group identifier for the lease. | 

## Examples

- Prepare the resource
```powershell
$ServerLease = Initialize-InterserverApiServerLease  -Mac 0c:c4:7a:af:35:00 `
 -Authenticated false `
 -Group 1
```

- Convert the resource to JSON
```powershell
$ServerLease | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

