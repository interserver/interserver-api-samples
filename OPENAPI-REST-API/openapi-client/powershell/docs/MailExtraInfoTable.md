# MailExtraInfoTable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | The title of the extra info table. | [optional] 
**Rows** | [**MailExtraInfoTableRow[]**](MailExtraInfoTableRow.md) | The rows of the extra info table. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailExtraInfoTable = Initialize-InterserverApiMailExtraInfoTable  -Title Connection Information `
 -Rows null
```

- Convert the resource to JSON
```powershell
$MailExtraInfoTable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

