# DeleteFirewallRule

Delete firewall rule for your ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rule_id** | **int** |  | 

## Example

```python
from interserver_api_client.models.delete_firewall_rule import DeleteFirewallRule

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteFirewallRule from a JSON string
delete_firewall_rule_instance = DeleteFirewallRule.from_json(json)
# print the JSON string representation of the object
print(DeleteFirewallRule.to_json())

# convert the object into a dict
delete_firewall_rule_dict = delete_firewall_rule_instance.to_dict()
# create an instance of DeleteFirewallRule from a dict
delete_firewall_rule_from_dict = DeleteFirewallRule.from_dict(delete_firewall_rule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


