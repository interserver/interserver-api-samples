# InterserverApiClient::LicenseOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **Integer** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **String** | IP address the license is bound to. | 
**tos** | **BOOLEAN** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **Integer** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **String** | Coupon code. | [optional] [default to &#x27;&#x27;]
**comment** | **String** | Free-form note saved on the service row. | [optional] [default to &#x27;&#x27;]

