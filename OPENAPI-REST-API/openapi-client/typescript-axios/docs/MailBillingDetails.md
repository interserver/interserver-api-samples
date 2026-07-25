# MailBillingDetails

Billing information for a mail service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | The last invoice date of the service. | [optional] [default to undefined]
**service_payment_status** | **string** | The payment status of the service. | [optional] [default to undefined]
**service_frequency** | **string** | The frequency of the service payment. | [optional] [default to undefined]
**next_date** | **string** | The next payment date of the service. | [optional] [default to undefined]
**service_next_invoice_date** | **string** | The next invoice date of the service. | [optional] [default to undefined]
**service_currency** | **string** | The currency of the service. | [optional] [default to undefined]
**service_currency_symbol** | **string** | The currency symbol of the service. | [optional] [default to undefined]
**service_cost_info** | **string** | The cost information of the service. | [optional] [default to undefined]
**service_extra** | **Array&lt;string&gt;** | Extra information for the service. | [optional] [default to undefined]
**service_extra_json** | **string** | Extra JSON information for the service. | [optional] [default to undefined]

## Example

```typescript
import { MailBillingDetails } from '@interserver/myadmin-client';

const instance: MailBillingDetails = {
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
