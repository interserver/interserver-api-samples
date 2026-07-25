# TemplateRequest

VPS OS Template Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template** | **string** | OS Template Filename | [default to undefined]
**localPassword** | **string** | Password for this account. | [default to undefined]
**password** | **string** | Password for Root / Administrator Account. | [optional] [default to undefined]

## Example

```typescript
import { TemplateRequest } from '@interserver/myadmin-client';

const instance: TemplateRequest = {
    template,
    localPassword,
    password,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
