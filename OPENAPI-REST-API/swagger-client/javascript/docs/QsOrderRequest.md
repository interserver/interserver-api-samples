# InterServerManagementApi.QsOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **Number** | QuickServer plan/server id from getNewQs. | 
**password** | **String** | Root password for the QuickServer. | 
**os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to &#x27;&#x27;]
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to &#x27;&#x27;]
