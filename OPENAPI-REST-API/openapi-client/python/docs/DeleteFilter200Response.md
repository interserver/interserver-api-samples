# DeleteFilter200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.delete_filter200_response import DeleteFilter200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteFilter200Response from a JSON string
delete_filter200_response_instance = DeleteFilter200Response.from_json(json)
# print the JSON string representation of the object
print(DeleteFilter200Response.to_json())

# convert the object into a dict
delete_filter200_response_dict = delete_filter200_response_instance.to_dict()
# create an instance of DeleteFilter200Response from a dict
delete_filter200_response_from_dict = DeleteFilter200Response.from_dict(delete_filter200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


