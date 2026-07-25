# DnsUpdateRecord

The request data to update a dns record.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [optional] [default to undefined]
**content** | **string** |  | [optional] [default to undefined]
**ttl** | **string** |  | [optional] [default to undefined]
**prio** | **string** |  | [optional] [default to undefined]
**disabled** | **string** |  | [optional] [default to undefined]
**ordername** | **string** |  | [optional] [default to undefined]
**auth** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DnsUpdateRecord } from '@interserver/myadmin-client';

const instance: DnsUpdateRecord = {
    name,
    type,
    content,
    ttl,
    prio,
    disabled,
    ordername,
    auth,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
