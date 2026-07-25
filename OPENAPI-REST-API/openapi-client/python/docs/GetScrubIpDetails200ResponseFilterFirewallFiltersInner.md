# GetScrubIpDetails200ResponseFilterFirewallFiltersInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daddr** | **str** |  | [optional] 
**dest** | **str** |  | [optional] 
**filter_name** | **str** |  | [optional] 
**destination_ip** | **str** |  | [optional] 
**filter** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response_filter_firewall_filters_inner import GetScrubIpDetails200ResponseFilterFirewallFiltersInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200ResponseFilterFirewallFiltersInner from a JSON string
get_scrub_ip_details200_response_filter_firewall_filters_inner_instance = GetScrubIpDetails200ResponseFilterFirewallFiltersInner.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200ResponseFilterFirewallFiltersInner.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_filter_firewall_filters_inner_dict = get_scrub_ip_details200_response_filter_firewall_filters_inner_instance.to_dict()
# create an instance of GetScrubIpDetails200ResponseFilterFirewallFiltersInner from a dict
get_scrub_ip_details200_response_filter_firewall_filters_inner_from_dict = GetScrubIpDetails200ResponseFilterFirewallFiltersInner.from_dict(get_scrub_ip_details200_response_filter_firewall_filters_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


