# interserverapi::DomainBillingDetails

Billing information for a domain service including payment status, dates, and cost.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **character** | Date of the last invoice for the domain. | [optional] 
**service_payment_status** | **character** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**service_frequency** | **character** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**next_date** | **character** | Next billing date (ISO 8601). | [optional] 
**service_next_invoice_date** | **character** | Human-readable next invoice date. | [optional] 
**service_currency** | **character** | Billing currency code. | [optional] 
**service_currency_symbol** | **character** | Billing currency symbol. | [optional] 
**service_cost_info** | **character** | Cost breakdown information. | [optional] 
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**service_extra_json** | **character** | Raw JSON string of extra billing data. | [optional] 


