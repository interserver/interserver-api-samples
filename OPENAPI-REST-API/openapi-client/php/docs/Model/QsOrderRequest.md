# QsOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. |
**password** | **string** | Root password for the QuickServer. |
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. |
**os** | **string** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
