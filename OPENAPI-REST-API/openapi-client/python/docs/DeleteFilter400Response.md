# DeleteFilter400Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.delete_filter400_response import DeleteFilter400Response

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteFilter400Response from a JSON string
delete_filter400_response_instance = DeleteFilter400Response.from_json(json)
# print the JSON string representation of the object
print(DeleteFilter400Response.to_json())

# convert the object into a dict
delete_filter400_response_dict = delete_filter400_response_instance.to_dict()
# create an instance of DeleteFilter400Response from a dict
delete_filter400_response_from_dict = DeleteFilter400Response.from_dict(delete_filter400_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


