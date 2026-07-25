# BackupClientLink

A navigation link for backup service actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **string** | Label of the client link. | [optional] [default to undefined]
**link** | **string** | Link URL of the client link. | [optional] [default to undefined]
**icon** | **string** | Icon of the client link. | [optional] [default to undefined]
**icon_text** | **string** | Icon text of the client link. | [optional] [default to undefined]
**help_text** | **string** | Help text of the client link. | [optional] [default to undefined]
**other_attr** | **string** | Other attributes of the client link. | [optional] [default to undefined]

## Example

```typescript
import { BackupClientLink } from '@interserver/myadmin-client';

const instance: BackupClientLink = {
    label,
    link,
    icon,
    icon_text,
    help_text,
    other_attr,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
