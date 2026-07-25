# MailTutorialsTable

A table of tutorial links displayed for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | The title of the tutorials table. | [optional] 
**rows** | [**List[MailTutorialsTableRow]**](MailTutorialsTableRow.md) | The rows of the tutorials table. | [optional] 

## Example

```python
from interserver_api_client.models.mail_tutorials_table import MailTutorialsTable

# TODO update the JSON string below
json = "{}"
# create an instance of MailTutorialsTable from a JSON string
mail_tutorials_table_instance = MailTutorialsTable.from_json(json)
# print the JSON string representation of the object
print(MailTutorialsTable.to_json())

# convert the object into a dict
mail_tutorials_table_dict = mail_tutorials_table_instance.to_dict()
# create an instance of MailTutorialsTable from a dict
mail_tutorials_table_from_dict = MailTutorialsTable.from_dict(mail_tutorials_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


