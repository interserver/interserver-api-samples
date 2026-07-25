# InterServerAPI::Object::DomainSearchResponse

## Load the model package
```perl
use InterServerAPI::Object::DomainSearchResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Indicates whether the registrar search succeeded. | [optional] 
**response_text** | **string** | Human-readable status text from the registrar. | [optional] 
**response_time** | **string** | Response time as reported by the registrar. | [optional] 
**lookup** | **ARRAY[object]** | Availability lookup results for queried domains. | [optional] 
**suggest** | **ARRAY[object]** | Suggested alternative domains and availability data. | [optional] 
**tlds** | **ARRAY[string]** | TLDs evaluated during the search. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


