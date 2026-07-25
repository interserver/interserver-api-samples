# CancelBackup200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | 
**text** | **str** |  | 

## Example

```python
from interserver_api_client.models.cancel_backup200_response import CancelBackup200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CancelBackup200Response from a JSON string
cancel_backup200_response_instance = CancelBackup200Response.from_json(json)
# print the JSON string representation of the object
print(CancelBackup200Response.to_json())

# convert the object into a dict
cancel_backup200_response_dict = cancel_backup200_response_instance.to_dict()
# create an instance of CancelBackup200Response from a dict
cancel_backup200_response_from_dict = CancelBackup200Response.from_dict(cancel_backup200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


