# PostOauthCallbackRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** | The OAuth provider name (e.g. &#x60;Google&#x60;). | [optional] 

## Examples

- Prepare the resource
```powershell
$PostOauthCallbackRequest = Initialize-InterserverApiPostOauthCallbackRequest  -Provider null
```

- Convert the resource to JSON
```powershell
$PostOauthCallbackRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

