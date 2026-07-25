# ScrubIpsRowSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScrubIpId** | **Int32** |  | [optional] 
**RepeatInvoicesCost** | **Decimal** |  | [optional] 
**ScrubIpIp** | **String** |  | [optional] 
**ScrubIpStatus** | **String** |  | [optional] 
**ServicesName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpsRowSchema = Initialize-InterserverApiScrubIpsRowSchema  -ScrubIpId null `
 -RepeatInvoicesCost null `
 -ScrubIpIp null `
 -ScrubIpStatus null `
 -ServicesName null
```

- Convert the resource to JSON
```powershell
$ScrubIpsRowSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

