# ServerNetworkInfoSwitchports

Object containing switchport information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_10414** | [**ServerSwitchport**](ServerSwitchport.md) |  | 

## Example

```python
from interserver_api_client.models.server_network_info_switchports import ServerNetworkInfoSwitchports

# TODO update the JSON string below
json = "{}"
# create an instance of ServerNetworkInfoSwitchports from a JSON string
server_network_info_switchports_instance = ServerNetworkInfoSwitchports.from_json(json)
# print the JSON string representation of the object
print(ServerNetworkInfoSwitchports.to_json())

# convert the object into a dict
server_network_info_switchports_dict = server_network_info_switchports_instance.to_dict()
# create an instance of ServerNetworkInfoSwitchports from a dict
server_network_info_switchports_from_dict = ServerNetworkInfoSwitchports.from_dict(server_network_info_switchports_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


