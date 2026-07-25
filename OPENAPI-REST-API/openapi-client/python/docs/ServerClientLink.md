# ServerClientLink


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** |  | 
**link** | **str** |  | 
**icon** | **str** |  | [optional] 
**icon_text** | **str** |  | [optional] 
**help_text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.server_client_link import ServerClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of ServerClientLink from a JSON string
server_client_link_instance = ServerClientLink.from_json(json)
# print the JSON string representation of the object
print(ServerClientLink.to_json())

# convert the object into a dict
server_client_link_dict = server_client_link_instance.to_dict()
# create an instance of ServerClientLink from a dict
server_client_link_from_dict = ServerClientLink.from_dict(server_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


