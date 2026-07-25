# AccountInfoData

Detailed account profile data including contact info, billing, API keys, and security settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group** | **string** |  | [optional] [default to undefined]
**address** | **string** |  | [optional] [default to undefined]
**city** | **string** |  | [optional] [default to undefined]
**country** | **string** |  | [optional] [default to undefined]
**disable_cc** | **string** |  | [optional] [default to undefined]
**fraudrecord_score** | **string** |  | [optional] [default to undefined]
**ima** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**payment_method** | **string** |  | [optional] [default to undefined]
**phone** | **string** |  | [optional] [default to undefined]
**pin** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**zip** | **string** |  | [optional] [default to undefined]
**account_id** | **string** |  | [optional] [default to undefined]
**account_lid** | **string** |  | [optional] [default to undefined]
**address2** | **string** |  | [optional] [default to undefined]
**affiliate_dock_description** | **string** |  | [optional] [default to undefined]
**affiliate_dock_title** | **string** |  | [optional] [default to undefined]
**affiliate_payment_method** | **string** |  | [optional] [default to undefined]
**affiliate_paypal** | **string** |  | [optional] [default to undefined]
**cc** | **string** |  | [optional] [default to undefined]
**cc_auto** | **string** |  | [optional] [default to undefined]
**cc_exp** | **string** |  | [optional] [default to undefined]
**cc_type** | **string** |  | [optional] [default to undefined]
**cc_whitelist** | **string** |  | [optional] [default to undefined]
**ccs** | [**AccountInfoDataCcs**](AccountInfoDataCcs.md) |  | [optional] [default to undefined]
**ccs_added** | **string** |  | [optional] [default to undefined]
**company** | **string** |  | [optional] [default to undefined]
**currency** | **string** |  | [optional] [default to undefined]
**disable_reinstall** | **string** |  | [optional] [default to undefined]
**disable_reset** | **string** |  | [optional] [default to undefined]
**email** | **string** |  | [optional] [default to undefined]
**email_abuse** | **string** |  | [optional] [default to undefined]
**email_settings** | [**AccountInfoDataEmailSettings**](AccountInfoDataEmailSettings.md) |  | [optional] [default to undefined]
**extra** | [**AccountInfoDataExtra**](AccountInfoDataExtra.md) |  | [optional] [default to undefined]
**facebook_id** | **string** |  | [optional] [default to undefined]
**facebook_url** | **string** |  | [optional] [default to undefined]
**firstname** | **string** |  | [optional] [default to undefined]
**fraudrecord** | [**AccountInfoDataFraudrecord**](AccountInfoDataFraudrecord.md) |  | [optional] [default to undefined]
**github_id** | **string** |  | [optional] [default to undefined]
**github_url** | **string** |  | [optional] [default to undefined]
**google_id** | **string** |  | [optional] [default to undefined]
**google_url** | **string** |  | [optional] [default to undefined]
**innertell_id** | **string** |  | [optional] [default to undefined]
**lastname** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]
**maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] [default to undefined]
**maxmind_score** | **string** |  | [optional] [default to undefined]
**mb_id** | **string** |  | [optional] [default to undefined]
**modernbill_id** | **string** |  | [optional] [default to undefined]
**picture** | **string** |  | [optional] [default to undefined]
**referrer_coupon** | **string** |  | [optional] [default to undefined]
**reseller_markup** | **string** |  | [optional] [default to undefined]
**username** | **string** |  | [optional] [default to undefined]
**ssh_key** | **string** |  | [optional] [default to undefined]
**ssh_key_wrapped** | **string** |  | [optional] [default to undefined]
**api_key** | **string** |  | [optional] [default to undefined]
**api_key_wrapped** | **string** |  | [optional] [default to undefined]
**_2fa_google_key** | **string** |  | [optional] [default to undefined]
**_2fa_google_enabled** | **boolean** |  | [optional] [default to undefined]
**_2fa_google** | **number** |  | [optional] [default to undefined]
**_2fa_google_split** | **string** |  | [optional] [default to undefined]
**_2fa_google_qr** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AccountInfoData } from '@interserver/myadmin-client';

const instance: AccountInfoData = {
    group,
    address,
    city,
    country,
    disable_cc,
    fraudrecord_score,
    ima,
    name,
    payment_method,
    phone,
    pin,
    state,
    status,
    zip,
    account_id,
    account_lid,
    address2,
    affiliate_dock_description,
    affiliate_dock_title,
    affiliate_payment_method,
    affiliate_paypal,
    cc,
    cc_auto,
    cc_exp,
    cc_type,
    cc_whitelist,
    ccs,
    ccs_added,
    company,
    currency,
    disable_reinstall,
    disable_reset,
    email,
    email_abuse,
    email_settings,
    extra,
    facebook_id,
    facebook_url,
    firstname,
    fraudrecord,
    github_id,
    github_url,
    google_id,
    google_url,
    innertell_id,
    lastname,
    locale,
    maxmind,
    maxmind_score,
    mb_id,
    modernbill_id,
    picture,
    referrer_coupon,
    reseller_markup,
    username,
    ssh_key,
    ssh_key_wrapped,
    api_key,
    api_key_wrapped,
    _2fa_google_key,
    _2fa_google_enabled,
    _2fa_google,
    _2fa_google_split,
    _2fa_google_qr,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
