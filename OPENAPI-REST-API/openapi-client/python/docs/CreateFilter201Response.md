# CreateFilter201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.create_filter201_response import CreateFilter201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateFilter201Response from a JSON string
create_filter201_response_instance = CreateFilter201Response.from_json(json)
# print the JSON string representation of the object
print(CreateFilter201Response.to_json())

# convert the object into a dict
create_filter201_response_dict = create_filter201_response_instance.to_dict()
# create an instance of CreateFilter201Response from a dict
create_filter201_response_from_dict = CreateFilter201Response.from_dict(create_filter201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


