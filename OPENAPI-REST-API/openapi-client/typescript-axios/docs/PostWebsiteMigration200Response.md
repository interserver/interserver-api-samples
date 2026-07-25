# PostWebsiteMigration200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **string** | Confirmation message. | [optional] [default to undefined]
**ticket** | **number** | The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress. | [optional] [default to undefined]

## Example

```typescript
import { PostWebsiteMigration200Response } from '@interserver/myadmin-client';

const instance: PostWebsiteMigration200Response = {
    text,
    ticket,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
