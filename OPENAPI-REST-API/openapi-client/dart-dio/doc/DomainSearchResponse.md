# interserver_api.model.DomainSearchResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **Optional&lt;bool?&gt;** | Indicates whether the registrar search succeeded. | [optional] 
**responseText** | **Optional&lt;String?&gt;** | Human-readable status text from the registrar. | [optional] 
**responseTime** | **Optional&lt;String?&gt;** | Response time as reported by the registrar. | [optional] 
**lookup** | **Optional&lt;List&lt;Object&gt;?&gt;** | Availability lookup results for queried domains. | [optional] 
**suggest** | **Optional&lt;List&lt;Object&gt;?&gt;** | Suggested alternative domains and availability data. | [optional] 
**tlds** | **Optional&lt;List&lt;String&gt;?&gt;** | TLDs evaluated during the search. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


