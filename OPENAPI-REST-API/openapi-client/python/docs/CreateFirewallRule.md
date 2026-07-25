# CreateFirewallRule

Create firewall rule for your ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_id** | **int** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdp_action** | **int** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destination_port** | **int** |  | [optional] [default to 80]
**source_ip** | **str** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to '0.0.0.0']
**source_port** | **int** |  | [optional] [default to 0]

## Example

```python
from interserver_api_client.models.create_firewall_rule import CreateFirewallRule

# TODO update the JSON string below
json = "{}"
# create an instance of CreateFirewallRule from a JSON string
create_firewall_rule_instance = CreateFirewallRule.from_json(json)
# print the JSON string representation of the object
print(CreateFirewallRule.to_json())

# convert the object into a dict
create_firewall_rule_dict = create_firewall_rule_instance.to_dict()
# create an instance of CreateFirewallRule from a dict
create_firewall_rule_from_dict = CreateFirewallRule.from_dict(create_firewall_rule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


