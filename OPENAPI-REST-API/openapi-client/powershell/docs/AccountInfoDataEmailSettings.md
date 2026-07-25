# AccountInfoDataEmailSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminCcBadResponse** | **String** |  | [optional] 
**AdminMassCommunicationsTpl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoDataEmailSettings = Initialize-InterserverApiAccountInfoDataEmailSettings  -AdminCcBadResponse null `
 -AdminMassCommunicationsTpl null
```

- Convert the resource to JSON
```powershell
$AccountInfoDataEmailSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

