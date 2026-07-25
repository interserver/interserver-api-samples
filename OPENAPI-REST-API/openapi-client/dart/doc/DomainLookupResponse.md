# interserver_api.model.DomainLookupResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **bool** | Whether the domain is available to register. | [optional] 
**premium** | **bool** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **bool** | Indicates if the domain is already used by a website service. | [optional] 
**domainService** | **bool** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **Object** | Service catalog details for the domain's TLD. | [optional] 
**whoisPrivacy** | **bool** | Whether Whois privacy is available for the TLD. | [optional] 
**new_** | **String** | Calculated registration price, when available. | [optional] 
**renewal** | **String** | Calculated renewal price, when available. | [optional] 
**transfer** | **String** | Calculated transfer price, when available. | [optional] 
**fields** | **Object** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **Object** | Pricing information normalized to supported currencies. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


