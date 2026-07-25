# MailServiceType

Service type definition for a mail service, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **string** | The ID of the service type. | [optional] [default to undefined]
**services_name** | **string** | The name of the service type. | [optional] [default to undefined]
**services_cost** | **string** | The cost of the service type. | [optional] [default to undefined]
**services_category** | **string** | The category of the service type. | [optional] [default to undefined]
**services_buyable** | **string** | Whether the service type is buyable. | [optional] [default to undefined]
**services_type** | **string** | The type of the service type. | [optional] [default to undefined]
**services_field1** | **string** | Additional field for the service type. | [optional] [default to undefined]
**services_field2** | **string** | Additional field for the service type. | [optional] [default to undefined]
**services_module** | **string** | The module of the service type. | [optional] [default to undefined]

## Example

```typescript
import { MailServiceType } from '@interserver/myadmin-client';

const instance: MailServiceType = {
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
