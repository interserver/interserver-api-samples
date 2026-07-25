# GetScrubIpDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**GetScrubIpDetails200ResponseServiceInfo**](GetScrubIpDetails200ResponseServiceInfo.md) |  | [optional] 
**client_links** | [**List[GetScrubIpDetails200ResponseClientLinksInner]**](GetScrubIpDetails200ResponseClientLinksInner.md) |  | [optional] 
**billing_details** | [**GetScrubIpDetails200ResponseBillingDetails**](GetScrubIpDetails200ResponseBillingDetails.md) |  | [optional] 
**cust_currency** | **str** |  | [optional] 
**cust_currency_symbol** | **str** |  | [optional] 
**package** | **str** |  | [optional] 
**extra_info_tables** | [**GetScrubIpDetails200ResponseExtraInfoTables**](GetScrubIpDetails200ResponseExtraInfoTables.md) |  | [optional] 
**filter_firewall** | [**GetScrubIpDetails200ResponseFilterFirewall**](GetScrubIpDetails200ResponseFilterFirewall.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response import GetScrubIpDetails200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200Response from a JSON string
get_scrub_ip_details200_response_instance = GetScrubIpDetails200Response.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200Response.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_dict = get_scrub_ip_details200_response_instance.to_dict()
# create an instance of GetScrubIpDetails200Response from a dict
get_scrub_ip_details200_response_from_dict = GetScrubIpDetails200Response.from_dict(get_scrub_ip_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


