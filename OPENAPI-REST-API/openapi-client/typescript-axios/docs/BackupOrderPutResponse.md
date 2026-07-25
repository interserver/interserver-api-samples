# BackupOrderPutResponse

Backup Order validation response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **boolean** |  | [optional] [default to undefined]
**errors** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**serviceType** | **number** |  | [optional] [default to undefined]
**serviceCost** | **string** |  | [optional] [default to undefined]
**originalCost** | **string** |  | [optional] [default to undefined]
**repeatServiceCost** | **string** |  | [optional] [default to undefined]
**hostname** | **string** |  | [optional] [default to undefined]
**password** | **string** |  | [optional] [default to undefined]
**coupon** | **string** |  | [optional] [default to undefined]
**couponCode** | **number** |  | [optional] [default to undefined]

## Example

```typescript
import { BackupOrderPutResponse } from '@interserver/myadmin-client';

const instance: BackupOrderPutResponse = {
    _continue,
    errors,
    serviceType,
    serviceCost,
    originalCost,
    repeatServiceCost,
    hostname,
    password,
    coupon,
    couponCode,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
