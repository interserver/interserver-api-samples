# VpsTrafficHistorySectionResponse

VPS Traffic History Hour and Day Sections

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[VpsTrafficHistorySectionDataResponse]**](VpsTrafficHistorySectionDataResponse.md) |  | 
**times** | **List[datetime]** |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_history_section_response import VpsTrafficHistorySectionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficHistorySectionResponse from a JSON string
vps_traffic_history_section_response_instance = VpsTrafficHistorySectionResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficHistorySectionResponse.to_json())

# convert the object into a dict
vps_traffic_history_section_response_dict = vps_traffic_history_section_response_instance.to_dict()
# create an instance of VpsTrafficHistorySectionResponse from a dict
vps_traffic_history_section_response_from_dict = VpsTrafficHistorySectionResponse.from_dict(vps_traffic_history_section_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


