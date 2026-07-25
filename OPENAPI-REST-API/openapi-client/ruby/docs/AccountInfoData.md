# InterServerClient::AccountInfoData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **disable_cc** | **String** |  | [optional] |
| **fraudrecord_score** | **String** |  | [optional] |
| **ima** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **payment_method** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **pin** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_lid** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **affiliate_dock_description** | **String** |  | [optional] |
| **affiliate_dock_title** | **String** |  | [optional] |
| **affiliate_payment_method** | **String** |  | [optional] |
| **affiliate_paypal** | **String** |  | [optional] |
| **cc** | **String** |  | [optional] |
| **cc_auto** | **String** |  | [optional] |
| **cc_exp** | **String** |  | [optional] |
| **cc_type** | **String** |  | [optional] |
| **cc_whitelist** | **String** |  | [optional] |
| **ccs** | [**AccountInfoDataCcs**](AccountInfoDataCcs.md) |  | [optional] |
| **ccs_added** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **disable_reinstall** | **String** |  | [optional] |
| **disable_reset** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **email_abuse** | **String** |  | [optional] |
| **email_settings** | [**AccountInfoDataEmailSettings**](AccountInfoDataEmailSettings.md) |  | [optional] |
| **extra** | [**AccountInfoDataExtra**](AccountInfoDataExtra.md) |  | [optional] |
| **facebook_id** | **String** |  | [optional] |
| **facebook_url** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **fraudrecord** | [**AccountInfoDataFraudrecord**](AccountInfoDataFraudrecord.md) |  | [optional] |
| **github_id** | **String** |  | [optional] |
| **github_url** | **String** |  | [optional] |
| **google_id** | **String** |  | [optional] |
| **google_url** | **String** |  | [optional] |
| **innertell_id** | **String** |  | [optional] |
| **lastname** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] |
| **maxmind_score** | **String** |  | [optional] |
| **mb_id** | **String** |  | [optional] |
| **modernbill_id** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **referrer_coupon** | **String** |  | [optional] |
| **reseller_markup** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **ssh_key** | **String** |  | [optional] |
| **ssh_key_wrapped** | **String** |  | [optional] |
| **api_key** | **String** |  | [optional] |
| **api_key_wrapped** | **String** |  | [optional] |
| **_2fa_google_key** | **String** |  | [optional] |
| **_2fa_google_enabled** | **Boolean** |  | [optional] |
| **_2fa_google** | **Integer** |  | [optional] |
| **_2fa_google_split** | **String** |  | [optional] |
| **_2fa_google_qr** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::AccountInfoData.new(
  group: null,
  address: null,
  city: null,
  country: null,
  disable_cc: null,
  fraudrecord_score: null,
  ima: null,
  name: null,
  payment_method: null,
  phone: null,
  pin: null,
  state: null,
  status: null,
  zip: null,
  account_id: null,
  account_lid: null,
  address2: null,
  affiliate_dock_description: null,
  affiliate_dock_title: null,
  affiliate_payment_method: null,
  affiliate_paypal: null,
  cc: null,
  cc_auto: null,
  cc_exp: null,
  cc_type: null,
  cc_whitelist: null,
  ccs: null,
  ccs_added: null,
  company: null,
  currency: null,
  disable_reinstall: null,
  disable_reset: null,
  email: null,
  email_abuse: null,
  email_settings: null,
  extra: null,
  facebook_id: null,
  facebook_url: null,
  firstname: null,
  fraudrecord: null,
  github_id: null,
  github_url: null,
  google_id: null,
  google_url: null,
  innertell_id: null,
  lastname: null,
  locale: null,
  maxmind: null,
  maxmind_score: null,
  mb_id: null,
  modernbill_id: null,
  picture: null,
  referrer_coupon: null,
  reseller_markup: null,
  username: null,
  ssh_key: null,
  ssh_key_wrapped: null,
  api_key: null,
  api_key_wrapped: null,
  _2fa_google_key: null,
  _2fa_google_enabled: null,
  _2fa_google: null,
  _2fa_google_split: null,
  _2fa_google_qr: null
)
```

