# InterServerAPI::Object::DomainBillingDetails

## Load the model package
```perl
use InterServerAPI::Object::DomainBillingDetails;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Date of the last invoice for the domain. | [optional] 
**service_payment_status** | **string** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**service_frequency** | **string** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**next_date** | **string** | Next billing date (ISO 8601). | [optional] 
**service_next_invoice_date** | **string** | Human-readable next invoice date. | [optional] 
**service_currency** | **string** | Billing currency code. | [optional] 
**service_currency_symbol** | **string** | Billing currency symbol. | [optional] 
**service_cost_info** | **string** | Cost breakdown information. | [optional] 
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**service_extra_json** | **string** | Raw JSON string of extra billing data. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


