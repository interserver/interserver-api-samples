# MailClientLink

A navigation link for mail service actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | The label of the client link. | [optional] 
**link** | **str** | The link URL of the client link. | [optional] 
**icon** | **str** | The icon class of the client link. | [optional] 
**icon_text** | **str** | The text for the icon of the client link. | [optional] 
**help_text** | **str** | Help text for the client link. | [optional] 
**other_attr** | **str** | Additional attributes for the client link. | [optional] 

## Example

```python
from interserver_api_client.models.mail_client_link import MailClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of MailClientLink from a JSON string
mail_client_link_instance = MailClientLink.from_json(json)
# print the JSON string representation of the object
print(MailClientLink.to_json())

# convert the object into a dict
mail_client_link_dict = mail_client_link_instance.to_dict()
# create an instance of MailClientLink from a dict
mail_client_link_from_dict = MailClientLink.from_dict(mail_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


