# GetOrderDetail200ResponseIpsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **float** |  | [optional] 
**service_module** | **str** |  | [optional] 
**service_hostname** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_order_detail200_response_ips_inner import GetOrderDetail200ResponseIpsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetOrderDetail200ResponseIpsInner from a JSON string
get_order_detail200_response_ips_inner_instance = GetOrderDetail200ResponseIpsInner.from_json(json)
# print the JSON string representation of the object
print(GetOrderDetail200ResponseIpsInner.to_json())

# convert the object into a dict
get_order_detail200_response_ips_inner_dict = get_order_detail200_response_ips_inner_instance.to_dict()
# create an instance of GetOrderDetail200ResponseIpsInner from a dict
get_order_detail200_response_ips_inner_from_dict = GetOrderDetail200ResponseIpsInner.from_dict(get_order_detail200_response_ips_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


