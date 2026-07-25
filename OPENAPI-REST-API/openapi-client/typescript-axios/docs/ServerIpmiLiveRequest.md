# ServerIpmiLiveRequest

Request body to setup an IPMI Live connection.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip** | **string** | Your IP Address you wish to connect to the IPMI system from. | [default to undefined]
**asset** | **number** | Asset ID | [optional] [default to undefined]

## Example

```typescript
import { ServerIpmiLiveRequest } from '@interserver/myadmin-client';

const instance: ServerIpmiLiveRequest = {
    ip,
    asset,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
