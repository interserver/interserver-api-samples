# DenyRuleRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of deny rule. | 
**VarData** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**Id** | **Int32** | The deny rule Id number. | 
**Created** | **String** | the date the rule was created. | 
**User** | **String** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 

## Examples

- Prepare the resource
```powershell
$DenyRuleRecord = Initialize-InterserverApiDenyRuleRecord  -Type email `
 -VarData domeinwo@server.guesshost.net `
 -Id 41124 `
 -Created 2022-03-22 19:16:35 `
 -User mb20682
```

- Convert the resource to JSON
```powershell
$DenyRuleRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

