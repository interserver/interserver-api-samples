# DomainBillingDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | Option<**String**> | Date of the last invoice for the domain. | [optional]
**service_payment_status** | Option<**String**> | Current payment status (e.g., Paid, Unpaid). | [optional]
**service_frequency** | Option<**String**> | Billing frequency (e.g., Yearly, Monthly). | [optional]
**next_date** | Option<**String**> | Next billing date (ISO 8601). | [optional]
**service_next_invoice_date** | Option<**String**> | Human-readable next invoice date. | [optional]
**service_currency** | Option<**String**> | Billing currency code. | [optional]
**service_currency_symbol** | Option<**String**> | Billing currency symbol. | [optional]
**service_cost_info** | Option<**String**> | Cost breakdown information. | [optional]
**service_extra** | Option<[**models::DomainBillingExtra**](DomainBillingExtra.md)> |  | [optional]
**service_extra_json** | Option<**String**> | Raw JSON string of extra billing data. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


