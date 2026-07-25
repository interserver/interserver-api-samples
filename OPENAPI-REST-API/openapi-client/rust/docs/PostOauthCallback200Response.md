# PostOauthCallback200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | Option<**bool**> | Whether the user was logged in to an existing account. | [optional]
**signup** | Option<**bool**> | Whether a new account was created. | [optional]
**linked** | Option<**bool**> | Whether the OAuth provider was linked to an existing account. | [optional]
**account_id** | Option<**i32**> | The account ID associated with the OAuth login. | [optional]
**error_code** | Option<**String**> | Error code if additional verification is needed (e.g. `2fa_required`). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


