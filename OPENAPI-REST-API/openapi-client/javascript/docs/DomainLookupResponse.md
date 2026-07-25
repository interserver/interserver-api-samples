# InterserverApiClient.DomainLookupResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **Boolean** | Whether the domain is available to register. | [optional] 
**premium** | **Boolean** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **Boolean** | Indicates if the domain is already used by a website service. | [optional] 
**domain_service** | **Boolean** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **Object** | Service catalog details for the domain&#39;s TLD. | [optional] 
**whois_privacy** | **Boolean** | Whether Whois privacy is available for the TLD. | [optional] 
**_new** | **String** | Calculated registration price, when available. | [optional] 
**renewal** | **String** | Calculated renewal price, when available. | [optional] 
**transfer** | **String** | Calculated transfer price, when available. | [optional] 
**fields** | **Object** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **Object** | Pricing information normalized to supported currencies. | [optional] 


