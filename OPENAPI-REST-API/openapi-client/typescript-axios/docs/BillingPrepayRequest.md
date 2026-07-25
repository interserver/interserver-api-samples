# BillingPrepayRequest

Request payload for creating a new prepay balance.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**module** | **string** | Module the prepay should be applied to (for example &#x60;default&#x60;). | [optional] [default to undefined]
**amount** | **number** | Amount to add to prepay balance. Minimum is $10. | [optional] [default to undefined]
**automatic_use** | **string** | Whether the prepay balance should be used automatically. | [optional] [default to undefined]

## Example

```typescript
import { BillingPrepayRequest } from '@interserver/myadmin-client';

const instance: BillingPrepayRequest = {
    module,
    amount,
    automatic_use,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
