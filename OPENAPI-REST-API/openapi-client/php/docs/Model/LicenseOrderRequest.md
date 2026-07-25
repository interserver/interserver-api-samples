# LicenseOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **int** | License service type id from getNewLicense.serviceTypes (must be buyable). |
**ip** | **string** | IP address the license is bound to. |
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. |
**frequency** | **int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to '']

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
