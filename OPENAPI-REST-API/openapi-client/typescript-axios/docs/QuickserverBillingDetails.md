# QuickserverBillingDetails

Billing information for a QuickServer service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Last invoice date | [optional] [default to undefined]
**service_payment_status** | **string** | Payment status | [optional] [default to undefined]
**service_frequency** | **string** | Service frequency | [optional] [default to undefined]
**next_date** | **string** | Next date | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Next invoice date | [optional] [default to undefined]
**service_currency** | **string** | Currency | [optional] [default to undefined]
**service_currency_symbol** | **string** | Currency symbol | [optional] [default to undefined]
**service_cost_info** | **string** | Cost information | [optional] [default to undefined]
**service_extra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | [optional] [default to undefined]
**service_extra_json** | **string** | Extra information (JSON format) | [optional] [default to undefined]

## Example

```typescript
import { QuickserverBillingDetails } from '@interserver/myadmin-client';

const instance: QuickserverBillingDetails = {
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
