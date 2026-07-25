# DomainLookupResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | Option<**bool**> | Whether the domain is available to register. | [optional]
**premium** | Option<**bool**> | Whether the domain is marked as premium by the registrar. | [optional]
**website** | Option<**bool**> | Indicates if the domain is already used by a website service. | [optional]
**domain_service** | Option<**bool**> | Indicates if the domain already exists as a domain service on the account. | [optional]
**service** | Option<**serde_json::Value**> | Service catalog details for the domain's TLD. | [optional]
**whois_privacy** | Option<**bool**> | Whether Whois privacy is available for the TLD. | [optional]
**new** | Option<**String**> | Calculated registration price, when available. | [optional]
**renewal** | Option<**String**> | Calculated renewal price, when available. | [optional]
**transfer** | Option<**String**> | Calculated transfer price, when available. | [optional]
**fields** | Option<**serde_json::Value**> | Registrar field requirements for this domain/TLD. | [optional]
**currencies** | Option<**serde_json::Value**> | Pricing information normalized to supported currencies. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


