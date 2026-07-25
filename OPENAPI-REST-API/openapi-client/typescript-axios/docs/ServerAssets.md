# ServerAssets


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | The title of the assets. | [optional] [default to undefined]
**size** | **number** | The size of the assets. | [optional] [default to undefined]
**type** | **string** | The type of the assets. | [optional] [default to undefined]
**header** | **Array&lt;string&gt;** | The header of the assets table. | [optional] [default to undefined]
**rows** | **Array&lt;Array&lt;string&gt;&gt;** | The rows of the assets table. | [optional] [default to undefined]

## Example

```typescript
import { ServerAssets } from '@interserver/myadmin-client';

const instance: ServerAssets = {
    title,
    size,
    type,
    header,
    rows,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
