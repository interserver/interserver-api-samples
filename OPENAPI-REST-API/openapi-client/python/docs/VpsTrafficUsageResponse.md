# VpsTrafficUsageResponse

VPS Traffic Usage Section

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**peak** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**average** | [**VpsTrafficUsageAverageResponse**](VpsTrafficUsageAverageResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_usage_response import VpsTrafficUsageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficUsageResponse from a JSON string
vps_traffic_usage_response_instance = VpsTrafficUsageResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficUsageResponse.to_json())

# convert the object into a dict
vps_traffic_usage_response_dict = vps_traffic_usage_response_instance.to_dict()
# create an instance of VpsTrafficUsageResponse from a dict
vps_traffic_usage_response_from_dict = VpsTrafficUsageResponse.from_dict(vps_traffic_usage_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


