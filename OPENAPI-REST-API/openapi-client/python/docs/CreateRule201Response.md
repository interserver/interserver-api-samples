# CreateRule201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.create_rule201_response import CreateRule201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateRule201Response from a JSON string
create_rule201_response_instance = CreateRule201Response.from_json(json)
# print the JSON string representation of the object
print(CreateRule201Response.to_json())

# convert the object into a dict
create_rule201_response_dict = create_rule201_response_instance.to_dict()
# create an instance of CreateRule201Response from a dict
create_rule201_response_from_dict = CreateRule201Response.from_dict(create_rule201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


