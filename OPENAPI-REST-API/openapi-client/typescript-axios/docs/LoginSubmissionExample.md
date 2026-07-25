# LoginSubmissionExample

The data to submit in the login request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **string** |  | [default to undefined]
**passwd** | **string** |  | [default to undefined]
**remember** | **string** |  | [optional] [default to undefined]
**g_recaptcha_response** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md) |  | [optional] [default to undefined]
**tfa** | **string** | Two Factor Authentication Response. | [optional] [default to undefined]

## Example

```typescript
import { LoginSubmissionExample } from '@interserver/myadmin-client';

const instance: LoginSubmissionExample = {
    login,
    passwd,
    remember,
    g_recaptcha_response,
    tfa,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
