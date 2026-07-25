# MailDelistResponse

Blocklist status information for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Mail service ID. | [optional] 
**local** | **List[object]** | Local blocklist entries. | [optional] 
**mbtrap** | **List[object]** | MailBaby trap block entries. | [optional] 
**subject** | **List[object]** | Subject-based block entries. | [optional] 
**manual** | **List[object]** | Manually blocked entries. | [optional] 

## Example

```python
from interserver_api_client.models.mail_delist_response import MailDelistResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MailDelistResponse from a JSON string
mail_delist_response_instance = MailDelistResponse.from_json(json)
# print the JSON string representation of the object
print(MailDelistResponse.to_json())

# convert the object into a dict
mail_delist_response_dict = mail_delist_response_instance.to_dict()
# create an instance of MailDelistResponse from a dict
mail_delist_response_from_dict = MailDelistResponse.from_dict(mail_delist_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


