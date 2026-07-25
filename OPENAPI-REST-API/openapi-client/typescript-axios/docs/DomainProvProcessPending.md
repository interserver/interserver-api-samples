# DomainProvProcessPending

Provisioning status data for a pending domain order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_OPS_version** | **string** |  | [optional] [default to undefined]
**response_text** | **string** |  | [optional] [default to undefined]
**protocol** | **string** |  | [optional] [default to undefined]
**response_code** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**object** | **string** |  | [optional] [default to undefined]
**is_success** | **string** |  | [optional] [default to undefined]
**attributes** | [**DomainProvProcessPendingAttributes**](DomainProvProcessPendingAttributes.md) |  | [optional] [default to undefined]

## Example

```typescript
import { DomainProvProcessPending } from '@interserver/myadmin-client';

const instance: DomainProvProcessPending = {
    _OPS_version,
    response_text,
    protocol,
    response_code,
    action,
    object,
    is_success,
    attributes,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
