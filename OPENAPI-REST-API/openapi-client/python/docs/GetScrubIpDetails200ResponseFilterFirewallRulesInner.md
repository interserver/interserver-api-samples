# GetScrubIpDetails200ResponseFilterFirewallRulesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**source_ip** | **str** |  | [optional] 
**destination_ip** | **str** |  | [optional] 
**protocol_id** | **str** |  | [optional] 
**source_port** | **str** |  | [optional] 
**destination_port** | **str** |  | [optional] 
**xdp_action** | **str** |  | [optional] 
**global_drop** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response_filter_firewall_rules_inner import GetScrubIpDetails200ResponseFilterFirewallRulesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200ResponseFilterFirewallRulesInner from a JSON string
get_scrub_ip_details200_response_filter_firewall_rules_inner_instance = GetScrubIpDetails200ResponseFilterFirewallRulesInner.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200ResponseFilterFirewallRulesInner.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_filter_firewall_rules_inner_dict = get_scrub_ip_details200_response_filter_firewall_rules_inner_instance.to_dict()
# create an instance of GetScrubIpDetails200ResponseFilterFirewallRulesInner from a dict
get_scrub_ip_details200_response_filter_firewall_rules_inner_from_dict = GetScrubIpDetails200ResponseFilterFirewallRulesInner.from_dict(get_scrub_ip_details200_response_filter_firewall_rules_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


