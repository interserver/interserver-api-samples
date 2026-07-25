# ServerOrderMemory

A memory (RAM) option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Memory ID. | [optional] 
**price** | **str** | Memory price. | [optional] 
**img** | **str** | Memory image. | [optional] 
**short_desc** | **str** | Short description of the memory. | [optional] 
**long_desc** | **str** | Long description of the memory. | [optional] 
**manu** | **str** | Manufacturer information. | [optional] 
**size** | **str** | Memory size. | [optional] 
**type** | **str** | Memory type. | [optional] 
**hidden** | **str** | Hidden status. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**drive_type** | **str** | Drive type. | [optional] 
**monthly_price_display** | **str** | Display of monthly memory price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_memory import ServerOrderMemory

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderMemory from a JSON string
server_order_memory_instance = ServerOrderMemory.from_json(json)
# print the JSON string representation of the object
print(ServerOrderMemory.to_json())

# convert the object into a dict
server_order_memory_dict = server_order_memory_instance.to_dict()
# create an instance of ServerOrderMemory from a dict
server_order_memory_from_dict = ServerOrderMemory.from_dict(server_order_memory_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


