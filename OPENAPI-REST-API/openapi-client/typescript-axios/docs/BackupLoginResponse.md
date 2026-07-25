# BackupLoginResponse

Login session response for backup storage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Indicates whether a login session was created. | [optional] [default to undefined]
**text** | **string** | Login URL or error text returned by the storage provider. | [optional] [default to undefined]

## Example

```typescript
import { BackupLoginResponse } from '@interserver/myadmin-client';

const instance: BackupLoginResponse = {
    success,
    text,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
