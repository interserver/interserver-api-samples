# DomainLookupResponse

Availability, pricing, and order-field metadata for a domain lookup.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **bool** | Whether the domain is available to register. | [optional] 
**premium** | **bool** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **bool** | Indicates if the domain is already used by a website service. | [optional] 
**domain_service** | **bool** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **object** | Service catalog details for the domain&#39;s TLD. | [optional] 
**whois_privacy** | **bool** | Whether Whois privacy is available for the TLD. | [optional] 
**new** | **str** | Calculated registration price, when available. | [optional] 
**renewal** | **str** | Calculated renewal price, when available. | [optional] 
**transfer** | **str** | Calculated transfer price, when available. | [optional] 
**fields** | **object** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **object** | Pricing information normalized to supported currencies. | [optional] 

## Example

```python
from interserver_api_client.models.domain_lookup_response import DomainLookupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DomainLookupResponse from a JSON string
domain_lookup_response_instance = DomainLookupResponse.from_json(json)
# print the JSON string representation of the object
print(DomainLookupResponse.to_json())

# convert the object into a dict
domain_lookup_response_dict = domain_lookup_response_instance.to_dict()
# create an instance of DomainLookupResponse from a dict
domain_lookup_response_from_dict = DomainLookupResponse.from_dict(domain_lookup_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


