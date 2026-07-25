# DomainLookupResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`available`** | **`Bool`** | Whether the domain is available to register. | [optional] [default to nothing]
**`premium`** | **`Bool`** | Whether the domain is marked as premium by the registrar. | [optional] [default to nothing]
**`website`** | **`Bool`** | Indicates if the domain is already used by a website service. | [optional] [default to nothing]
**`domain_service`** | **`Bool`** | Indicates if the domain already exists as a domain service on the account. | [optional] [default to nothing]
**`service`** | **`Any`** | Service catalog details for the domain&#39;s TLD. | [optional] [default to nothing]
**`whois_privacy`** | **`Bool`** | Whether Whois privacy is available for the TLD. | [optional] [default to nothing]
**`new`** | **`String`** | Calculated registration price, when available. | [optional] [default to nothing]
**`renewal`** | **`String`** | Calculated renewal price, when available. | [optional] [default to nothing]
**`transfer`** | **`String`** | Calculated transfer price, when available. | [optional] [default to nothing]
**`fields`** | **`Any`** | Registrar field requirements for this domain/TLD. | [optional] [default to nothing]
**`currencies`** | **`Any`** | Pricing information normalized to supported currencies. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


