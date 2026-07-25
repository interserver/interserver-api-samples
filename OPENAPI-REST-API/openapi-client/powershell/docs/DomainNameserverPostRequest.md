# DomainNameserverPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**IpAddress** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DomainNameserverPostRequest = Initialize-InterserverApiDomainNameserverPostRequest  -Name ns1.host.com `
 -IpAddress 1.2.3.4Get
```

- Convert the resource to JSON
```powershell
$DomainNameserverPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

