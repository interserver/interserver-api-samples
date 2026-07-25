# VpsTrafficHistoryResponse

VPS Traffic Data History Section

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hour** | [**VpsTrafficHistorySectionResponse**](VpsTrafficHistorySectionResponse.md) |  | 
**day** | [**VpsTrafficHistorySectionResponse**](VpsTrafficHistorySectionResponse.md) |  | 

## Example

```python
from interserver_api_client.models.vps_traffic_history_response import VpsTrafficHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VpsTrafficHistoryResponse from a JSON string
vps_traffic_history_response_instance = VpsTrafficHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(VpsTrafficHistoryResponse.to_json())

# convert the object into a dict
vps_traffic_history_response_dict = vps_traffic_history_response_instance.to_dict()
# create an instance of VpsTrafficHistoryResponse from a dict
vps_traffic_history_response_from_dict = VpsTrafficHistoryResponse.from_dict(vps_traffic_history_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


