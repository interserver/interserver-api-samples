# QsOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | [**kotlin.Int**](.md) | QuickServer plan/server id from getNewQs. | 
**password** | [**kotlin.String**](.md) | Root password for the QuickServer. | 
**os** | [**kotlin.String**](.md) | OS template file name from getNewQs (falls back to a default if unrecognized). |  [optional]
**tos** | [**kotlin.Boolean**](.md) | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | [**kotlin.String**](.md) | Free-form note saved on the service row. |  [optional]
