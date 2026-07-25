# VpsTrafficUsageAverageSectionResponse

VPS Traffic Usage Average Section Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | 
**count** | **int** |  | 
**value** | **int** |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_usage_average_section_response import VpsTrafficUsageAverageSectionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficUsageAverageSectionResponse from a JSON string
vps_traffic_usage_average_section_response_instance = VpsTrafficUsageAverageSectionResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficUsageAverageSectionResponse.to_json())

# convert the object into a dict
vps_traffic_usage_average_section_response_dict = vps_traffic_usage_average_section_response_instance.to_dict()
# create an instance of VpsTrafficUsageAverageSectionResponse from a dict
vps_traffic_usage_average_section_response_from_dict = VpsTrafficUsageAverageSectionResponse.from_dict(vps_traffic_usage_average_section_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


