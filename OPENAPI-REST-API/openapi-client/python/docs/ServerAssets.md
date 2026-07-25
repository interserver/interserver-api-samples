# ServerAssets


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | The title of the assets. | [optional] 
**size** | **int** | The size of the assets. | [optional] 
**type** | **str** | The type of the assets. | [optional] 
**header** | **List[str]** | The header of the assets table. | [optional] 
**rows** | **List[List[str]]** | The rows of the assets table. | [optional] 

## Example

```python
from interserver_api_client.models.server_assets import ServerAssets

# TODO update the JSON string below
json = "{}"
# create an instance of ServerAssets from a JSON string
server_assets_instance = ServerAssets.from_json(json)
# print the JSON string representation of the object
print(ServerAssets.to_json())

# convert the object into a dict
server_assets_dict = server_assets_instance.to_dict()
# create an instance of ServerAssets from a dict
server_assets_from_dict = ServerAssets.from_dict(server_assets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


