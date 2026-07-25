# qs_order_request_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | 
**password** | **char \*** | Root password for the QuickServer. | 
**tos** | **int** | Terms-of-service acceptance. Must be true to place the order. | 
**os** | **char \*** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**comment** | **char \*** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


