# VpsOrderServiceTypes32


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** |  | [optional] 
**services_name** | **str** |  | [optional] 
**services_cost** | **str** |  | [optional] 
**services_category** | **str** |  | [optional] 
**services_buyable** | **str** |  | [optional] 
**services_type** | **str** |  | [optional] 
**services_field1** | **str** |  | [optional] 
**services_field2** | **str** |  | [optional] 
**services_module** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_service_types32 import VpsOrderServiceTypes32

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderServiceTypes32 from a JSON string
vps_order_service_types32_instance = VpsOrderServiceTypes32.from_json(json)
# print the JSON string representation of the object
print(VpsOrderServiceTypes32.to_json())

# convert the object into a dict
vps_order_service_types32_dict = vps_order_service_types32_instance.to_dict()
# create an instance of VpsOrderServiceTypes32 from a dict
vps_order_service_types32_from_dict = VpsOrderServiceTypes32.from_dict(vps_order_service_types32_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


