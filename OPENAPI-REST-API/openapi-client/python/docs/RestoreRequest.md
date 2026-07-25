# RestoreRequest

Request data to trigger a restore from backup.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup** | **str** |  | [optional] 
**password** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.restore_request import RestoreRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RestoreRequest from a JSON string
restore_request_instance = RestoreRequest.from_json(json)
# print the JSON string representation of the object
print(RestoreRequest.to_json())

# convert the object into a dict
restore_request_dict = restore_request_instance.to_dict()
# create an instance of RestoreRequest from a dict
restore_request_from_dict = RestoreRequest.from_dict(restore_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


