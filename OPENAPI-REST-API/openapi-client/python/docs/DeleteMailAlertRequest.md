# DeleteMailAlertRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **int** | The ID of the alert to delete. | 

## Example

```python
from interserver_api_client.models.delete_mail_alert_request import DeleteMailAlertRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteMailAlertRequest from a JSON string
delete_mail_alert_request_instance = DeleteMailAlertRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteMailAlertRequest.to_json())

# convert the object into a dict
delete_mail_alert_request_dict = delete_mail_alert_request_instance.to_dict()
# create an instance of DeleteMailAlertRequest from a dict
delete_mail_alert_request_from_dict = DeleteMailAlertRequest.from_dict(delete_mail_alert_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


