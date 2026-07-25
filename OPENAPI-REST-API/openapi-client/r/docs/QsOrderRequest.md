# interserverapi::QsOrderRequest

Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **integer** | QuickServer plan/server id from getNewQs. | 
**password** | **character** | Root password for the QuickServer. | 
**tos** | **character** | Terms-of-service acceptance. Must be true to place the order. | 
**os** | **character** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to &quot;&quot;] 
**comment** | **character** | Free-form note saved on the service row. | [optional] [default to &quot;&quot;] 


