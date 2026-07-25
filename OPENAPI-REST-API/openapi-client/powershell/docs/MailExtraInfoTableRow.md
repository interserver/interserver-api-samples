# MailExtraInfoTableRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Desc** | **String** | The description of the extra info table row. | [optional] 
**Value** | **String** | The value of the extra info table row. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailExtraInfoTableRow = Initialize-InterserverApiMailExtraInfoTableRow  -Desc SMTP Server `
 -Value relay.mailbaby.net
```

- Convert the resource to JSON
```powershell
$MailExtraInfoTableRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

