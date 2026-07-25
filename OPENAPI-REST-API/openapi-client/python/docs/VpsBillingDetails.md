# VpsBillingDetails

Billing information for a VPS service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Last invoice date | [optional] 
**service_payment_status** | **str** | Payment status | [optional] 
**service_frequency** | **str** | Billing frequency | [optional] 
**next_date** | **str** | Next billing date | [optional] 
**service_next_invoice_date** | **str** | Next invoice date | [optional] 
**service_currency** | **str** | Currency used for billing | [optional] 
**service_currency_symbol** | **str** | Currency symbol | [optional] 
**service_coupon** | **str** | Billing coupon code | [optional] 
**service_cost_info** | **str** | Cost information | [optional] 
**service_extra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | [optional] 
**service_extra_json** | **str** | Additional information in JSON format | [optional] 

## Example

```python
from interserver_api_client.models.vps_billing_details import VpsBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of VpsBillingDetails from a JSON string
vps_billing_details_instance = VpsBillingDetails.from_json(json)
# print the JSON string representation of the object
print(VpsBillingDetails.to_json())

# convert the object into a dict
vps_billing_details_dict = vps_billing_details_instance.to_dict()
# create an instance of VpsBillingDetails from a dict
vps_billing_details_from_dict = VpsBillingDetails.from_dict(vps_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


