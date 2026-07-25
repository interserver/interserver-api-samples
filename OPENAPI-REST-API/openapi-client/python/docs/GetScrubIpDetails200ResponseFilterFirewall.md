# GetScrubIpDetails200ResponseFilterFirewall


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rules** | [**List[GetScrubIpDetails200ResponseFilterFirewallRulesInner]**](GetScrubIpDetails200ResponseFilterFirewallRulesInner.md) |  | [optional] 
**filters** | [**List[GetScrubIpDetails200ResponseFilterFirewallFiltersInner]**](GetScrubIpDetails200ResponseFilterFirewallFiltersInner.md) |  | [optional] 
**scrub_enabled** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response_filter_firewall import GetScrubIpDetails200ResponseFilterFirewall

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200ResponseFilterFirewall from a JSON string
get_scrub_ip_details200_response_filter_firewall_instance = GetScrubIpDetails200ResponseFilterFirewall.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200ResponseFilterFirewall.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_filter_firewall_dict = get_scrub_ip_details200_response_filter_firewall_instance.to_dict()
# create an instance of GetScrubIpDetails200ResponseFilterFirewall from a dict
get_scrub_ip_details200_response_filter_firewall_from_dict = GetScrubIpDetails200ResponseFilterFirewall.from_dict(get_scrub_ip_details200_response_filter_firewall_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


