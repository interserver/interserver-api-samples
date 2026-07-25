# VpsServiceAddons
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasCpanel** | **Boolean** | Whether a cPanel license is active on this VPS. | [optional] 
**HasDirectadmin** | **Boolean** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**HasFantastico** | **Boolean** | Whether a Fantastico license is active on this VPS. | [optional] 
**HasSoftaculous** | **Boolean** | Whether a Softaculous license is active on this VPS. | [optional] 
**HasHdspace** | **Boolean** | Whether extra disk space has been added to this VPS. | [optional] 
**DedicatedIp** | **Boolean** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**ExtraIps** | **String[]** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**ExtraIps6** | **String[]** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**UnpaidIps** | **String[]** | List of IP addresses that have unpaid charges. | [optional] 
**Ips** | **String[]** | All IPv4 addresses assigned to this VPS. | [optional] 
**Ips6** | **String[]** | All IPv6 addresses assigned to this VPS. | [optional] 
**CpanelId** | **Int32** | The add-on service ID for the cPanel license. | [optional] 
**Cost** | **Int32** | Total monthly add-on cost in cents. | [optional] 
**Ids** | **String[]** | List of add-on service IDs active on this VPS. | [optional] 
**Rdata** | **String[]** | Raw add-on data entries. | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsServiceAddons = Initialize-InterserverApiVpsServiceAddons  -HasCpanel null `
 -HasDirectadmin null `
 -HasFantastico null `
 -HasSoftaculous null `
 -HasHdspace null `
 -DedicatedIp null `
 -ExtraIps null `
 -ExtraIps6 null `
 -UnpaidIps null `
 -Ips null `
 -Ips6 null `
 -CpanelId null `
 -Cost null `
 -Ids null `
 -Rdata null
```

- Convert the resource to JSON
```powershell
$VpsServiceAddons | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

