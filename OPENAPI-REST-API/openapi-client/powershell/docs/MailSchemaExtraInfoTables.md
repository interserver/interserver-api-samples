# MailSchemaExtraInfoTables
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mail** | [**MailExtraInfoTable**](MailExtraInfoTable.md) |  | [optional] 
**Tutorials** | [**MailTutorialsTable**](MailTutorialsTable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MailSchemaExtraInfoTables = Initialize-InterserverApiMailSchemaExtraInfoTables  -Mail null `
 -Tutorials null
```

- Convert the resource to JSON
```powershell
$MailSchemaExtraInfoTables | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

