# FloatingIpOrderRequest

Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceType** | **number** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | [default to undefined]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row (used on addFloatingIp). | [optional] [default to '']

## Example

```typescript
import { FloatingIpOrderRequest } from '@interserver/myadmin-client';

const instance: FloatingIpOrderRequest = {
    serviceType,
    coupon,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
