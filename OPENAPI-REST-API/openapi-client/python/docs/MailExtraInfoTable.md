# MailExtraInfoTable

A supplementary information table for a mail service (e.g., connection details).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | The title of the extra info table. | [optional] 
**rows** | [**List[MailExtraInfoTableRow]**](MailExtraInfoTableRow.md) | The rows of the extra info table. | [optional] 

## Example

```python
from interserver_api_client.models.mail_extra_info_table import MailExtraInfoTable

# TODO update the JSON string below
json = "{}"
# create an instance of MailExtraInfoTable from a JSON string
mail_extra_info_table_instance = MailExtraInfoTable.from_json(json)
# print the JSON string representation of the object
print(MailExtraInfoTable.to_json())

# convert the object into a dict
mail_extra_info_table_dict = mail_extra_info_table_instance.to_dict()
# create an instance of MailExtraInfoTable from a dict
mail_extra_info_table_from_dict = MailExtraInfoTable.from_dict(mail_extra_info_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


