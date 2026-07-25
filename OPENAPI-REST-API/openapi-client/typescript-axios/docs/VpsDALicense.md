# VpsDALicense

A DirectAdmin license tier option.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | License tier name. | [optional] [default to undefined]
**sub_name** | **string** | License tier sub-name. | [optional] [default to undefined]
**cost** | **number** | Monthly cost in cents. | [optional] [default to undefined]
**img_disabled** | **string** | Image path for the disabled state icon. | [optional] [default to undefined]
**img_active** | **string** | Image path for the active state icon. | [optional] [default to undefined]

## Example

```typescript
import { VpsDALicense } from '@interserver/myadmin-client';

const instance: VpsDALicense = {
    name,
    sub_name,
    cost,
    img_disabled,
    img_active,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
