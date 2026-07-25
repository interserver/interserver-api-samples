# DomainBillingDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`service_last_invoice_date`** | **`String`** | Date of the last invoice for the domain. | [optional] [default to nothing]
**`service_payment_status`** | **`String`** | Current payment status (e.g., Paid, Unpaid). | [optional] [default to nothing]
**`service_frequency`** | **`String`** | Billing frequency (e.g., Yearly, Monthly). | [optional] [default to nothing]
**`next_date`** | **`String`** | Next billing date (ISO 8601). | [optional] [default to nothing]
**`service_next_invoice_date`** | **`String`** | Human-readable next invoice date. | [optional] [default to nothing]
**`service_currency`** | **`String`** | Billing currency code. | [optional] [default to nothing]
**`service_currency_symbol`** | **`String`** | Billing currency symbol. | [optional] [default to nothing]
**`service_cost_info`** | **`String`** | Cost breakdown information. | [optional] [default to nothing]
**`service_extra`** | [**`*DomainBillingExtra`**](DomainBillingExtra.md) |  | [optional] [default to nothing]
**`service_extra_json`** | **`String`** | Raw JSON string of extra billing data. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


