# QsOrderRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`server`** | **`Int64`** | QuickServer plan/server id from getNewQs. | [default to nothing]
**`password`** | **`String`** | Root password for the QuickServer. | [default to nothing]
**`os`** | **`String`** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to ""]
**`tos`** | **`Bool`** | Terms-of-service acceptance. Must be true to place the order. | [default to nothing]
**`comment`** | **`String`** | Free-form note saved on the service row. | [optional] [default to ""]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


