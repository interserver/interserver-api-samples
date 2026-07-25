# LicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **int** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **str** | IP address the license is bound to. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **str** | Coupon code. | [optional] [default to '']
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

