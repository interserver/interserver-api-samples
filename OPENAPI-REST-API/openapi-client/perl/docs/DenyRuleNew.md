# InterServerAPI::Object::DenyRuleNew

## Load the model package
```perl
use InterServerAPI::Object::DenyRuleNew;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | The type of deny rule. | 
**data** | **string** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**user** | **string** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


