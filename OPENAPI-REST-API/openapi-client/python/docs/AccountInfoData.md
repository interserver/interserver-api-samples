# AccountInfoData

Detailed account profile data including contact info, billing, API keys, and security settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**disable_cc** | **str** |  | [optional] 
**fraudrecord_score** | **str** |  | [optional] 
**ima** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**payment_method** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**pin** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**zip** | **str** |  | [optional] 
**account_id** | **str** |  | [optional] 
**account_lid** | **str** |  | [optional] 
**address2** | **str** |  | [optional] 
**affiliate_dock_description** | **str** |  | [optional] 
**affiliate_dock_title** | **str** |  | [optional] 
**affiliate_payment_method** | **str** |  | [optional] 
**affiliate_paypal** | **str** |  | [optional] 
**cc** | **str** |  | [optional] 
**cc_auto** | **str** |  | [optional] 
**cc_exp** | **str** |  | [optional] 
**cc_type** | **str** |  | [optional] 
**cc_whitelist** | **str** |  | [optional] 
**ccs** | [**AccountInfoDataCcs**](AccountInfoDataCcs.md) |  | [optional] 
**ccs_added** | **str** |  | [optional] 
**company** | **str** |  | [optional] 
**currency** | **str** |  | [optional] 
**disable_reinstall** | **str** |  | [optional] 
**disable_reset** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**email_abuse** | **str** |  | [optional] 
**email_settings** | [**AccountInfoDataEmailSettings**](AccountInfoDataEmailSettings.md) |  | [optional] 
**extra** | [**AccountInfoDataExtra**](AccountInfoDataExtra.md) |  | [optional] 
**facebook_id** | **str** |  | [optional] 
**facebook_url** | **str** |  | [optional] 
**firstname** | **str** |  | [optional] 
**fraudrecord** | [**AccountInfoDataFraudrecord**](AccountInfoDataFraudrecord.md) |  | [optional] 
**github_id** | **str** |  | [optional] 
**github_url** | **str** |  | [optional] 
**google_id** | **str** |  | [optional] 
**google_url** | **str** |  | [optional] 
**innertell_id** | **str** |  | [optional] 
**lastname** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 
**maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] 
**maxmind_score** | **str** |  | [optional] 
**mb_id** | **str** |  | [optional] 
**modernbill_id** | **str** |  | [optional] 
**picture** | **str** |  | [optional] 
**referrer_coupon** | **str** |  | [optional] 
**reseller_markup** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**ssh_key** | **str** |  | [optional] 
**ssh_key_wrapped** | **str** |  | [optional] 
**api_key** | **str** |  | [optional] 
**api_key_wrapped** | **str** |  | [optional] 
**var_2fa_google_key** | **str** |  | [optional] 
**var_2fa_google_enabled** | **bool** |  | [optional] 
**var_2fa_google** | **int** |  | [optional] 
**var_2fa_google_split** | **str** |  | [optional] 
**var_2fa_google_qr** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_data import AccountInfoData

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoData from a JSON string
account_info_data_instance = AccountInfoData.from_json(json)
# print the JSON string representation of the object
print(AccountInfoData.to_json())

# convert the object into a dict
account_info_data_dict = account_info_data_instance.to_dict()
# create an instance of AccountInfoData from a dict
account_info_data_from_dict = AccountInfoData.from_dict(account_info_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


