# InterServerAPI::Object::LicenseOrderRequest

## Load the model package
```perl
use InterServerAPI::Object::LicenseOrderRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **int** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **string** | IP address the license is bound to. | 
**tos** | **boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **int** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **string** | Coupon code. | [optional] [default to &#39;&#39;]
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to &#39;&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


