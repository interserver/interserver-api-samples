# PostOauthCallback200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`login`** | **`Bool`** | Whether the user was logged in to an existing account. | [optional] [default to nothing]
**`signup`** | **`Bool`** | Whether a new account was created. | [optional] [default to nothing]
**`linked`** | **`Bool`** | Whether the OAuth provider was linked to an existing account. | [optional] [default to nothing]
**`account_id`** | **`Int64`** | The account ID associated with the OAuth login. | [optional] [default to nothing]
**`error_code`** | **`String`** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


