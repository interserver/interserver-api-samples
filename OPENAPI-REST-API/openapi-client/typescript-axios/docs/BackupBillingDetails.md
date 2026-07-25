# BackupBillingDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_last_invoice_date** | **string** | Last invoice date of the service. | [optional] [default to undefined]
**service_payment_status** | **string** | Payment status of the service. | [optional] [default to undefined]
**service_frequency** | **string** | Billing frequency of the service. | [optional] [default to undefined]
**next_date** | **string** | Next billing date of the service. | [optional] [default to undefined]
**service_next_invoice_date** | **string** | Next invoice date of the service. | [optional] [default to undefined]
**service_currency** | **string** | Currency of the service. | [optional] [default to undefined]
**service_currency_symbol** | **string** | Currency symbol of the service. | [optional] [default to undefined]
**service_cost_info** | **string** | Cost information of the service. | [optional] [default to undefined]
**service_extra** | **string** | Service Extra Info | [optional] [default to undefined]
**service_extra_json** | **string** | JSON representation of extra service information. | [optional] [default to undefined]

## Example

```typescript
import { BackupBillingDetails } from '@interserver/myadmin-client';

const instance: BackupBillingDetails = {
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
