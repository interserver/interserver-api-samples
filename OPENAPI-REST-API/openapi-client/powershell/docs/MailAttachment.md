# MailAttachment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filename** | **String** | The filename of the attached file. | 
**VarData** | **String** | The file contents base64 encoded | 

## Examples

- Prepare the resource
```powershell
$MailAttachment = Initialize-InterserverApiMailAttachment  -Filename message.txt `
 -VarData aGVsbG8gdGhlcmUK
```

- Convert the resource to JSON
```powershell
$MailAttachment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

