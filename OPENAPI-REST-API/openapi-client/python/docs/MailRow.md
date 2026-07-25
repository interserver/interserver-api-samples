# MailRow

A result row from the `Mail` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mail_id** | **str** | The id of the mail. | [optional] 
**repeat_invoices_cost** | **str** | The repeat invoices cost of the mail. | [optional] 
**mail_username** | **str** | The username of the mail. | [optional] 
**mail_status** | **str** | The status of the mail. | [optional] 
**services_name** | **str** | The services name of the mail. | [optional] 

## Example

```python
from interserver_api_client.models.mail_row import MailRow

# TODO update the JSON string below
json = "{}"
# create an instance of MailRow from a JSON string
mail_row_instance = MailRow.from_json(json)
# print the JSON string representation of the object
print(MailRow.to_json())

# convert the object into a dict
mail_row_dict = mail_row_instance.to_dict()
# create an instance of MailRow from a dict
mail_row_from_dict = MailRow.from_dict(mail_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


