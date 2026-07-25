# swagger.model.DomainSearchResponse

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Indicates whether the registrar search succeeded. | [optional] [default to null]
**responseText** | **String** | Human-readable status text from the registrar. | [optional] [default to null]
**responseTime** | **String** | Response time as reported by the registrar. | [optional] [default to null]
**lookup** | [**List&lt;Object&gt;**](Object.md) | Availability lookup results for queried domains. | [optional] [default to []]
**suggest** | [**List&lt;Object&gt;**](Object.md) | Suggested alternative domains and availability data. | [optional] [default to []]
**tlds** | **List&lt;String&gt;** | TLDs evaluated during the search. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

