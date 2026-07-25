# DomainNameserverGetResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Ipaddress** | **String** |  | 
**CanDelete** | **String** | Whether the registrar allows deletion of this nameserver entry. | 

## Examples

- Prepare the resource
```powershell
$DomainNameserverGetResponseInner = Initialize-InterserverApiDomainNameserverGetResponseInner  -Name ns1.domain.com `
 -Ipaddress 1.2.3.4 `
 -CanDelete 1
```

- Convert the resource to JSON
```powershell
$DomainNameserverGetResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

