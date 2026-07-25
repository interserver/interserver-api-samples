# VpsRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VpsId** | **String** | The id of the vps. | 
**VpsName** | **String** | The name of the vps. | 
**RepeatInvoicesCost** | **String** | The repeat invoices cost of the vps. | 
**VpsHostname** | **String** | The hostname of the vps. | 
**VpsIp** | **String** | The ip of the vps. | 
**VpsStatus** | **String** | The status of the vps. | 
**ServicesName** | **String** | The services name of the vps. | 
**VpsComment** | **String** | The comment of the vps. | 

## Examples

- Prepare the resource
```powershell
$VpsRow = Initialize-InterserverApiVpsRow  -VpsId 100 `
 -VpsName Builder `
 -RepeatInvoicesCost 10.00 `
 -VpsHostname vps100 `
 -VpsIp 64.20.46.220 `
 -VpsStatus active `
 -ServicesName KVM Windows VPS Slice `
 -VpsComment 
```

- Convert the resource to JSON
```powershell
$VpsRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

