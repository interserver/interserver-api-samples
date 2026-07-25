# ServerOrderControlPanel

A control panel option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Control Panel ID. | [optional] 
**price** | **int** | Control Panel price. | [optional] 
**img** | **str** | Control Panel image. | [optional] 
**short_desc** | **str** | Short description of the control panel. | [optional] 
**long_desc** | **str** | Long description of the control panel. | [optional] 
**os_type** | **str** | OS types compatible with the control panel. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**types** | **List[str]** | List of types. | [optional] 
**price_display** | **str** | Display of control panel price. | [optional] 
**monthly_price_display** | **str** | Display of monthly control panel price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_control_panel import ServerOrderControlPanel

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderControlPanel from a JSON string
server_order_control_panel_instance = ServerOrderControlPanel.from_json(json)
# print the JSON string representation of the object
print(ServerOrderControlPanel.to_json())

# convert the object into a dict
server_order_control_panel_dict = server_order_control_panel_instance.to_dict()
# create an instance of ServerOrderControlPanel from a dict
server_order_control_panel_from_dict = ServerOrderControlPanel.from_dict(server_order_control_panel_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


