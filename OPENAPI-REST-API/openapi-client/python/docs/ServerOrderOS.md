# ServerOrderOS

An operating system option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Operating System ID. | [optional] 
**price** | **int** | Operating System price. | [optional] 
**img** | **str** | Operating System image. | [optional] 
**short_desc** | **str** | Short description of the OS. | [optional] 
**long_desc** | **str** | Long description of the OS. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**active** | **str** | Active status. | [optional] 
**price_display** | **str** | Display of OS price. | [optional] 
**monthly_price_display** | **str** | Display of monthly OS price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_os import ServerOrderOS

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderOS from a JSON string
server_order_os_instance = ServerOrderOS.from_json(json)
# print the JSON string representation of the object
print(ServerOrderOS.to_json())

# convert the object into a dict
server_order_os_dict = server_order_os_instance.to_dict()
# create an instance of ServerOrderOS from a dict
server_order_os_from_dict = ServerOrderOS.from_dict(server_order_os_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


