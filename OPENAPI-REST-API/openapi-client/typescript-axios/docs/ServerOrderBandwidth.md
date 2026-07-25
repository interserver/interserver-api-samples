# ServerOrderBandwidth

A bandwidth option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Bandwidth ID. | [optional] [default to undefined]
**price** | **number** | Bandwidth price. | [optional] [default to undefined]
**img** | **string** | Bandwidth image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the bandwidth. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the bandwidth. | [optional] [default to undefined]
**type** | **string** | Bandwidth type. | [optional] [default to undefined]
**qty** | **string** | Quantity of bandwidth. | [optional] [default to undefined]
**active** | **string** | Active status. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**price_display** | **string** | Display of bandwidth price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly bandwidth price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderBandwidth } from '@interserver/myadmin-client';

const instance: ServerOrderBandwidth = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    type,
    qty,
    active,
    monthly_price,
    price_display,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
