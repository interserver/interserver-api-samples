# MailAlertUpdateRequest

Payload for updating an existing mail alert.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **int** | Alert ID to update. | [optional] 
**type** | **str** | Alert type identifier. | [optional] 
**value** | **str** | Alert value or threshold. | [optional] 
**to** | **str** | Email address to notify. | [optional] 
**enabled** | **str** | Whether the alert is enabled. | [optional] 

## Example

```python
from interserver_api_client.models.mail_alert_update_request import MailAlertUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MailAlertUpdateRequest from a JSON string
mail_alert_update_request_instance = MailAlertUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(MailAlertUpdateRequest.to_json())

# convert the object into a dict
mail_alert_update_request_dict = mail_alert_update_request_instance.to_dict()
# create an instance of MailAlertUpdateRequest from a dict
mail_alert_update_request_from_dict = MailAlertUpdateRequest.from_dict(mail_alert_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


