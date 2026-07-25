# MailBlocks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarLocal** | [**MailBlockClickHouse[]**](MailBlockClickHouse.md) |  | 
**Mbtrap** | [**MailBlockClickHouse[]**](MailBlockClickHouse.md) |  | 
**Subject** | [**MailBlockRspamd[]**](MailBlockRspamd.md) |  | 

## Examples

- Prepare the resource
```powershell
$MailBlocks = Initialize-InterserverApiMailBlocks  -VarLocal null `
 -Mbtrap null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$MailBlocks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

