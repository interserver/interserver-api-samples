# LicenseBillingDetails

Billing information for a software license including payment status, billing cycle, and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Last invoice date | [optional] [default to undefined]
**service_payment_status** | **string** | Payment status | [optional] [default to undefined]
**service_frequency** | **string** | Service frequency | [optional] [default to undefined]
**next_date** | **string** | Next date | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Next invoice date | [optional] [default to undefined]
**service_currency** | **string** | Service currency | [optional] [default to undefined]
**service_currency_symbol** | **string** | Service currency symbol | [optional] [default to undefined]
**service_coupon** | **string** | Service coupon | [optional] [default to undefined]
**service_cost_info** | **string** | Service cost information | [optional] [default to undefined]
**service_extra** | **Array&lt;string&gt;** | Additional service information | [optional] [default to undefined]
**service_extra_json** | **string** | Additional service information in JSON format | [optional] [default to undefined]

## Example

```typescript
import { LicenseBillingDetails } from '@interserver/myadmin-client';

const instance: LicenseBillingDetails = {
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
