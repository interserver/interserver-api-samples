# ServerOrderIP

An IP block option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | IP ID. | [optional] [default to undefined]
**price** | **number** | IP price. | [optional] [default to undefined]
**img** | **string** | IP image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the IP. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the IP. | [optional] [default to undefined]
**qty** | **string** | Quantity of IPs. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**price_display** | **string** | Display of IP price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly IP price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderIP } from '@interserver/myadmin-client';

const instance: ServerOrderIP = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    qty,
    monthly_price,
    price_display,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
