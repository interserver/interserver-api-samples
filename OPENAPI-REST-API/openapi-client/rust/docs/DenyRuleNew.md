# DenyRuleNew

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | Option<**String**> | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional]
**r#type** | **Type** | The type of deny rule. (enum: domain, email, startswith, destination) | 
**data** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


