# GetScrubIpDetails200ResponseServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scrub_ip_id** | **str** |  | [optional] 
**scrub_ip_type** | **str** |  | [optional] 
**scrub_ip_custid** | **str** |  | [optional] 
**scrub_ip_order_date** | **str** |  | [optional] 
**scrub_ip_ip** | **str** |  | [optional] 
**scrub_ip_service_id** | **str** |  | [optional] 
**scrub_ip_service_module** | **str** |  | [optional] 
**scrub_ip_status** | **str** |  | [optional] 
**scrub_ip_invoice** | **str** |  | [optional] 
**scrub_ip_currency** | **str** |  | [optional] 
**scrub_ip_coupon** | **str** |  | [optional] 
**scrub_ip_comment** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response_service_info import GetScrubIpDetails200ResponseServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200ResponseServiceInfo from a JSON string
get_scrub_ip_details200_response_service_info_instance = GetScrubIpDetails200ResponseServiceInfo.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200ResponseServiceInfo.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_service_info_dict = get_scrub_ip_details200_response_service_info_instance.to_dict()
# create an instance of GetScrubIpDetails200ResponseServiceInfo from a dict
get_scrub_ip_details200_response_service_info_from_dict = GetScrubIpDetails200ResponseServiceInfo.from_dict(get_scrub_ip_details200_response_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


