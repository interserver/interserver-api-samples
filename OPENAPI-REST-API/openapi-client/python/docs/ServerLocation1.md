# ServerLocation1


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location_id** | **int** |  | 
**location_name** | **str** |  | 
**location_lat** | **str** |  | 
**location_long** | **str** |  | 
**location_description** | **str** |  | [optional] 
**location_ipmi_group** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.server_location1 import ServerLocation1

# TODO update the JSON string below
json = "{}"
# create an instance of ServerLocation1 from a JSON string
server_location1_instance = ServerLocation1.from_json(json)
# print the JSON string representation of the object
print(ServerLocation1.to_json())

# convert the object into a dict
server_location1_dict = server_location1_instance.to_dict()
# create an instance of ServerLocation1 from a dict
server_location1_from_dict = ServerLocation1.from_dict(server_location1_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


