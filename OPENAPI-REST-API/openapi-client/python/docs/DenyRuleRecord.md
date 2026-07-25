# DenyRuleRecord

The data for a email deny rule record.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **str** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 
**type** | **str** | The type of deny rule. | 
**data** | **str** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**id** | **int** | The deny rule Id number. | 
**created** | **str** | the date the rule was created. | 

## Example

```python
from interserver_api_client.models.deny_rule_record import DenyRuleRecord

# TODO update the JSON string below
json = "{}"
# create an instance of DenyRuleRecord from a JSON string
deny_rule_record_instance = DenyRuleRecord.from_json(json)
# print the JSON string representation of the object
print(DenyRuleRecord.to_json())

# convert the object into a dict
deny_rule_record_dict = deny_rule_record_instance.to_dict()
# create an instance of DenyRuleRecord from a dict
deny_rule_record_from_dict = DenyRuleRecord.from_dict(deny_rule_record_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


