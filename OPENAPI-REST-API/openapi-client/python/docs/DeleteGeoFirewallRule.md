# DeleteGeoFirewallRule

Delete geo firewall rule for your scrub ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rule_id** | **int** |  | 

## Example

```python
from interserver_api_client.models.delete_geo_firewall_rule import DeleteGeoFirewallRule

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteGeoFirewallRule from a JSON string
delete_geo_firewall_rule_instance = DeleteGeoFirewallRule.from_json(json)
# print the JSON string representation of the object
print(DeleteGeoFirewallRule.to_json())

# convert the object into a dict
delete_geo_firewall_rule_dict = delete_geo_firewall_rule_instance.to_dict()
# create an instance of DeleteGeoFirewallRule from a dict
delete_geo_firewall_rule_from_dict = DeleteGeoFirewallRule.from_dict(delete_geo_firewall_rule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


