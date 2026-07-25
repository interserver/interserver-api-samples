# ServerLocations


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_1** | [**ServerLocation1**](ServerLocation1.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.server_locations import ServerLocations

# TODO update the JSON string below
json = "{}"
# create an instance of ServerLocations from a JSON string
server_locations_instance = ServerLocations.from_json(json)
# print the JSON string representation of the object
print(ServerLocations.to_json())

# convert the object into a dict
server_locations_dict = server_locations_instance.to_dict()
# create an instance of ServerLocations from a dict
server_locations_from_dict = ServerLocations.from_dict(server_locations_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


