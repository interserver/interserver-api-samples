# DomainNameServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sortorder** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Ipaddress** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainNameServer = Initialize-InterserverApiDomainNameServer  -Sortorder null `
 -Name null `
 -Ipaddress null
```

- Convert the resource to JSON
```powershell
$DomainNameServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

