# MailTutorialsTableRow

A single tutorial entry with a label and URL.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | The description of the tutorials table row. | [optional] 
**value** | **str** | The value of the tutorials table row. | [optional] 

## Example

```python
from interserver_api_client.models.mail_tutorials_table_row import MailTutorialsTableRow

# TODO update the JSON string below
json = "{}"
# create an instance of MailTutorialsTableRow from a JSON string
mail_tutorials_table_row_instance = MailTutorialsTableRow.from_json(json)
# print the JSON string representation of the object
print(MailTutorialsTableRow.to_json())

# convert the object into a dict
mail_tutorials_table_row_dict = mail_tutorials_table_row_instance.to_dict()
# create an instance of MailTutorialsTableRow from a dict
mail_tutorials_table_row_from_dict = MailTutorialsTableRow.from_dict(mail_tutorials_table_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


