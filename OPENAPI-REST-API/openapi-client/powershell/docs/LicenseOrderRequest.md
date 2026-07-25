# LicenseOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Package** | **Int32** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**Ip** | **String** | IP address the license is bound to. | 
**Tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**Frequency** | **Int32** | Billing frequency in months. | [optional] [default to 1]
**Coupon** | **String** | Coupon code. | [optional] [default to ""]
**Comment** | **String** | Free-form note saved on the service row. | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$LicenseOrderRequest = Initialize-InterserverApiLicenseOrderRequest  -Package null `
 -Ip null `
 -Tos null `
 -Frequency null `
 -Coupon null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$LicenseOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

