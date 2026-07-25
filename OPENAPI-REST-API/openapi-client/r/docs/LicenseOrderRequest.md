# interserverapi::LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package** | **integer** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **character** | IP address the license is bound to. | 
**tos** | **character** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **integer** | Billing frequency in months. | [optional] [default to 1] 
**coupon** | **character** | Coupon code. | [optional] [default to &quot;&quot;] 
**comment** | **character** | Free-form note saved on the service row. | [optional] [default to &quot;&quot;] 


