# VpsCPData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Control panel name (e.g., cPanel). | [optional] 
**Cost** | **Int32** | Monthly cost in cents for the control panel license. | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsCPData = Initialize-InterserverApiVpsCPData  -Name null `
 -Cost null
```

- Convert the resource to JSON
```powershell
$VpsCPData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

