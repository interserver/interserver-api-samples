# MailBlockRspamd
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | **String** |  | 
**Subject** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MailBlockRspamd = Initialize-InterserverApiMailBlockRspamd  -VarFrom null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$MailBlockRspamd | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

