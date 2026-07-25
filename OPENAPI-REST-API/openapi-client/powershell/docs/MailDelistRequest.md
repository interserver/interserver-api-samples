# MailDelistRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Unblock** | **String** | Email address to delist. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailDelistRequest = Initialize-InterserverApiMailDelistRequest  -Unblock null
```

- Convert the resource to JSON
```powershell
$MailDelistRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

