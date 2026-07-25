# QsOrderRequest

Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **number** | QuickServer plan/server id from getNewQs. | [default to undefined]
**password** | **string** | Root password for the QuickServer. | [default to undefined]
**tos** | **boolean** | Terms-of-service acceptance. Must be true to place the order. | [default to undefined]
**os** | **string** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to '']

## Example

```typescript
import { QsOrderRequest } from '@interserver/myadmin-client';

const instance: QsOrderRequest = {
    server,
    password,
    tos,
    os,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
