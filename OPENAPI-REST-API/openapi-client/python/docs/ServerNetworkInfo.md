# ServerNetworkInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vlans** | **List[str]** | List of VLANs. | 
**vlans6** | **List[str]** | List of IPv6 VLANs. | 
**assets** | [**ServerNetworkInfoAssets**](ServerNetworkInfoAssets.md) |  | 
**switchports** | [**ServerNetworkInfoSwitchports**](ServerNetworkInfoSwitchports.md) |  | 

## Example

```python
from interserver_api_client.models.server_network_info import ServerNetworkInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ServerNetworkInfo from a JSON string
server_network_info_instance = ServerNetworkInfo.from_json(json)
# print the JSON string representation of the object
print(ServerNetworkInfo.to_json())

# convert the object into a dict
server_network_info_dict = server_network_info_instance.to_dict()
# create an instance of ServerNetworkInfo from a dict
server_network_info_from_dict = ServerNetworkInfo.from_dict(server_network_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


