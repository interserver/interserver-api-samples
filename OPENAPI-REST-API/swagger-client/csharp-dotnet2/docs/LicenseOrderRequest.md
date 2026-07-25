# IO.Swagger.Model.LicenseOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Package** | **int?** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**Ip** | **string** | IP address the license is bound to. | 
**Tos** | **bool?** | Terms-of-service acceptance. Must be true to place the order. | 
**Frequency** | **int?** | Billing frequency in months. | [optional] [default to 1]
**Coupon** | **string** | Coupon code. | [optional] [default to ""]
**Comment** | **string** | Free-form note saved on the service row. | [optional] [default to ""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

