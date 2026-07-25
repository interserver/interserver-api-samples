

# LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`package`** | **Int** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | **String** | IP address the license is bound to. | 
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | **Int** | Billing frequency in months. |  [optional]
**coupon** | **String** | Coupon code. |  [optional]
**comment** | **String** | Free-form note saved on the service row. |  [optional]



