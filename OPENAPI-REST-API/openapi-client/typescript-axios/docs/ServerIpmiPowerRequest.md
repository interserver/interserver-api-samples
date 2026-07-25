# ServerIpmiPowerRequest

IPMI Power command for servers

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** | The power action to send to the ipmi controller. | [default to undefined]
**asset** | **number** | The Asset ID | [optional] [default to undefined]

## Example

```typescript
import { ServerIpmiPowerRequest } from '@interserver/myadmin-client';

const instance: ServerIpmiPowerRequest = {
    action,
    asset,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
