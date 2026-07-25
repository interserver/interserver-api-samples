# LicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Package_** | **int32** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to null]
**Ip** | **string** | IP address the license is bound to. | [default to null]
**Tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**Frequency** | **int32** | Billing frequency in months. | [optional] [default to 1]
**Coupon** | **string** | Coupon code. | [optional] 
**Comment** | **string** | Free-form note saved on the service row. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

