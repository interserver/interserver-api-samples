# DomainBillingDetails

Billing information for a domain service including payment status, dates, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Date of the last invoice for the domain. | [optional] 
**service_payment_status** | **str** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**service_frequency** | **str** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**next_date** | **str** | Next billing date (ISO 8601). | [optional] 
**service_next_invoice_date** | **str** | Human-readable next invoice date. | [optional] 
**service_currency** | **str** | Billing currency code. | [optional] 
**service_currency_symbol** | **str** | Billing currency symbol. | [optional] 
**service_cost_info** | **str** | Cost breakdown information. | [optional] 
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**service_extra_json** | **str** | Raw JSON string of extra billing data. | [optional] 

## Example

```python
from interserver_api_client.models.domain_billing_details import DomainBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of DomainBillingDetails from a JSON string
domain_billing_details_instance = DomainBillingDetails.from_json(json)
# print the JSON string representation of the object
print(DomainBillingDetails.to_json())

# convert the object into a dict
domain_billing_details_dict = domain_billing_details_instance.to_dict()
# create an instance of DomainBillingDetails from a dict
domain_billing_details_from_dict = DomainBillingDetails.from_dict(domain_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


