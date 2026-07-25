# DownloadQsBackupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **String** | The backup filename to download. | 

## Examples

- Prepare the resource
```powershell
$DownloadQsBackupRequest = Initialize-InterserverApiDownloadQsBackupRequest  -File null
```

- Convert the resource to JSON
```powershell
$DownloadQsBackupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

