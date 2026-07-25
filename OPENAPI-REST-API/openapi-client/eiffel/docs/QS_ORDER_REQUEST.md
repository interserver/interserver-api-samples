# QS_ORDER_REQUEST

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **INTEGER_32** | QuickServer plan/server id from getNewQs. | [default to null]
**password** | [**STRING_32**](STRING_32.md) | Root password for the QuickServer. | [default to null]
**os** | [**STRING_32**](STRING_32.md) | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to ]
**tos** | **BOOLEAN** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**comment** | [**STRING_32**](STRING_32.md) | Free-form note saved on the service row. | [optional] [default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


