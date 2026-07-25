# MailAlertsResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **int** |  | [optional] 
**alert_type** | **str** |  | [optional] 
**alert_value** | **str** |  | [optional] 
**alert_to** | **str** |  | [optional] 
**alert_enabled** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.mail_alerts_response_inner import MailAlertsResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of MailAlertsResponseInner from a JSON string
mail_alerts_response_inner_instance = MailAlertsResponseInner.from_json(json)
# print the JSON string representation of the object
print(MailAlertsResponseInner.to_json())

# convert the object into a dict
mail_alerts_response_inner_dict = mail_alerts_response_inner_instance.to_dict()
# create an instance of MailAlertsResponseInner from a dict
mail_alerts_response_inner_from_dict = MailAlertsResponseInner.from_dict(mail_alerts_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


