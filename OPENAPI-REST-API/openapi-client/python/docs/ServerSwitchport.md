# ServerSwitchport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**switchport_id** | **int** | Unique identifier for the switchport. | 
**switch_id** | **str** | Unique identifier for the switch associated with the switchport. | 
**switch** | **str** | Name of the switch associated with the switchport. | 
**port** | **str** | Port name on the switch. | 
**blade** | **str** | Blade name associated with the port. | 
**justport** | **str** | Port identifier. | 
**graph_id** | **str** | Identifier for the graph associated with the switchport. | 
**asset_id** | **int** | Unique identifier of the asset associated with the switchport. | 
**vlans** | **List[str]** | List of VLANs associated with the switchport. | [optional] 
**vlans6** | **List[str]** | List of IPv6 VLANs associated with the switchport. | [optional] 

## Example

```python
from interserver_api_client.models.server_switchport import ServerSwitchport

# TODO update the JSON string below
json = "{}"
# create an instance of ServerSwitchport from a JSON string
server_switchport_instance = ServerSwitchport.from_json(json)
# print the JSON string representation of the object
print(ServerSwitchport.to_json())

# convert the object into a dict
server_switchport_dict = server_switchport_instance.to_dict()
# create an instance of ServerSwitchport from a dict
server_switchport_from_dict = ServerSwitchport.from_dict(server_switchport_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


