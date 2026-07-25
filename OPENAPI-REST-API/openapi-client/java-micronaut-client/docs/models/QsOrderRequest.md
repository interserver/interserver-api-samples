

# QsOrderRequest

Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.

The class is defined in **[QsOrderRequest.java](../../src/main/java/org/openapitools/model/QsOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | `Integer` | QuickServer plan/server id from getNewQs. | 
**password** | `String` | Root password for the QuickServer. | 
**tos** | `Boolean` | Terms-of-service acceptance. Must be true to place the order. | 
**os** | `String` | OS template file name from getNewQs (falls back to a default if unrecognized). |  [optional property]
**comment** | `String` | Free-form note saved on the service row. |  [optional property]







