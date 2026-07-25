# LicenseServiceType

Service type definition for a software license, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **string** | Service ID | [optional] [default to undefined]
**services_name** | **string** | Service name | [optional] [default to undefined]
**services_cost** | **string** | Service cost | [optional] [default to undefined]
**services_category** | **string** | Service category | [optional] [default to undefined]
**services_buyable** | **string** | Buyable status | [optional] [default to undefined]
**services_type** | **string** | Service type | [optional] [default to undefined]
**services_field1** | **string** | Service field 1 | [optional] [default to undefined]
**services_field2** | **string** | Service field 2 | [optional] [default to undefined]
**services_module** | **string** | Service module | [optional] [default to undefined]

## Example

```typescript
import { LicenseServiceType } from '@interserver/myadmin-client';

const instance: LicenseServiceType = {
    services_id,
    services_name,
    services_cost,
    services_category,
    services_buyable,
    services_type,
    services_field1,
    services_field2,
    services_module,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
