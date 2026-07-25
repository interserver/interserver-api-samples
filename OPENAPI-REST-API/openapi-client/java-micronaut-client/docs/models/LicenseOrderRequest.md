

# LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

The class is defined in **[LicenseOrderRequest.java](../../src/main/java/org/openapitools/model/LicenseOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_package** | `Integer` | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**ip** | `String` | IP address the license is bound to. | 
**tos** | `Boolean` | Terms-of-service acceptance. Must be true to place the order. | 
**frequency** | `Integer` | Billing frequency in months. |  [optional property]
**coupon** | `String` | Coupon code. |  [optional property]
**comment** | `String` | Free-form note saved on the service row. |  [optional property]








