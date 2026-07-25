# VpsTrafficUsageAverageResponse

VPS Traffic Usage Average Section

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_in** | [**VpsTrafficUsageAverageSectionResponse**](VpsTrafficUsageAverageSectionResponse.md) |  | 
**out** | [**VpsTrafficUsageAverageSectionResponse**](VpsTrafficUsageAverageSectionResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_usage_average_response import VpsTrafficUsageAverageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficUsageAverageResponse from a JSON string
vps_traffic_usage_average_response_instance = VpsTrafficUsageAverageResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficUsageAverageResponse.to_json())

# convert the object into a dict
vps_traffic_usage_average_response_dict = vps_traffic_usage_average_response_instance.to_dict()
# create an instance of VpsTrafficUsageAverageResponse from a dict
vps_traffic_usage_average_response_from_dict = VpsTrafficUsageAverageResponse.from_dict(vps_traffic_usage_average_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


