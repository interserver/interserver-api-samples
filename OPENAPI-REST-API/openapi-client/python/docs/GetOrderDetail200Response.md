# GetOrderDetail200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_costs** | [**GetOrderDetail200ResponsePackageCosts**](GetOrderDetail200ResponsePackageCosts.md) |  | [optional] 
**service_types** | [**List[GetOrderDetail200ResponseServiceTypesInner]**](GetOrderDetail200ResponseServiceTypesInner.md) |  | [optional] 
**ips** | [**List[GetOrderDetail200ResponseIpsInner]**](GetOrderDetail200ResponseIpsInner.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.get_order_detail200_response import GetOrderDetail200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetOrderDetail200Response from a JSON string
get_order_detail200_response_instance = GetOrderDetail200Response.from_json(json)
# print the JSON string representation of the object
print(GetOrderDetail200Response.to_json())

# convert the object into a dict
get_order_detail200_response_dict = get_order_detail200_response_instance.to_dict()
# create an instance of GetOrderDetail200Response from a dict
get_order_detail200_response_from_dict = GetOrderDetail200Response.from_dict(get_order_detail200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


