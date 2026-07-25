# ServerOrderRAID

A RAID configuration option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | RAID ID. | [optional] [default to undefined]
**price** | **number** | RAID price. | [optional] [default to undefined]
**img** | **string** | RAID image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the RAID. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the RAID. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**active** | **string** | Active status. | [optional] [default to undefined]
**price_display** | **string** | Display of RAID price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly RAID price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderRAID } from '@interserver/myadmin-client';

const instance: ServerOrderRAID = {
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
