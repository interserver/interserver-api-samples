# ServerNetworkInfoAssets

Object containing asset information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_3497** | [**ServerAsset**](ServerAsset.md) |  | 

## Example

```python
from interserver_api_client.models.server_network_info_assets import ServerNetworkInfoAssets

# TODO update the JSON string below
json = "{}"
# create an instance of ServerNetworkInfoAssets from a JSON string
server_network_info_assets_instance = ServerNetworkInfoAssets.from_json(json)
# print the JSON string representation of the object
print(ServerNetworkInfoAssets.to_json())

# convert the object into a dict
server_network_info_assets_dict = server_network_info_assets_instance.to_dict()
# create an instance of ServerNetworkInfoAssets from a dict
server_network_info_assets_from_dict = ServerNetworkInfoAssets.from_dict(server_network_info_assets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


