# GetOrderDetail200ResponsePackageCosts


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_id** | **float** |  | [optional] 
**package_cost** | **float** |  | [optional] 
**currency** | **str** |  | [optional] 
**currency_symbol** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_order_detail200_response_package_costs import GetOrderDetail200ResponsePackageCosts

# TODO update the JSON string below
json = "{}"
# create an instance of GetOrderDetail200ResponsePackageCosts from a JSON string
get_order_detail200_response_package_costs_instance = GetOrderDetail200ResponsePackageCosts.from_json(json)
# print the JSON string representation of the object
print(GetOrderDetail200ResponsePackageCosts.to_json())

# convert the object into a dict
get_order_detail200_response_package_costs_dict = get_order_detail200_response_package_costs_instance.to_dict()
# create an instance of GetOrderDetail200ResponsePackageCosts from a dict
get_order_detail200_response_package_costs_from_dict = GetOrderDetail200ResponsePackageCosts.from_dict(get_order_detail200_response_package_costs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


