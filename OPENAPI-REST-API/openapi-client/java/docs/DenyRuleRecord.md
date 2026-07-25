

# DenyRuleRecord

The data for a email deny rule record.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) | The type of deny rule. |  |
|**data** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. |  |
|**id** | **Integer** | The deny rule Id number. |  |
|**created** | **String** | the date the rule was created. |  |
|**user** | **String** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| domain | &quot;domain&quot; |
| email | &quot;email&quot; |
| startswith | &quot;startswith&quot; |
| destination | &quot;destination&quot; |
| unknown_default_open_api | &quot;unknown_default_open_api&quot; |


## Implemented Interfaces

* Serializable


