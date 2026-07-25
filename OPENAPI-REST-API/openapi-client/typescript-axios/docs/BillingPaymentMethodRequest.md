# BillingPaymentMethodRequest

Payload for updating the default account payment method.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **string** | Payment method identifier (cc, paypal, or cc{index}). | [optional] [default to undefined]
**cc_auto** | **string** | Whether automatic credit card payments are enabled. | [optional] [default to undefined]

## Example

```typescript
import { BillingPaymentMethodRequest } from '@interserver/myadmin-client';

const instance: BillingPaymentMethodRequest = {
    payment_method,
    cc_auto,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
