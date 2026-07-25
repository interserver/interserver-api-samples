# GetScrubIpDetails200ResponseBillingDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** |  | [optional] 
**service_payment_status** | **str** |  | [optional] 
**service_frequency** | **str** |  | [optional] 
**next_date** | **str** |  | [optional] 
**service_next_invoice_date** | **str** |  | [optional] 
**service_currency** | **str** |  | [optional] 
**service_currency_symbol** | **str** |  | [optional] 
**service_cost_info** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.get_scrub_ip_details200_response_billing_details import GetScrubIpDetails200ResponseBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of GetScrubIpDetails200ResponseBillingDetails from a JSON string
get_scrub_ip_details200_response_billing_details_instance = GetScrubIpDetails200ResponseBillingDetails.from_json(json)
# print the JSON string representation of the object
print(GetScrubIpDetails200ResponseBillingDetails.to_json())

# convert the object into a dict
get_scrub_ip_details200_response_billing_details_dict = get_scrub_ip_details200_response_billing_details_instance.to_dict()
# create an instance of GetScrubIpDetails200ResponseBillingDetails from a dict
get_scrub_ip_details200_response_billing_details_from_dict = GetScrubIpDetails200ResponseBillingDetails.from_dict(get_scrub_ip_details200_response_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


