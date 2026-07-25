# DomainOrderResponse

Registrar response metadata returned after a domain order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_OPS_version** | **string** |  | [optional] [default to undefined]
**protocol** | **string** |  | [optional] [default to undefined]
**is_success** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**attributes** | [**DomainOrderResponseAttributes**](DomainOrderResponseAttributes.md) |  | [optional] [default to undefined]
**response_text** | **string** |  | [optional] [default to undefined]
**object** | **string** |  | [optional] [default to undefined]
**response_code** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainOrderResponse } from '@interserver/myadmin-client';

const instance: DomainOrderResponse = {
    _OPS_version,
    protocol,
    is_success,
    action,
    attributes,
    response_text,
    object,
    response_code,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
