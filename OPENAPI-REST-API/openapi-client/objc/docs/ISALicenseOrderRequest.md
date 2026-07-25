# ISALicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **NSNumber*** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **NSString*** | IP address the license is bound to. | 
**tos** | **NSNumber*** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **NSNumber*** | Billing frequency in months. | [optional] [default to @1]
**coupon** | **NSString*** | Coupon code. | [optional] [default to @""]
**comment** | **NSString*** | Free-form note saved on the service row. | [optional] [default to @""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


