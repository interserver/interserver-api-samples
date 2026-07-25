# DnsNewRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name part of record | 
**Type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**Content** | **String** | Content of record | 
**Ttl** | **Int32** | Time-to-live | [optional] [default to 86400]
**Prio** | **Int32** | Priority | [optional] [default to 0]

## Examples

- Prepare the resource
```powershell
$DnsNewRecord = Initialize-InterserverApiDnsNewRecord  -Name myfamily.com `
 -Type null `
 -Content 127.0.0.1 `
 -Ttl 86400 `
 -Prio 0
```

- Convert the resource to JSON
```powershell
$DnsNewRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

