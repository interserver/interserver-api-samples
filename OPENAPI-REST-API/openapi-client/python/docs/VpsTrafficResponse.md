# VpsTrafficResponse

VPS Traffic Information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**target** | **str** |  | 
**interval** | **int** |  | 
**history** | [**VpsTrafficHistoryResponse**](VpsTrafficHistoryResponse.md) |  | 
**last** | **datetime** |  | 
**times** | **List[datetime]** |  | 
**totals** | [**VpsTrafficTotalsResposne**](VpsTrafficTotalsResposne.md) |  | 
**usage** | [**VpsTrafficUsageResponse**](VpsTrafficUsageResponse.md) |  | 
**data** | [**List[VpsTrafficDataSectionResponse]**](VpsTrafficDataSectionResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_response import VpsTrafficResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficResponse from a JSON string
vps_traffic_response_instance = VpsTrafficResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficResponse.to_json())

# convert the object into a dict
vps_traffic_response_dict = vps_traffic_response_instance.to_dict()
# create an instance of VpsTrafficResponse from a dict
vps_traffic_response_from_dict = VpsTrafficResponse.from_dict(vps_traffic_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


