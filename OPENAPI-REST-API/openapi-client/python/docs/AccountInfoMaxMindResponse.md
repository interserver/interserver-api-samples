# AccountInfoMaxMindResponse

MaxMind fraud detection scoring data for a credit card transaction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**distance** | **str** |  | [optional] 
**country_match** | **str** |  | [optional] 
**country_code** | **str** |  | [optional] 
**free_mail** | **str** |  | [optional] 
**anonymous_proxy** | **str** |  | [optional] 
**score** | **str** |  | [optional] 
**bin_match** | **str** |  | [optional] 
**bin_country** | **str** |  | [optional] 
**err** | **str** |  | [optional] 
**proxy_score** | **str** |  | [optional] 
**ip_region** | **str** |  | [optional] 
**ip_city** | **str** |  | [optional] 
**ip_latitude** | **str** |  | [optional] 
**ip_longitude** | **str** |  | [optional] 
**bin_name** | **str** |  | [optional] 
**ip_isp** | **str** |  | [optional] 
**ip_org** | **str** |  | [optional] 
**bin_name_match** | **str** |  | [optional] 
**bin_phone_match** | **str** |  | [optional] 
**bin_phone** | **str** |  | [optional] 
**cust_phone_in_billing_loc** | **str** |  | [optional] 
**high_risk_country** | **str** |  | [optional] 
**queries_remaining** | **str** |  | [optional] 
**city_postal_match** | **str** |  | [optional] 
**ship_city_postal_match** | **str** |  | [optional] 
**maxmind_id** | **str** |  | [optional] 
**ip_asnum** | **str** |  | [optional] 
**ip_user_type** | **str** |  | [optional] 
**ip_country_conf** | **str** |  | [optional] 
**ip_region_conf** | **str** |  | [optional] 
**ip_city_conf** | **str** |  | [optional] 
**ip_postal_code** | **str** |  | [optional] 
**ip_postal_conf** | **str** |  | [optional] 
**ip_accuracy_radius** | **str** |  | [optional] 
**ip_net_speed_cell** | **str** |  | [optional] 
**ip_metro_code** | **str** |  | [optional] 
**ip_area_code** | **str** |  | [optional] 
**ip_time_zone** | **str** |  | [optional] 
**ip_region_name** | **str** |  | [optional] 
**ip_domain** | **str** |  | [optional] 
**ip_country_name** | **str** |  | [optional] 
**ip_continent_code** | **str** |  | [optional] 
**ip_corporate_proxy** | **str** |  | [optional] 
**carder_email** | **str** |  | [optional] 
**high_risk_username** | **str** |  | [optional] 
**high_risk_password** | **str** |  | [optional] 
**risk_score** | [**AccountInfoMaxMindResponseRiskScore**](AccountInfoMaxMindResponseRiskScore.md) |  | [optional] 
**is_trans_proxy** | **str** |  | [optional] 
**prepaid** | **str** |  | [optional] 
**minfraud_version** | **str** |  | [optional] 
**service_level** | **str** |  | [optional] 
**explanation** | **str** |  | [optional] 
**female_name** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.account_info_max_mind_response import AccountInfoMaxMindResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoMaxMindResponse from a JSON string
account_info_max_mind_response_instance = AccountInfoMaxMindResponse.from_json(json)
# print the JSON string representation of the object
print(AccountInfoMaxMindResponse.to_json())

# convert the object into a dict
account_info_max_mind_response_dict = account_info_max_mind_response_instance.to_dict()
# create an instance of AccountInfoMaxMindResponse from a dict
account_info_max_mind_response_from_dict = AccountInfoMaxMindResponse.from_dict(account_info_max_mind_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


