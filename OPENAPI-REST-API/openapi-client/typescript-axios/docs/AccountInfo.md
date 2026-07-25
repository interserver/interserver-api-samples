# AccountInfo

Contains the full account profile including personal info, billing details, OAuth connections, and security settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custid** | **string** |  | [optional] [default to undefined]
**ima** | **string** |  | [optional] [default to undefined]
**data** | [**AccountInfoData**](AccountInfoData.md) |  | [optional] [default to undefined]
**ip** | **string** |  | [optional] [default to undefined]
**oauthproviders** | [**AccountInfoOauthproviders**](AccountInfoOauthproviders.md) |  | [optional] [default to undefined]
**oauthconfig** | [**AccountInfoOauthConfig**](AccountInfoOauthConfig.md) |  | [optional] [default to undefined]
**oauthadapters** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**limits** | [**AccountInfoLimits**](AccountInfoLimits.md) |  | [optional] [default to undefined]
**language** | **string** |  | [optional] [default to undefined]
**countryCurrencies** | [**AccountInfoCountryCurrencies**](AccountInfoCountryCurrencies.md) |  | [optional] [default to undefined]
**enableLocales** | **boolean** |  | [optional] [default to undefined]
**enableCurrencies** | **boolean** |  | [optional] [default to undefined]
**gravatar** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AccountInfo } from '@interserver/myadmin-client';

const instance: AccountInfo = {
    custid,
    ima,
    data,
    ip,
    oauthproviders,
    oauthconfig,
    oauthadapters,
    limits,
    language,
    countryCurrencies,
    enableLocales,
    enableCurrencies,
    gravatar,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
