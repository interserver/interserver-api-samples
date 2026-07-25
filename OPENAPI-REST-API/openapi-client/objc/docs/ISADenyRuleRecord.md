# ISADenyRuleRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | The type of deny rule. | 
**data** | **NSString*** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**_id** | **NSNumber*** | The deny rule Id number. | 
**created** | **NSString*** | the date the rule was created. | 
**user** | **NSString*** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


