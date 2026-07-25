# VpsOrderPutResponse

Response from VPS order validation request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_continue** | **bool** |  | [optional] 
**errors** | **List[object]** |  | [optional] 
**coupon_code** | **int** |  | [optional] 
**service_cost** | **int** |  | [optional] 
**slice_cost** | **int** |  | [optional] 
**service_type** | **int** |  | [optional] 
**repeat_slice_cost** | **int** |  | [optional] 
**original_slice_cost** | **int** |  | [optional] 
**original_cost** | **int** |  | [optional] 
**repeat_service_cost** | **int** |  | [optional] 
**monthly_service_cost** | **int** |  | [optional] 
**custid** | **str** |  | [optional] 
**os** | **str** |  | [optional] 
**slices** | **str** |  | [optional] 
**platform** | **str** |  | [optional] 
**controlpanel** | **str** |  | [optional] 
**period** | **int** |  | [optional] 
**location** | **int** |  | [optional] 
**version** | **str** |  | [optional] 
**hostname** | **str** |  | [optional] 
**coupon** | **str** |  | [optional] 
**rootpass** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_order_put_response import VpsOrderPutResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsOrderPutResponse from a JSON string
vps_order_put_response_instance = VpsOrderPutResponse.from_json(json)
# print the JSON string representation of the object
print(VpsOrderPutResponse.to_json())

# convert the object into a dict
vps_order_put_response_dict = vps_order_put_response_instance.to_dict()
# create an instance of VpsOrderPutResponse from a dict
vps_order_put_response_from_dict = VpsOrderPutResponse.from_dict(vps_order_put_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


