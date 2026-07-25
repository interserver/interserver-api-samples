# DomainSearchResponse

Lookup and suggestion results returned for a domain search.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Indicates whether the registrar search succeeded. | [optional] 
**response_text** | **str** | Human-readable status text from the registrar. | [optional] 
**response_time** | **str** | Response time as reported by the registrar. | [optional] 
**lookup** | **List[object]** | Availability lookup results for queried domains. | [optional] 
**suggest** | **List[object]** | Suggested alternative domains and availability data. | [optional] 
**tlds** | **List[str]** | TLDs evaluated during the search. | [optional] 

## Example

```python
from interserver_api_client.models.domain_search_response import DomainSearchResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DomainSearchResponse from a JSON string
domain_search_response_instance = DomainSearchResponse.from_json(json)
# print the JSON string representation of the object
print(DomainSearchResponse.to_json())

# convert the object into a dict
domain_search_response_dict = domain_search_response_instance.to_dict()
# create an instance of DomainSearchResponse from a dict
domain_search_response_from_dict = DomainSearchResponse.from_dict(domain_search_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


