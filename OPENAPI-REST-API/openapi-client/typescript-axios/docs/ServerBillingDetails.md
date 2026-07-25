# ServerBillingDetails

Billing information for a dedicated server service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** |  | [optional] [default to undefined]
**service_payment_status** | **string** |  | [optional] [default to undefined]
**service_frequency** | **string** |  | [optional] [default to undefined]
**next_date** | **string** |  | [optional] [default to undefined]
**service_next_invoice_date** | **string** |  | [optional] [default to undefined]
**service_currency** | **string** |  | [optional] [default to undefined]
**service_currency_symbol** | **string** |  | [optional] [default to undefined]
**service_cost_info** | **string** |  | [optional] [default to undefined]
**service_extra** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**service_extra_json** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { ServerBillingDetails } from '@interserver/myadmin-client';

const instance: ServerBillingDetails = {
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
