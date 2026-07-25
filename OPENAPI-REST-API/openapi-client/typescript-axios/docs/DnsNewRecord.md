# DnsNewRecord

Request data for a new DNS record.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name part of record | [default to undefined]
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [default to undefined]
**content** | **string** | Content of record | [default to undefined]
**ttl** | **number** | Time-to-live | [optional] [default to 86400]
**prio** | **number** | Priority | [optional] [default to 0]

## Example

```typescript
import { DnsNewRecord } from '@interserver/myadmin-client';

const instance: DnsNewRecord = {
    name,
    type,
    content,
    ttl,
    prio,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
