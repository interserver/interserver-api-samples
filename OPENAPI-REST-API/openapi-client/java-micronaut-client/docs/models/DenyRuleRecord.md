

# DenyRuleRecord

The data for a email deny rule record.

The class is defined in **[DenyRuleRecord.java](../../src/main/java/org/openapitools/model/DenyRuleRecord.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TypeEnum**](#TypeEnum) | The type of deny rule. | 
**data** | `String` | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**id** | `Integer` | The deny rule Id number. | 
**created** | `String` | the date the rule was created. | 
**user** | `String` | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. |  [optional property]

## TypeEnum

Name | Value
---- | -----
DOMAIN | `"domain"`
EMAIL | `"email"`
STARTSWITH | `"startswith"`
DESTINATION | `"destination"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`






