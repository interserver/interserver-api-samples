# LicenseOrderRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **package** | **Integer** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to null] |
| **ip** | **String** | IP address the license is bound to. | [default to null] |
| **tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | [default to null] |
| **frequency** | **Integer** | Billing frequency in months. | [optional] [default to 1] |
| **coupon** | **String** | Coupon code. | [optional] [default to ] |
| **comment** | **String** | Free-form note saved on the service row. | [optional] [default to ] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

