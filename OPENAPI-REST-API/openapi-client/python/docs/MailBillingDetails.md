# MailBillingDetails

Billing information for a mail service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | The last invoice date of the service. | [optional] 
**service_payment_status** | **str** | The payment status of the service. | [optional] 
**service_frequency** | **str** | The frequency of the service payment. | [optional] 
**next_date** | **str** | The next payment date of the service. | [optional] 
**service_next_invoice_date** | **str** | The next invoice date of the service. | [optional] 
**service_currency** | **str** | The currency of the service. | [optional] 
**service_currency_symbol** | **str** | The currency symbol of the service. | [optional] 
**service_cost_info** | **str** | The cost information of the service. | [optional] 
**service_extra** | **List[str]** | Extra information for the service. | [optional] 
**service_extra_json** | **str** | Extra JSON information for the service. | [optional] 

## Example

```python
from interserver_api_client.models.mail_billing_details import MailBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MailBillingDetails from a JSON string
mail_billing_details_instance = MailBillingDetails.from_json(json)
# print the JSON string representation of the object
print(MailBillingDetails.to_json())

# convert the object into a dict
mail_billing_details_dict = mail_billing_details_instance.to_dict()
# create an instance of MailBillingDetails from a dict
mail_billing_details_from_dict = MailBillingDetails.from_dict(mail_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


