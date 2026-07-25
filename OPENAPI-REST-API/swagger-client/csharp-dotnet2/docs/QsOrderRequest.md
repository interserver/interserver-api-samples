# IO.Swagger.Model.QsOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Server** | **int?** | QuickServer plan/server id from getNewQs. | 
**Password** | **string** | Root password for the QuickServer. | 
**Os** | **string** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to ""]
**Tos** | **bool?** | Terms-of-service acceptance. Must be true to place the order. | 
**Comment** | **string** | Free-form note saved on the service row. | [optional] [default to ""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

