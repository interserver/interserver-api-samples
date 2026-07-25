# InterserverApiClient.LicenseOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_package** | **Number** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **String** | IP address the license is bound to. | 
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **Number** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **String** | Coupon code. | [optional] [default to &#39;&#39;]
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to &#39;&#39;]


