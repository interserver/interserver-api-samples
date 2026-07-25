# DnsNewDomain

The request for a new domain to be managed by the dns servers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **string** | The domain name. | [default to undefined]
**ip** | **string** | IP Address to point the domain to. | [default to undefined]

## Example

```typescript
import { DnsNewDomain } from '@interserver/myadmin-client';

const instance: DnsNewDomain = {
    domain,
    ip,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
