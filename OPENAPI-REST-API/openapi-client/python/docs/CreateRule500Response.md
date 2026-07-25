# CreateRule500Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.create_rule500_response import CreateRule500Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateRule500Response from a JSON string
create_rule500_response_instance = CreateRule500Response.from_json(json)
# print the JSON string representation of the object
print(CreateRule500Response.to_json())

# convert the object into a dict
create_rule500_response_dict = create_rule500_response_instance.to_dict()
# create an instance of CreateRule500Response from a dict
create_rule500_response_from_dict = CreateRule500Response.from_dict(create_rule500_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


