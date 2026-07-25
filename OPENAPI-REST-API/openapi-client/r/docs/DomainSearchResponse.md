# interserverapi::DomainSearchResponse

Lookup and suggestion results returned for a domain search.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **character** | Indicates whether the registrar search succeeded. | [optional] 
**response_text** | **character** | Human-readable status text from the registrar. | [optional] 
**response_time** | **character** | Response time as reported by the registrar. | [optional] 
**lookup** | **array[object]** | Availability lookup results for queried domains. | [optional] 
**suggest** | **array[object]** | Suggested alternative domains and availability data. | [optional] 
**tlds** | **array[character]** | TLDs evaluated during the search. | [optional] 


