# ServerOrderControlPanel

A control panel option available when ordering a dedicated server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Control Panel ID. | [optional] [default to undefined]
**price** | **number** | Control Panel price. | [optional] [default to undefined]
**img** | **string** | Control Panel image. | [optional] [default to undefined]
**short_desc** | **string** | Short description of the control panel. | [optional] [default to undefined]
**long_desc** | **string** | Long description of the control panel. | [optional] [default to undefined]
**os_type** | **string** | OS types compatible with the control panel. | [optional] [default to undefined]
**monthly_price** | **number** | Monthly price. | [optional] [default to undefined]
**types** | **Array&lt;string&gt;** | List of types. | [optional] [default to undefined]
**price_display** | **string** | Display of control panel price. | [optional] [default to undefined]
**monthly_price_display** | **string** | Display of monthly control panel price. | [optional] [default to undefined]

## Example

```typescript
import { ServerOrderControlPanel } from '@interserver/myadmin-client';

const instance: ServerOrderControlPanel = {
    id,
    price,
    img,
    short_desc,
    long_desc,
    os_type,
    monthly_price,
    types,
    price_display,
    monthly_price_display,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
