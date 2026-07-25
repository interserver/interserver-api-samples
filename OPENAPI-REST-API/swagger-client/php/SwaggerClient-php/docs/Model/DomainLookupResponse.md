# DomainLookupResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **bool** | Whether the domain is available to register. | [optional] 
**premium** | **bool** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **bool** | Indicates if the domain is already used by a website service. | [optional] 
**domain_service** | **bool** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **object** | Service catalog details for the domain&#x27;s TLD. | [optional] 
**whois_privacy** | **bool** | Whether Whois privacy is available for the TLD. | [optional] 
**new** | **string** | Calculated registration price, when available. | [optional] 
**renewal** | **string** | Calculated renewal price, when available. | [optional] 
**transfer** | **string** | Calculated transfer price, when available. | [optional] 
**fields** | **object** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **object** | Pricing information normalized to supported currencies. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

