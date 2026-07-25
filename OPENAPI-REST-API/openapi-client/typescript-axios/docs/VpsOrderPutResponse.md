# VpsOrderPutResponse

Response from VPS order validation request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_continue** | **boolean** |  | [optional] [default to undefined]
**errors** | **Array&lt;any&gt;** |  | [optional] [default to undefined]
**coupon_code** | **number** |  | [optional] [default to undefined]
**service_cost** | **number** |  | [optional] [default to undefined]
**slice_cost** | **number** |  | [optional] [default to undefined]
**service_type** | **number** |  | [optional] [default to undefined]
**repeat_slice_cost** | **number** |  | [optional] [default to undefined]
**original_slice_cost** | **number** |  | [optional] [default to undefined]
**original_cost** | **number** |  | [optional] [default to undefined]
**repeat_service_cost** | **number** |  | [optional] [default to undefined]
**monthly_service_cost** | **number** |  | [optional] [default to undefined]
**custid** | **string** |  | [optional] [default to undefined]
**os** | **string** |  | [optional] [default to undefined]
**slices** | **string** |  | [optional] [default to undefined]
**platform** | **string** |  | [optional] [default to undefined]
**controlpanel** | **string** |  | [optional] [default to undefined]
**period** | **number** |  | [optional] [default to undefined]
**location** | **number** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**hostname** | **string** |  | [optional] [default to undefined]
**coupon** | **string** |  | [optional] [default to undefined]
**rootpass** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { VpsOrderPutResponse } from '@interserver/myadmin-client';

const instance: VpsOrderPutResponse = {
    _continue,
    errors,
    coupon_code,
    service_cost,
    slice_cost,
    service_type,
    repeat_slice_cost,
    original_slice_cost,
    original_cost,
    repeat_service_cost,
    monthly_service_cost,
    custid,
    os,
    slices,
    platform,
    controlpanel,
    period,
    location,
    version,
    hostname,
    coupon,
    rootpass,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
