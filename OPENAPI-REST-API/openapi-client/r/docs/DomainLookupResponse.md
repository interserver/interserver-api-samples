# interserverapi::DomainLookupResponse

Availability, pricing, and order-field metadata for a domain lookup.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **character** | Whether the domain is available to register. | [optional] 
**premium** | **character** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **character** | Indicates if the domain is already used by a website service. | [optional] 
**domain_service** | **character** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **object** | Service catalog details for the domain&#39;s TLD. | [optional] 
**whois_privacy** | **character** | Whether Whois privacy is available for the TLD. | [optional] 
**new** | **character** | Calculated registration price, when available. | [optional] 
**renewal** | **character** | Calculated renewal price, when available. | [optional] 
**transfer** | **character** | Calculated transfer price, when available. | [optional] 
**fields** | **object** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **object** | Pricing information normalized to supported currencies. | [optional] 


