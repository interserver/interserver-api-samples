# ServerOrderMemory

A memory (RAM) option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Memory ID. | [optional] [default to undefined]
**price** | **string** | Memory price. | [optional] [default to undefined]
**img** | **string** | Memory image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the memory. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the memory. | [optional] [default to undefined]
**manu** | **string** | Manufacturer information. | [optional] [default to undefined]
**size** | **string** | Memory size. | [optional] [default to undefined]
**type** | **string** | Memory type. | [optional] [default to undefined]
**hidden** | **string** | Hidden status. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**drive_type** | **string** | Drive type. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly memory price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderMemory } from '@interserver/myadmin-client';

const instance: ServerOrderMemory = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    manu,
    size,
    type,
    hidden,
    monthly_price,
    drive_type,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
