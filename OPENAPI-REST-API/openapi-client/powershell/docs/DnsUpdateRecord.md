# DnsUpdateRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Type** | [**DnsRecordType**](DnsRecordType.md) |  | [optional] 
**Content** | **String** |  | [optional] 
**Ttl** | **String** |  | [optional] 
**Prio** | **String** |  | [optional] 
**Disabled** | **String** |  | [optional] 
**Ordername** | **String** |  | [optional] 
**Auth** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DnsUpdateRecord = Initialize-InterserverApiDnsUpdateRecord  -Name null `
 -Type null `
 -Content null `
 -Ttl null `
 -Prio null `
 -Disabled null `
 -Ordername null `
 -Auth null
```

- Convert the resource to JSON
```powershell
$DnsUpdateRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

