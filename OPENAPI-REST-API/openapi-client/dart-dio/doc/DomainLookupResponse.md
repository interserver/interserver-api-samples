# interserver_api.model.DomainLookupResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **Optional&lt;bool?&gt;** | Whether the domain is available to register. | [optional] 
**premium** | **Optional&lt;bool?&gt;** | Whether the domain is marked as premium by the registrar. | [optional] 
**website** | **Optional&lt;bool?&gt;** | Indicates if the domain is already used by a website service. | [optional] 
**domainService** | **Optional&lt;bool?&gt;** | Indicates if the domain already exists as a domain service on the account. | [optional] 
**service** | **Optional&lt;Object?&gt;** | Service catalog details for the domain's TLD. | [optional] 
**whoisPrivacy** | **Optional&lt;bool?&gt;** | Whether Whois privacy is available for the TLD. | [optional] 
**new_** | **Optional&lt;String?&gt;** | Calculated registration price, when available. | [optional] 
**renewal** | **Optional&lt;String?&gt;** | Calculated renewal price, when available. | [optional] 
**transfer** | **Optional&lt;String?&gt;** | Calculated transfer price, when available. | [optional] 
**fields** | **Optional&lt;Object?&gt;** | Registrar field requirements for this domain/TLD. | [optional] 
**currencies** | **Optional&lt;Object?&gt;** | Pricing information normalized to supported currencies. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


