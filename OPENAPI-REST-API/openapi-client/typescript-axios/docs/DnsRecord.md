# DnsRecord

A single DNS Record row for a Domain

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The ID of the DNS Record. | [default to undefined]
**domain_id** | **string** | The ID of the Domain this is a record of. | [default to undefined]
**name** | **string** |  | [default to undefined]
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [default to undefined]
**content** | **string** | The content of the record, such as the IP address or hsotname. | [default to undefined]
**ttl** | **string** | Time To Live (seconds) | [default to undefined]
**prio** | **string** | Priority | [default to undefined]
**disabled** | **string** |  | [default to undefined]
**ordername** | **string** | Alternate name to use for sorting | [default to undefined]
**auth** | **string** |  | [default to undefined]

## Example

```typescript
import { DnsRecord } from '@interserver/myadmin-client';

const instance: DnsRecord = {
    id,
    domain_id,
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
