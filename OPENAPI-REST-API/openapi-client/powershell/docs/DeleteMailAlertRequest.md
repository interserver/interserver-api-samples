# DeleteMailAlertRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlertId** | **Int32** | The ID of the alert to delete. | 

## Examples

- Prepare the resource
```powershell
$DeleteMailAlertRequest = Initialize-InterserverApiDeleteMailAlertRequest  -AlertId null
```

- Convert the resource to JSON
```powershell
$DeleteMailAlertRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

