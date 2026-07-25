# DnsRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the DNS Record. | 
**DomainId** | **String** | The ID of the Domain this is a record of. | 
**Name** | **String** |  | 
**Type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**Content** | **String** | The content of the record, such as the IP address or hsotname. | 
**Ttl** | **String** | Time To Live (seconds) | 
**Prio** | **String** | Priority | 
**Disabled** | **String** |  | 
**Ordername** | **String** | Alternate name to use for sorting | 
**Auth** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DnsRecord = Initialize-InterserverApiDnsRecord  -Id 472 `
 -DomainId 68 `
 -Name hussfamily.com `
 -Type null `
 -Content cdns1.interserver.net `
 -Ttl 86400 `
 -Prio 0 `
 -Disabled 0 `
 -Ordername null `
 -Auth 1
```

- Convert the resource to JSON
```powershell
$DnsRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

