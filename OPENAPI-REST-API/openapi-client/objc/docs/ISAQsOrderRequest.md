# ISAQsOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **NSNumber*** | QuickServer plan/server id from getNewQs. | 
**password** | **NSString*** | Root password for the QuickServer. | 
**os** | **NSString*** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to @""]
**tos** | **NSNumber*** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **NSString*** | Free-form note saved on the service row. | [optional] [default to @""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


