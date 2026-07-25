# interserver_api.model.PostOauthCallback200Response

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **Optional&lt;bool?&gt;** | Whether the user was logged in to an existing account. | [optional] 
**signup** | **Optional&lt;bool?&gt;** | Whether a new account was created. | [optional] 
**linked** | **Optional&lt;bool?&gt;** | Whether the OAuth provider was linked to an existing account. | [optional] 
**accountId** | **Optional&lt;int?&gt;** | The account ID associated with the OAuth login. | [optional] 
**errorCode** | **Optional&lt;String?&gt;** | Error code if additional verification is needed (e.g. `2fa_required`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


