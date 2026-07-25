# LicenseBillingDetails

Billing information for a software license including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Last invoice date | [optional] 
**service_payment_status** | **str** | Payment status | [optional] 
**service_frequency** | **str** | Service frequency | [optional] 
**next_date** | **datetime** | Next date | [optional] 
**service_next_invoice_date** | **str** | Next invoice date | [optional] 
**service_currency** | **str** | Service currency | [optional] 
**service_currency_symbol** | **str** | Service currency symbol | [optional] 
**service_coupon** | **str** | Service coupon | [optional] 
**service_cost_info** | **str** | Service cost information | [optional] 
**service_extra** | **List[str]** | Additional service information | [optional] 
**service_extra_json** | **str** | Additional service information in JSON format | [optional] 

## Example

```python
from interserver_api_client.models.license_billing_details import LicenseBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseBillingDetails from a JSON string
license_billing_details_instance = LicenseBillingDetails.from_json(json)
# print the JSON string representation of the object
print(LicenseBillingDetails.to_json())

# convert the object into a dict
license_billing_details_dict = license_billing_details_instance.to_dict()
# create an instance of LicenseBillingDetails from a dict
license_billing_details_from_dict = LicenseBillingDetails.from_dict(license_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


