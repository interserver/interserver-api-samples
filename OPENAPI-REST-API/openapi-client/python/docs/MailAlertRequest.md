# MailAlertRequest

Payload for creating a mail alert.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Alert type identifier. | [optional] 
**value** | **str** | Alert value or threshold. | [optional] 
**to** | **str** | Email address to notify. | [optional] 
**enabled** | **str** | Whether the alert is enabled. | [optional] 

## Example

```python
from interserver_api_client.models.mail_alert_request import MailAlertRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MailAlertRequest from a JSON string
mail_alert_request_instance = MailAlertRequest.from_json(json)
# print the JSON string representation of the object
print(MailAlertRequest.to_json())

# convert the object into a dict
mail_alert_request_dict = mail_alert_request_instance.to_dict()
# create an instance of MailAlertRequest from a dict
mail_alert_request_from_dict = MailAlertRequest.from_dict(mail_alert_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


