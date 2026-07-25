# VpsTrafficDataSectionResponse

VPS Traffic Data Section Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**data** | [**List[VPSTrafficDataDataSectionResponse]**](VPSTrafficDataDataSectionResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_data_section_response import VpsTrafficDataSectionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficDataSectionResponse from a JSON string
vps_traffic_data_section_response_instance = VpsTrafficDataSectionResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficDataSectionResponse.to_json())

# convert the object into a dict
vps_traffic_data_section_response_dict = vps_traffic_data_section_response_instance.to_dict()
# create an instance of VpsTrafficDataSectionResponse from a dict
vps_traffic_data_section_response_from_dict = VpsTrafficDataSectionResponse.from_dict(vps_traffic_data_section_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


