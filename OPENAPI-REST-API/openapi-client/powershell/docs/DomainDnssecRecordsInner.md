# DomainDnssecRecordsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithm** | **String** |  | [optional] 
**DigestType** | **String** |  | [optional] 
**Digest** | **String** |  | [optional] 
**KeyTag** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainDnssecRecordsInner = Initialize-InterserverApiDomainDnssecRecordsInner  -Algorithm null `
 -DigestType null `
 -Digest null `
 -KeyTag null
```

- Convert the resource to JSON
```powershell
$DomainDnssecRecordsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

