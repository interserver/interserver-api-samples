# DomainNameserverPostRequest

Payload for adding a registered nameserver (glue record).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**ipAddress** | **string** |  | [default to undefined]

## Example

```typescript
import { DomainNameserverPostRequest } from '@interserver/myadmin-client';

const instance: DomainNameserverPostRequest = {
    name,
    ipAddress,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
