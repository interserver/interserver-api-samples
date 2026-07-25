# WebsiteBillingDetails

Billing information for a webhosting service including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Last invoice date for the service | [optional] [default to undefined]
**service_payment_status** | **string** | Payment status for the service | [optional] [default to undefined]
**service_frequency** | **string** | Frequency of the service | [optional] [default to undefined]
**next_date** | **string** | Next date for the service | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Next invoice date for the service | [optional] [default to undefined]
**service_currency** | **string** | Currency for the service | [optional] [default to undefined]
**service_currency_symbol** | **string** | Currency symbol for the service | [optional] [default to undefined]
**service_coupon** | **string** | Coupon for the service | [optional] [default to undefined]
**service_cost_info** | **string** | Cost information for the service | [optional] [default to undefined]
**service_extra** | **object** | Extra information for the service | [optional] [default to undefined]
**service_extra_json** | **string** | Extra information in JSON format for the service | [optional] [default to undefined]

## Example

```typescript
import { WebsiteBillingDetails } from '@interserver/myadmin-client';

const instance: WebsiteBillingDetails = {
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
