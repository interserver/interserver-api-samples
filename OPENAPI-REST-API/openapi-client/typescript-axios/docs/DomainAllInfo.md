# DomainAllInfo

Complete domain registration information returned from the registrar, including contacts, nameservers, and expiry dates.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_OPS_version** | **string** |  | [optional] [default to undefined]
**attributes** | [**DomainAllInfoAttributes**](DomainAllInfoAttributes.md) |  | [optional] [default to undefined]
**object** | **string** |  | [optional] [default to undefined]
**protocol** | **string** |  | [optional] [default to undefined]
**response_text** | **string** |  | [optional] [default to undefined]
**response_code** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**is_success** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainAllInfo } from '@interserver/myadmin-client';

const instance: DomainAllInfo = {
    _OPS_version,
    attributes,
    object,
    protocol,
    response_text,
    response_code,
    action,
    is_success,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
