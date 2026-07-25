# ISADomainLookupResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **NSNumber*** | Whether the domain is available to register. | [optional] 
**premium** | **NSNumber*** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **NSNumber*** | Indicates if the domain is already used by a website service. | [optional] 
**domainService** | **NSNumber*** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | [**NSObject***](.md) | Service catalog details for the domain&#39;s TLD. | [optional] 
**whoisPrivacy** | **NSNumber*** | Whether Whois privacy is available for the TLD. | [optional] 
**varNew** | **NSString*** | Calculated registration price, when available. | [optional] 
**renewal** | **NSString*** | Calculated renewal price, when available. | [optional] 
**transfer** | **NSString*** | Calculated transfer price, when available. | [optional] 
**fields** | [**NSObject***](.md) | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | [**NSObject***](.md) | Pricing information normalized to supported currencies. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


