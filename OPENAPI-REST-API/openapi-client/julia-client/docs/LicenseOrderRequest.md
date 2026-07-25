# LicenseOrderRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`package`** | **`Int64`** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to nothing]
**`ip`** | **`String`** | IP address the license is bound to. | [default to nothing]
**`tos`** | **`Bool`** | Terms-of-service acceptance. Must be true to place the order. | [default to nothing]
**`frequency`** | **`Int64`** | Billing frequency in months. | [optional] [default to 1]
**`coupon`** | **`String`** | Coupon code. | [optional] [default to ""]
**`comment`** | **`String`** | Free-form note saved on the service row. | [optional] [default to ""]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


