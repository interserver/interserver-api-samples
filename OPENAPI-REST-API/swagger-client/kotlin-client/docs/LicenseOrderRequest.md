# LicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**&#x60;package&#x60;** | [**kotlin.Int**](.md) | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | [**kotlin.String**](.md) | IP address the license is bound to. | 
**tos** | [**kotlin.Boolean**](.md) | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | [**kotlin.Int**](.md) | Billing frequency in months. |  [optional]
**coupon** | [**kotlin.String**](.md) | Coupon code. |  [optional]
**comment** | [**kotlin.String**](.md) | Free-form note saved on the service row. |  [optional]
