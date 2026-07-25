# interserver_api.model.PostOauthCallback200Response

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **bool** | Whether the user was logged in to an existing account. | [optional] 
**signup** | **bool** | Whether a new account was created. | [optional] 
**linked** | **bool** | Whether the OAuth provider was linked to an existing account. | [optional] 
**accountId** | **int** | The account ID associated with the OAuth login. | [optional] 
**errorCode** | **String** | Error code if additional verification is needed (e.g. `2fa_required`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


