# GetAccountTfaSetup200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_2fa_google_key** | **string** | Base64-encoded secret key for TOTP setup. | [optional] [default to undefined]
**_2fa_google_split** | **string** | Human-readable formatted key (chunks of 4 characters). | [optional] [default to undefined]

## Example

```typescript
import { GetAccountTfaSetup200Response } from '@interserver/myadmin-client';

const instance: GetAccountTfaSetup200Response = {
    _2fa_google_key,
    _2fa_google_split,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
