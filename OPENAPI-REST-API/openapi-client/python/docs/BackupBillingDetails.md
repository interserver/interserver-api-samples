# BackupBillingDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **str** | Last invoice date of the service. | [optional] 
**service_payment_status** | **str** | Payment status of the service. | [optional] 
**service_frequency** | **str** | Billing frequency of the service. | [optional] 
**next_date** | **str** | Next billing date of the service. | [optional] 
**service_next_invoice_date** | **str** | Next invoice date of the service. | [optional] 
**service_currency** | **str** | Currency of the service. | [optional] 
**service_currency_symbol** | **str** | Currency symbol of the service. | [optional] 
**service_cost_info** | **str** | Cost information of the service. | [optional] 
**service_extra** | **str** | Service Extra Info | [optional] 
**service_extra_json** | **str** | JSON representation of extra service information. | [optional] 

## Example

```python
from interserver_api_client.models.backup_billing_details import BackupBillingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of BackupBillingDetails from a JSON string
backup_billing_details_instance = BackupBillingDetails.from_json(json)
# print the JSON string representation of the object
print(BackupBillingDetails.to_json())

# convert the object into a dict
backup_billing_details_dict = backup_billing_details_instance.to_dict()
# create an instance of BackupBillingDetails from a dict
backup_billing_details_from_dict = BackupBillingDetails.from_dict(backup_billing_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


