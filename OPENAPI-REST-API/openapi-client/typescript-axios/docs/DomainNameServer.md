# DomainNameServer

A single registered nameserver entry with glue IPs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sortorder** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**ipaddress** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainNameServer } from '@interserver/myadmin-client';

const instance: DomainNameServer = {
    sortorder,
    name,
    ipaddress,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
