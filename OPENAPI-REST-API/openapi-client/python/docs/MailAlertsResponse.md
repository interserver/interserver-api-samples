# MailAlertsResponse

Alert configuration entries for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.mail_alerts_response import MailAlertsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MailAlertsResponse from a JSON string
mail_alerts_response_instance = MailAlertsResponse.from_json(json)
# print the JSON string representation of the object
print(MailAlertsResponse.to_json())

# convert the object into a dict
mail_alerts_response_dict = mail_alerts_response_instance.to_dict()
# create an instance of MailAlertsResponse from a dict
mail_alerts_response_from_dict = MailAlertsResponse.from_dict(mail_alerts_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


