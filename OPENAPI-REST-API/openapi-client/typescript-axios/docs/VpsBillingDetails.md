# VpsBillingDetails

Billing information for a VPS service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Last invoice date | [optional] [default to undefined]
**service_payment_status** | **string** | Payment status | [optional] [default to undefined]
**service_frequency** | **string** | Billing frequency | [optional] [default to undefined]
**next_date** | **string** | Next billing date | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Next invoice date | [optional] [default to undefined]
**service_currency** | **string** | Currency used for billing | [optional] [default to undefined]
**service_currency_symbol** | **string** | Currency symbol | [optional] [default to undefined]
**service_coupon** | **string** | Billing coupon code | [optional] [default to undefined]
**service_cost_info** | **string** | Cost information | [optional] [default to undefined]
**service_extra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | [optional] [default to undefined]
**service_extra_json** | **string** | Additional information in JSON format | [optional] [default to undefined]

## Example

```typescript
import { VpsBillingDetails } from '@interserver/myadmin-client';

const instance: VpsBillingDetails = {
    service_last_invoice_date,
    service_payment_status,
    service_frequency,
    next_date,
    service_next_invoice_date,
    service_currency,
    service_currency_symbol,
    service_coupon,
    service_cost_info,
    service_extra,
    service_extra_json,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
