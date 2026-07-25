# interserverapi::PostOauthCallback200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **character** | Whether the user was logged in to an existing account. | [optional] 
**signup** | **character** | Whether a new account was created. | [optional] 
**linked** | **character** | Whether the OAuth provider was linked to an existing account. | [optional] 
**account_id** | **integer** | The account ID associated with the OAuth login. | [optional] 
**error_code** | **character** | Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;). | [optional] 


