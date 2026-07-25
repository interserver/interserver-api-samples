# GetOrderDetail200ResponseServiceTypesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **int** |  | [optional] 
**services_name** | **str** |  | [optional] 
**services_cost** | **int** |  | [optional] 
**services_field1** | **str** |  | [optional] 
**services_field2** | **str** |  | [optional] 
**services_module** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_order_detail200_response_service_types_inner import GetOrderDetail200ResponseServiceTypesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetOrderDetail200ResponseServiceTypesInner from a JSON string
get_order_detail200_response_service_types_inner_instance = GetOrderDetail200ResponseServiceTypesInner.from_json(json)
# print the JSON string representation of the object
print(GetOrderDetail200ResponseServiceTypesInner.to_json())

# convert the object into a dict
get_order_detail200_response_service_types_inner_dict = get_order_detail200_response_service_types_inner_instance.to_dict()
# create an instance of GetOrderDetail200ResponseServiceTypesInner from a dict
get_order_detail200_response_service_types_inner_from_dict = GetOrderDetail200ResponseServiceTypesInner.from_dict(get_order_detail200_response_service_types_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


