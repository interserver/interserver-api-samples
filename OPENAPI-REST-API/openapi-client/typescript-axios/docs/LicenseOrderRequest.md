# LicenseOrderRequest

Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_package** | **number** | License service type id from getNewLicense.serviceTypes (must be buyable). | [default to undefined]
**ip** | **string** | IP address the license is bound to. | [default to undefined]
**tos** | **boolean** | Terms-of-service acceptance. Must be true to place the order. | [default to undefined]
**frequency** | **number** | Billing frequency in months. | [optional] [default to 1]
**coupon** | **string** | Coupon code. | [optional] [default to '']
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to '']

## Example

```typescript
import { LicenseOrderRequest } from '@interserver/myadmin-client';

const instance: LicenseOrderRequest = {
    _package,
    ip,
    tos,
    frequency,
    coupon,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
