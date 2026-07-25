# QsOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **Integer** | QuickServer plan/server id from getNewQs. | 
**password** | **String** | Root password for the QuickServer. | 
**os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). |  [optional]
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **String** | Free-form note saved on the service row. |  [optional]
