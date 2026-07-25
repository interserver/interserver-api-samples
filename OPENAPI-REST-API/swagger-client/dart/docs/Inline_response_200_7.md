# swagger.model.InlineResponse2007

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **bool** | Whether the user was logged in to an existing account. | [optional] [default to null]
**signup** | **bool** | Whether a new account was created. | [optional] [default to null]
**linked** | **bool** | Whether the OAuth provider was linked to an existing account. | [optional] [default to null]
**accountId** | **int** | The account ID associated with the OAuth login. | [optional] [default to null]
**errorCode** | **String** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

