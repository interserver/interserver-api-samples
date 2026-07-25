# VpsTrafficTotalsResposne

VPS Traffic Totals Section

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**day** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**month** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**year** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**all** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_totals_resposne import VpsTrafficTotalsResposne

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficTotalsResposne from a JSON string
vps_traffic_totals_resposne_instance = VpsTrafficTotalsResposne.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficTotalsResposne.to_json())

# convert the object into a dict
vps_traffic_totals_resposne_dict = vps_traffic_totals_resposne_instance.to_dict()
# create an instance of VpsTrafficTotalsResposne from a dict
vps_traffic_totals_resposne_from_dict = VpsTrafficTotalsResposne.from_dict(vps_traffic_totals_resposne_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


