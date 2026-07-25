# ServicesInfo

Contains the complete catalog of available modules, services, service types, and service categories.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modules** | [**Modules**](Modules.md) |  | [default to undefined]
**services** | [**Services**](Services.md) |  | [default to undefined]
**serviceTypes** | [**ServiceTypes**](ServiceTypes.md) |  | [default to undefined]
**serviceCategories** | [**ServiceCategories**](ServiceCategories.md) |  | [default to undefined]

## Example

```typescript
import { ServicesInfo } from '@interserver/myadmin-client';

const instance: ServicesInfo = {
    modules,
    services,
    serviceTypes,
    serviceCategories,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
