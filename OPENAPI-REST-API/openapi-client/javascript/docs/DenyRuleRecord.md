# InterserverApiClient.DenyRuleRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of deny rule. | 
**data** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**id** | **Number** | The deny rule Id number. | 
**created** | **String** | the date the rule was created. | 
**user** | **String** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 



## Enum: TypeEnum


* `domain` (value: `"domain"`)

* `email` (value: `"email"`)

* `startswith` (value: `"startswith"`)

* `destination` (value: `"destination"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)




