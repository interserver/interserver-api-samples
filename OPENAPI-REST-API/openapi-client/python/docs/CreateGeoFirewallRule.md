# CreateGeoFirewallRule

Create firewall rule for your ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | **int** |  | [optional] [default to 80]
**country_code** | **int** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] 
**asn** | **int** | ASN number | [optional] 
**xdp_action** | **int** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 

## Example

```python
from interserver_api_client.models.create_geo_firewall_rule import CreateGeoFirewallRule

# TODO update the JSON string below
json = "{}"
# create an instance of CreateGeoFirewallRule from a JSON string
create_geo_firewall_rule_instance = CreateGeoFirewallRule.from_json(json)
# print the JSON string representation of the object
print(CreateGeoFirewallRule.to_json())

# convert the object into a dict
create_geo_firewall_rule_dict = create_geo_firewall_rule_instance.to_dict()
# create an instance of CreateGeoFirewallRule from a dict
create_geo_firewall_rule_from_dict = CreateGeoFirewallRule.from_dict(create_geo_firewall_rule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


