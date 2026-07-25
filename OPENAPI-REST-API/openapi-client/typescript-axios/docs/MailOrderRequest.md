# MailOrderRequest

Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **number** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | [default to undefined]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row (used on addMail). | [optional] [default to '']

## Example

```typescript
import { MailOrderRequest } from '@interserver/myadmin-client';

const instance: MailOrderRequest = {
    serviceType,
    coupon,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
