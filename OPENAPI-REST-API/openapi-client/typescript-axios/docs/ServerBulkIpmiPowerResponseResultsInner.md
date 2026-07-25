# ServerBulkIpmiPowerResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** | Server ID this result corresponds to. | [optional] [default to undefined]
**asset** | **number** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] [default to undefined]
**text** | **string** | IPMI power-status output for this server. | [optional] [default to undefined]
**error** | **string** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] [default to undefined]

## Example

```typescript
import { ServerBulkIpmiPowerResponseResultsInner } from '@interserver/myadmin-client';

const instance: ServerBulkIpmiPowerResponseResultsInner = {
    id,
    asset,
    text,
    error,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
