# DomainBillingDetails

Billing information for a domain service including payment status, dates, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Date of the last invoice for the domain. | [optional] [default to undefined]
**service_payment_status** | **string** | Current payment status (e.g., Paid, Unpaid). | [optional] [default to undefined]
**service_frequency** | **string** | Billing frequency (e.g., Yearly, Monthly). | [optional] [default to undefined]
**next_date** | **string** | Next billing date (ISO 8601). | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Human-readable next invoice date. | [optional] [default to undefined]
**service_currency** | **string** | Billing currency code. | [optional] [default to undefined]
**service_currency_symbol** | **string** | Billing currency symbol. | [optional] [default to undefined]
**service_cost_info** | **string** | Cost breakdown information. | [optional] [default to undefined]
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] [default to undefined]
**service_extra_json** | **string** | Raw JSON string of extra billing data. | [optional] [default to undefined]

## Example

```typescript
import { DomainBillingDetails } from '@interserver/myadmin-client';

const instance: DomainBillingDetails = {
    service_last_invoice_date,
    service_payment_status,
    service_frequency,
    next_date,
    service_next_invoice_date,
    service_currency,
    service_currency_symbol,
    service_cost_info,
    service_extra,
    service_extra_json,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
