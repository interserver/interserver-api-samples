# DownloadQsBackup200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** |  | [optional] 
**Url** | **String** | A pre-signed download URL valid for 24 hours. | [optional] 

## Examples

- Prepare the resource
```powershell
$DownloadQsBackup200Response = Initialize-InterserverApiDownloadQsBackup200Response  -Text null `
 -Url null
```

- Convert the resource to JSON
```powershell
$DownloadQsBackup200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

