# ServerOrderCPU

A CPU option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | CPU ID. | [optional] 
**price** | **int** | CPU price. | [optional] 
**img** | **str** | CPU image. | [optional] 
**short_desc** | **str** | Short description of the CPU. | [optional] 
**long_desc** | **str** | Long description of the CPU. | [optional] 
**location** | **str** | Location of the CPU. | [optional] 
**fsb** | **str** | Front Side Bus information. | [optional] 
**manu** | **str** | Manufacturer information. | [optional] 
**type** | **str** | CPU type. | [optional] 
**speed** | **str** | CPU speed. | [optional] 
**cache** | **str** | Cache information. | [optional] 
**active** | **str** | Active status. | [optional] 
**num_cores** | **str** | Number of cores. | [optional] 
**num_cpus** | **str** | Number of CPUs. | [optional] 
**benchmark** | **str** | CPU benchmark. | [optional] 
**monthly_price** | **int** | Monthly price. | [optional] 
**max_ram** | **str** | Maximum RAM supported. | [optional] 
**min_ram** | **str** | Minimum RAM required. | [optional] 
**max_lff** | **str** | Maximum LFF (Large Form Factor) supported. | [optional] 
**max_sff** | **str** | Maximum SFF (Small Form Factor) supported. | [optional] 
**max_nve** | **str** | Maximum NVMe drives supported. | [optional] 
**visible** | **str** | Visibility status. | [optional] 
**hd_ids** | **str** | Hard drive IDs. | [optional] 
**price_display** | **str** | Display of CPU price. | [optional] 
**monthly_price_display** | **str** | Display of monthly CPU price. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_cpu import ServerOrderCPU

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderCPU from a JSON string
server_order_cpu_instance = ServerOrderCPU.from_json(json)
# print the JSON string representation of the object
print(ServerOrderCPU.to_json())

# convert the object into a dict
server_order_cpu_dict = server_order_cpu_instance.to_dict()
# create an instance of ServerOrderCPU from a dict
server_order_cpu_from_dict = ServerOrderCPU.from_dict(server_order_cpu_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


