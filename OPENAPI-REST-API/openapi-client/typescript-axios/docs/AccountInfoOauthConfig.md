# AccountInfoOauthConfig

OAuth integration configuration including callback URL and available providers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback** | **string** |  | [default to undefined]
**providers** | [**AccountInfoOauthConfigProviders**](AccountInfoOauthConfigProviders.md) |  | [default to undefined]

## Example

```typescript
import { AccountInfoOauthConfig } from '@interserver/myadmin-client';

const instance: AccountInfoOauthConfig = {
    callback,
    providers,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
