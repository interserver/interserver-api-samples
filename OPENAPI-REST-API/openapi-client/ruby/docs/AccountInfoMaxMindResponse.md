# InterServerClient::AccountInfoMaxMindResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distance** | **String** |  | [optional] |
| **country_match** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **free_mail** | **String** |  | [optional] |
| **anonymous_proxy** | **String** |  | [optional] |
| **score** | **String** |  | [optional] |
| **bin_match** | **String** |  | [optional] |
| **bin_country** | **String** |  | [optional] |
| **err** | **String** |  | [optional] |
| **proxy_score** | **String** |  | [optional] |
| **ip_region** | **String** |  | [optional] |
| **ip_city** | **String** |  | [optional] |
| **ip_latitude** | **String** |  | [optional] |
| **ip_longitude** | **String** |  | [optional] |
| **bin_name** | **String** |  | [optional] |
| **ip_isp** | **String** |  | [optional] |
| **ip_org** | **String** |  | [optional] |
| **bin_name_match** | **String** |  | [optional] |
| **bin_phone_match** | **String** |  | [optional] |
| **bin_phone** | **String** |  | [optional] |
| **cust_phone_in_billing_loc** | **String** |  | [optional] |
| **high_risk_country** | **String** |  | [optional] |
| **queries_remaining** | **String** |  | [optional] |
| **city_postal_match** | **String** |  | [optional] |
| **ship_city_postal_match** | **String** |  | [optional] |
| **maxmind_id** | **String** |  | [optional] |
| **ip_asnum** | **String** |  | [optional] |
| **ip_user_type** | **String** |  | [optional] |
| **ip_country_conf** | **String** |  | [optional] |
| **ip_region_conf** | **String** |  | [optional] |
| **ip_city_conf** | **String** |  | [optional] |
| **ip_postal_code** | **String** |  | [optional] |
| **ip_postal_conf** | **String** |  | [optional] |
| **ip_accuracy_radius** | **String** |  | [optional] |
| **ip_net_speed_cell** | **String** |  | [optional] |
| **ip_metro_code** | **String** |  | [optional] |
| **ip_area_code** | **String** |  | [optional] |
| **ip_time_zone** | **String** |  | [optional] |
| **ip_region_name** | **String** |  | [optional] |
| **ip_domain** | **String** |  | [optional] |
| **ip_country_name** | **String** |  | [optional] |
| **ip_continent_code** | **String** |  | [optional] |
| **ip_corporate_proxy** | **String** |  | [optional] |
| **carder_email** | **String** |  | [optional] |
| **high_risk_username** | **String** |  | [optional] |
| **high_risk_password** | **String** |  | [optional] |
| **risk_score** | [**AccountInfoMaxMindResponseRiskScore**](AccountInfoMaxMindResponseRiskScore.md) |  | [optional] |
| **is_trans_proxy** | **String** |  | [optional] |
| **prepaid** | **String** |  | [optional] |
| **minfraud_version** | **String** |  | [optional] |
| **service_level** | **String** |  | [optional] |
| **explanation** | **String** |  | [optional] |
| **female_name** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::AccountInfoMaxMindResponse.new(
  distance: null,
  country_match: null,
  country_code: null,
  free_mail: null,
  anonymous_proxy: null,
  score: null,
  bin_match: null,
  bin_country: null,
  err: null,
  proxy_score: null,
  ip_region: null,
  ip_city: null,
  ip_latitude: null,
  ip_longitude: null,
  bin_name: null,
  ip_isp: null,
  ip_org: null,
  bin_name_match: null,
  bin_phone_match: null,
  bin_phone: null,
  cust_phone_in_billing_loc: null,
  high_risk_country: null,
  queries_remaining: null,
  city_postal_match: null,
  ship_city_postal_match: null,
  maxmind_id: null,
  ip_asnum: null,
  ip_user_type: null,
  ip_country_conf: null,
  ip_region_conf: null,
  ip_city_conf: null,
  ip_postal_code: null,
  ip_postal_conf: null,
  ip_accuracy_radius: null,
  ip_net_speed_cell: null,
  ip_metro_code: null,
  ip_area_code: null,
  ip_time_zone: null,
  ip_region_name: null,
  ip_domain: null,
  ip_country_name: null,
  ip_continent_code: null,
  ip_corporate_proxy: null,
  carder_email: null,
  high_risk_username: null,
  high_risk_password: null,
  risk_score: null,
  is_trans_proxy: null,
  prepaid: null,
  minfraud_version: null,
  service_level: null,
  explanation: null,
  female_name: null
)
```

