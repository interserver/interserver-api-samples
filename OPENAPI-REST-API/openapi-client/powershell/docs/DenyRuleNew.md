# DenyRuleNew
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | **String** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 
**Type** | **String** | The type of deny rule. | 
**VarData** | **String** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 

## Examples

- Prepare the resource
```powershell
$DenyRuleNew = Initialize-InterserverApiDenyRuleNew  -User mb20682 `
 -Type email `
 -VarData domeinwo@server.guesshost.net
```

- Convert the resource to JSON
```powershell
$DenyRuleNew | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

