# interserver_api.model.DomainSearchResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Indicates whether the registrar search succeeded. | [optional] 
**responseText** | **String** | Human-readable status text from the registrar. | [optional] 
**responseTime** | **String** | Response time as reported by the registrar. | [optional] 
**lookup** | **List<Object>** | Availability lookup results for queried domains. | [optional] [default to const []]
**suggest** | **List<Object>** | Suggested alternative domains and availability data. | [optional] [default to const []]
**tlds** | **List<String>** | TLDs evaluated during the search. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


