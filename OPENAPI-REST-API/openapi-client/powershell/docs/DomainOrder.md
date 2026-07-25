# DomainOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WhoisPrivacyCost** | **String** | Cost of Whois Privacy | [optional] 
**Services** | [**DomainOrderServices**](DomainOrderServices.md) |  | [optional] 
**TldServices** | [**SystemCollectionsHashtable**](.md) | Map of TLDs to domain service IDs. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOrder = Initialize-InterserverApiDomainOrder  -WhoisPrivacyCost 5 `
 -Services null `
 -TldServices null
```

- Convert the resource to JSON
```powershell
$DomainOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

