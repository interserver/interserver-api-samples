# MailAttachment

(optional) File attachments to include in the email.  The file contents must be base64

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **str** | The filename of the attached file. | 
**data** | **str** | The file contents base64 encoded | 

## Example

```python
from interserver_api_client.models.mail_attachment import MailAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of MailAttachment from a JSON string
mail_attachment_instance = MailAttachment.from_json(json)
# print the JSON string representation of the object
print(MailAttachment.to_json())

# convert the object into a dict
mail_attachment_dict = mail_attachment_instance.to_dict()
# create an instance of MailAttachment from a dict
mail_attachment_from_dict = MailAttachment.from_dict(mail_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


