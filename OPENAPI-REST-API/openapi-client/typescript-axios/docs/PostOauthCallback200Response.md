# PostOauthCallback200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **boolean** | Whether the user was logged in to an existing account. | [optional] [default to undefined]
**signup** | **boolean** | Whether a new account was created. | [optional] [default to undefined]
**linked** | **boolean** | Whether the OAuth provider was linked to an existing account. | [optional] [default to undefined]
**account_id** | **number** | The account ID associated with the OAuth login. | [optional] [default to undefined]
**error_code** | **string** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] [default to undefined]

## Example

```typescript
import { PostOauthCallback200Response } from '@interserver/myadmin-client';

const instance: PostOauthCallback200Response = {
    login,
    signup,
    linked,
    account_id,
    error_code,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
