# DomainDnssecRequest

Request payload for adding DNSSEC DS records to a domain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **Array&lt;number&gt;** | List of DNSSEC algorithm IDs for each record. | [optional] [default to undefined]
**digest_type** | **Array&lt;number&gt;** | List of digest type IDs for each record. | [optional] [default to undefined]
**digest** | **Array&lt;string&gt;** | List of hex digests for each record. | [optional] [default to undefined]
**key_tag** | **Array&lt;number&gt;** | List of key tag values corresponding to each record. | [optional] [default to undefined]

## Example

```typescript
import { DomainDnssecRequest } from '@interserver/myadmin-client';

const instance: DomainDnssecRequest = {
    algorithm,
    digest_type,
    digest,
    key_tag,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
