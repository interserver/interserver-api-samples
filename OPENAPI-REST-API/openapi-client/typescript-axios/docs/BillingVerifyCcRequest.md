# BillingVerifyCcRequest

Payload for verifying a credit card through the verification flow.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idx** | **number** | Card index to verify. | [optional] [default to undefined]
**cc_ccv2** | **string** | CVV code for verification. | [optional] [default to undefined]
**cc_amount1** | **string** | First micro-charge amount for verification. | [optional] [default to undefined]
**cc_amount2** | **string** | Second micro-charge amount for verification. | [optional] [default to undefined]
**terms** | **boolean** | Whether terms were accepted for verification. | [optional] [default to undefined]

## Example

```typescript
import { BillingVerifyCcRequest } from '@interserver/myadmin-client';

const instance: BillingVerifyCcRequest = {
    idx,
    cc_ccv2,
    cc_amount1,
    cc_amount2,
    terms,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
