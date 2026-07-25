# SendMail

Details for an Email

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **str** | The Contact whom is the primary recipient of this email. | 
**var_from** | **str** | The contact whom is the this email is from. | 
**subject** | **str** | The subject or title of the email | 
**body** | **str** | The main email contents. | 

## Example

```python
from interserver_api_client.models.send_mail import SendMail

# TODO update the JSON string below
json = "{}"
# create an instance of SendMail from a JSON string
send_mail_instance = SendMail.from_json(json)
# print the JSON string representation of the object
print(SendMail.to_json())

# convert the object into a dict
send_mail_dict = send_mail_instance.to_dict()
# create an instance of SendMail from a dict
send_mail_from_dict = SendMail.from_dict(send_mail_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


