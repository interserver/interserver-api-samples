# swagger.model.DomainLookupResponse

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **bool** | Whether the domain is available to register. | [optional] [default to null]
**premium** | **bool** | Whether the domain is marked as premium by the registrar. | [optional] [default to null]
**website** | **bool** | Indicates if the domain is already used by a website service. | [optional] [default to null]
**domainService** | **bool** | Indicates if the domain already exists as a domain service on the account. | [optional] [default to null]
**service** | [**Object**](Object.md) | Service catalog details for the domain&#x27;s TLD. | [optional] [default to null]
**whoisPrivacy** | **bool** | Whether Whois privacy is available for the TLD. | [optional] [default to null]
**new_** | **String** | Calculated registration price, when available. | [optional] [default to null]
**renewal** | **String** | Calculated renewal price, when available. | [optional] [default to null]
**transfer** | **String** | Calculated transfer price, when available. | [optional] [default to null]
**fields** | [**Object**](Object.md) | Registrar field requirements for this domain/TLD. | [optional] [default to null]
**currencies** | [**Object**](Object.md) | Pricing information normalized to supported currencies. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

