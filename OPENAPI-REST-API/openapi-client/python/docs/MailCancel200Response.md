# MailCancel200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.mail_cancel200_response import MailCancel200Response

# TODO update the JSON string below
json = "{}"
# create an instance of MailCancel200Response from a JSON string
mail_cancel200_response_instance = MailCancel200Response.from_json(json)
# print the JSON string representation of the object
print(MailCancel200Response.to_json())

# convert the object into a dict
mail_cancel200_response_dict = mail_cancel200_response_instance.to_dict()
# create an instance of MailCancel200Response from a dict
mail_cancel200_response_from_dict = MailCancel200Response.from_dict(mail_cancel200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


