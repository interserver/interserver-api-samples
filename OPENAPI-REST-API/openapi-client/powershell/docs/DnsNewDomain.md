# DnsNewDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | The domain name. | 
**Ip** | **String** | IP Address to point the domain to. | 

## Examples

- Prepare the resource
```powershell
$DnsNewDomain = Initialize-InterserverApiDnsNewDomain  -Domain mydomain.com `
 -Ip 1.2.3.4
```

- Convert the resource to JSON
```powershell
$DnsNewDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

