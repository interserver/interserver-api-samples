# ServerOrderOS

An operating system option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Operating System ID. | [optional] [default to undefined]
**price** | **number** | Operating System price. | [optional] [default to undefined]
**img** | **string** | Operating System image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the OS. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the OS. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**active** | **string** | Active status. | [optional] [default to undefined]
**price_display** | **string** | Display of OS price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly OS price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderOS } from '@interserver/myadmin-client';

const instance: ServerOrderOS = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    monthly_price,
    active,
    price_display,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
