# LoginInfo

Basic information useful for rendering a login page.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captcha** | **string** | A base64 encoded image to use for rendering the alternateive captcha. | [default to undefined]
**counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  | [default to undefined]
**logo** | **string** | A logo image url. | [optional] [default to undefined]
**language** | **string** | The desired langauge to render the site with. | [optional] [default to undefined]

## Example

```typescript
import { LoginInfo } from '@interserver/myadmin-client';

const instance: LoginInfo = {
    captcha,
    counts,
    logo,
    language,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
