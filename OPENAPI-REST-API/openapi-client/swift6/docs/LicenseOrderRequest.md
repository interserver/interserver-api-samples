# LicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **Int** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **String** | IP address the license is bound to. | 
**tos** | **Bool** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **Int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **String** | Coupon code. | [optional] [default to ""]
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to ""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


