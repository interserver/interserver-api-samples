# DomainSearchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Indicates whether the registrar search succeeded. | [optional] 
**ResponseText** | **String** | Human-readable status text from the registrar. | [optional] 
**ResponseTime** | **String** | Response time as reported by the registrar. | [optional] 
**Lookup** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Availability lookup results for queried domains. | [optional] 
**Suggest** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Suggested alternative domains and availability data. | [optional] 
**Tlds** | **String[]** | TLDs evaluated during the search. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainSearchResponse = Initialize-InterserverApiDomainSearchResponse  -Success null `
 -ResponseText null `
 -ResponseTime null `
 -Lookup null `
 -Suggest null `
 -Tlds null
```

- Convert the resource to JSON
```powershell
$DomainSearchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

