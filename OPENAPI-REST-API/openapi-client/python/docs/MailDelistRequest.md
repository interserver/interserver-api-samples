# MailDelistRequest

Payload for removing a sender from mail blocklists.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**unblock** | **str** | Email address to delist. | [optional] 

## Example

```python
from interserver_api_client.models.mail_delist_request import MailDelistRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MailDelistRequest from a JSON string
mail_delist_request_instance = MailDelistRequest.from_json(json)
# print the JSON string representation of the object
print(MailDelistRequest.to_json())

# convert the object into a dict
mail_delist_request_dict = mail_delist_request_instance.to_dict()
# create an instance of MailDelistRequest from a dict
mail_delist_request_from_dict = MailDelistRequest.from_dict(mail_delist_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


