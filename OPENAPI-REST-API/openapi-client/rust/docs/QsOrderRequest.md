# QsOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **i32** | QuickServer plan/server id from getNewQs. | 
**password** | **String** | Root password for the QuickServer. | 
**os** | Option<**String**> | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional][default to ]
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | Option<**String**> | Free-form note saved on the service row. | [optional][default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


