# VpsOrderPutRequest

request to validate a vps order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**osDistro** | **string** | OS Distribution | [default to undefined]
**slices** | **number** | Number of slices | [default to 1]
**vpsPlatform** | **string** | VPS Platform | [default to undefined]
**period** | **number** | Billing Period or Frequency | [default to 1]
**location** | **number** | Location | [default to 1]
**osVersion** | **string** | OS Version | [default to undefined]
**hostname** | **string** | The hostname to assign to the VPS | [default to '']
**rootpass** | **string** | Root password to assign to the VVPS | [default to undefined]
**controlpanel** | **string** | Control Panel | [optional] [default to undefined]
**coupon** | **string** | Coupon | [optional] [default to '']
**comment** | **string** | Order comments or notes | [optional] [default to '']

## Example

```typescript
import { VpsOrderPutRequest } from '@interserver/myadmin-client';

const instance: VpsOrderPutRequest = {
    osDistro,
    slices,
    vpsPlatform,
    period,
    location,
    osVersion,
    hostname,
    rootpass,
    controlpanel,
    coupon,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
