# VpsTrafficTotalsSectionResponse

VPS Traffic Totals Secttions Data

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_in** | **int** |  | 
**out** | **int** |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_totals_section_response import VpsTrafficTotalsSectionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficTotalsSectionResponse from a JSON string
vps_traffic_totals_section_response_instance = VpsTrafficTotalsSectionResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficTotalsSectionResponse.to_json())

# convert the object into a dict
vps_traffic_totals_section_response_dict = vps_traffic_totals_section_response_instance.to_dict()
# create an instance of VpsTrafficTotalsSectionResponse from a dict
vps_traffic_totals_section_response_from_dict = VpsTrafficTotalsSectionResponse.from_dict(vps_traffic_totals_section_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


