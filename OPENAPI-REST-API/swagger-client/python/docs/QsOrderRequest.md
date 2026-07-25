# QsOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | 
**password** | **str** | Root password for the QuickServer. | 
**os** | **str** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to '']
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

