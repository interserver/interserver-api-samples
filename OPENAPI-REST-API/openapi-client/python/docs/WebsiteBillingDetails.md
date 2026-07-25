# WebsiteBillingDetails

Billing information for a webhosting service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Last invoice date for the service | [optional] 
**service_payment_status** | **str** | Payment status for the service | [optional] 
**service_frequency** | **str** | Frequency of the service | [optional] 
**next_date** | **str** | Next date for the service | [optional] 
**service_next_invoice_date** | **str** | Next invoice date for the service | [optional] 
**service_currency** | **str** | Currency for the service | [optional] 
**service_currency_symbol** | **str** | Currency symbol for the service | [optional] 
**service_coupon** | **str** | Coupon for the service | [optional] 
**service_cost_info** | **str** | Cost information for the service | [optional] 
**service_extra** | **object** | Extra information for the service | [optional] 
**service_extra_json** | **str** | Extra information in JSON format for the service | [optional] 

## Example

```python
from interserver_api_client.models.website_billing_details import WebsiteBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteBillingDetails from a JSON string
website_billing_details_instance = WebsiteBillingDetails.from_json(json)
# print the JSON string representation of the object
print(WebsiteBillingDetails.to_json())

# convert the object into a dict
website_billing_details_dict = website_billing_details_instance.to_dict()
# create an instance of WebsiteBillingDetails from a dict
website_billing_details_from_dict = WebsiteBillingDetails.from_dict(website_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


