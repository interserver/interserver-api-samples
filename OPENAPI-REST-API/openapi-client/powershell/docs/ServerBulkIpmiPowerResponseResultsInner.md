# ServerBulkIpmiPowerResponseResultsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Server ID this result corresponds to. | [optional] 
**Asset** | **Int32** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**Text** | **String** | IPMI power-status output for this server. | [optional] 
**VarError** | **String** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerBulkIpmiPowerResponseResultsInner = Initialize-InterserverApiServerBulkIpmiPowerResponseResultsInner  -Id 2313 `
 -Asset 5432 `
 -Text Chassis Power is on `
 -VarError Service is not active
```

- Convert the resource to JSON
```powershell
$ServerBulkIpmiPowerResponseResultsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

