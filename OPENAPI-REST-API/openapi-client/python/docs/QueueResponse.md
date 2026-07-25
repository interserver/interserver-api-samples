# QueueResponse

Response after sending an action queue to a service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** | Response text | 
**queue_id** | **int** | The Queue ID attached to the action. | 

## Example

```python
from interserver_api_client.models.queue_response import QueueResponse

# TODO update the JSON string below
json = "{}"
# create an instance of QueueResponse from a JSON string
queue_response_instance = QueueResponse.from_json(json)
# print the JSON string representation of the object
print(QueueResponse.to_json())

# convert the object into a dict
queue_response_dict = queue_response_instance.to_dict()
# create an instance of QueueResponse from a dict
queue_response_from_dict = QueueResponse.from_dict(queue_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


