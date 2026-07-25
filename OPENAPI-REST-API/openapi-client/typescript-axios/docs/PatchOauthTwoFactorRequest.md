# PatchOauthTwoFactorRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **number** | The account ID returned from the POST callback. | [default to undefined]
**code** | **string** | The 6-digit two-factor authentication code. | [default to undefined]

## Example

```typescript
import { PatchOauthTwoFactorRequest } from '@interserver/myadmin-client';

const instance: PatchOauthTwoFactorRequest = {
    account_id,
    code,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
