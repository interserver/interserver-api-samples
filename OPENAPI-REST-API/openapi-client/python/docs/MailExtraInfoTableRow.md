# MailExtraInfoTableRow

A single row in the mail service supplementary information table.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | The description of the extra info table row. | [optional] 
**value** | **str** | The value of the extra info table row. | [optional] 

## Example

```python
from interserver_api_client.models.mail_extra_info_table_row import MailExtraInfoTableRow

# TODO update the JSON string below
json = "{}"
# create an instance of MailExtraInfoTableRow from a JSON string
mail_extra_info_table_row_instance = MailExtraInfoTableRow.from_json(json)
# print the JSON string representation of the object
print(MailExtraInfoTableRow.to_json())

# convert the object into a dict
mail_extra_info_table_row_dict = mail_extra_info_table_row_instance.to_dict()
# create an instance of MailExtraInfoTableRow from a dict
mail_extra_info_table_row_from_dict = MailExtraInfoTableRow.from_dict(mail_extra_info_table_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


