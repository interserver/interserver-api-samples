# MailTutorialsTable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | The title of the tutorials table. | [optional] 
**Rows** | [**MailTutorialsTableRow[]**](MailTutorialsTableRow.md) | The rows of the tutorials table. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailTutorialsTable = Initialize-InterserverApiMailTutorialsTable  -Title Tutorials `
 -Rows null
```

- Convert the resource to JSON
```powershell
$MailTutorialsTable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

