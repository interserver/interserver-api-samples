# interserver_api.model.InitiatePayment200Response

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result). | [optional] 
**redirect** | **String** | URL to redirect the user to for payment (when type is `redirect`). | [optional] 
**action** | **String** | Form action URL (when type is `submit`). | [optional] 
**method** | **String** | HTTP method for the form submission (when type is `submit`). | [optional] 
**items** | **Object** | Form field name-value pairs to submit (when type is `submit`). | [optional] 
**text** | **String** | Status or result text. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


