# DomainDnssecRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithm** | **Int32[]** | List of DNSSEC algorithm IDs for each record. | [optional] 
**DigestType** | **Int32[]** | List of digest type IDs for each record. | [optional] 
**Digest** | **String[]** | List of hex digests for each record. | [optional] 
**KeyTag** | **Int32[]** | List of key tag values corresponding to each record. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainDnssecRequest = Initialize-InterserverApiDomainDnssecRequest  -Algorithm null `
 -DigestType null `
 -Digest null `
 -KeyTag null
```

- Convert the resource to JSON
```powershell
$DomainDnssecRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

