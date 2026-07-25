# InterServerAPI::Object::PostOauthCallback200Response

## Load the model package
```perl
use InterServerAPI::Object::PostOauthCallback200Response;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **boolean** | Whether the user was logged in to an existing account. | [optional] 
**signup** | **boolean** | Whether a new account was created. | [optional] 
**linked** | **boolean** | Whether the OAuth provider was linked to an existing account. | [optional] 
**account_id** | **int** | The account ID associated with the OAuth login. | [optional] 
**error_code** | **string** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


