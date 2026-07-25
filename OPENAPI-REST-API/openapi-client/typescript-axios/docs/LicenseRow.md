# LicenseRow

A result row from the `Licenses` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_id** | **string** | The id of the license. | [optional] [default to undefined]
**license_hostname** | **string** | The hostname of the license. | [optional] [default to undefined]
**license_ip** | **string** | The ip of the license. | [optional] [default to undefined]
**services_name** | **string** | The services name of the license. | [optional] [default to undefined]
**cost** | **string** | The cost of the license. | [optional] [default to undefined]
**license_status** | **string** | The status of the license. | [optional] [default to undefined]
**invoices_paid** | **string** | The invoices paid of the license. | [optional] [default to undefined]
**invoices_date** | **string** | The invoices date of the license. | [optional] [default to undefined]

## Example

```typescript
import { LicenseRow } from '@interserver/myadmin-client';

const instance: LicenseRow = {
    license_id,
    license_hostname,
    license_ip,
    services_name,
    cost,
    license_status,
    invoices_paid,
    invoices_date,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
