# interserverapi::DenyRuleNew

The data for a email deny rule record.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | The type of deny rule. | [Enum: [domain, email, startswith, destination]] 
**data** | **character** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**user** | **character** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 


