# MailSchemaExtraInfoTables

Additional information tables for the mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mail** | [**MailExtraInfoTable**](MailExtraInfoTable.md) |  | [optional] 
**tutorials** | [**MailTutorialsTable**](MailTutorialsTable.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.mail_schema_extra_info_tables import MailSchemaExtraInfoTables

# TODO update the JSON string below
json = "{}"
# create an instance of MailSchemaExtraInfoTables from a JSON string
mail_schema_extra_info_tables_instance = MailSchemaExtraInfoTables.from_json(json)
# print the JSON string representation of the object
print(MailSchemaExtraInfoTables.to_json())

# convert the object into a dict
mail_schema_extra_info_tables_dict = mail_schema_extra_info_tables_instance.to_dict()
# create an instance of MailSchemaExtraInfoTables from a dict
mail_schema_extra_info_tables_from_dict = MailSchemaExtraInfoTables.from_dict(mail_schema_extra_info_tables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


