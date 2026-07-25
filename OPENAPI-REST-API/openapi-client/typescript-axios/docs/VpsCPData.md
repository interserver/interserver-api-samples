# VpsCPData

Control panel license options available for a VPS.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Control panel name (e.g., cPanel). | [optional] [default to undefined]
**cost** | **number** | Monthly cost in cents for the control panel license. | [optional] [default to undefined]

## Example

```typescript
import { VpsCPData } from '@interserver/myadmin-client';

const instance: VpsCPData = {
    name,
    cost,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
