# InterServerClient::AccountInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custid** | **String** |  | [optional] |
| **ima** | **String** |  | [optional] |
| **data** | [**AccountInfoData**](AccountInfoData.md) |  | [optional] |
| **ip** | **String** |  | [optional] |
| **oauthproviders** | [**AccountInfoOauthproviders**](AccountInfoOauthproviders.md) |  | [optional] |
| **oauthconfig** | [**AccountInfoOauthConfig**](AccountInfoOauthConfig.md) |  | [optional] |
| **oauthadapters** | **Array&lt;String&gt;** |  | [optional] |
| **limits** | [**AccountInfoLimits**](AccountInfoLimits.md) |  | [optional] |
| **language** | **String** |  | [optional] |
| **country_currencies** | [**AccountInfoCountryCurrencies**](AccountInfoCountryCurrencies.md) |  | [optional] |
| **enable_locales** | **Boolean** |  | [optional] |
| **enable_currencies** | **Boolean** |  | [optional] |
| **gravatar** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::AccountInfo.new(
  custid: null,
  ima: null,
  data: null,
  ip: null,
  oauthproviders: null,
  oauthconfig: null,
  oauthadapters: null,
  limits: null,
  language: null,
  country_currencies: null,
  enable_locales: null,
  enable_currencies: null,
  gravatar: null
)
```

