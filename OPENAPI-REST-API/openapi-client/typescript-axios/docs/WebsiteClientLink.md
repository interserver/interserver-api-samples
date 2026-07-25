# WebsiteClientLink

A navigation link for webhosting-related actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **string** | Label for the link | [optional] [default to undefined]
**link** | **string** | Link URL | [optional] [default to undefined]
**icon** | **string** | Icon for the link | [optional] [default to undefined]
**icon_text** | **string** | Icon text for the link | [optional] [default to undefined]
**help_text** | **string** | Help text for the link | [optional] [default to undefined]
**other_attr** | **string** | Other attributes for the link | [optional] [default to undefined]

## Example

```typescript
import { WebsiteClientLink } from '@interserver/myadmin-client';

const instance: WebsiteClientLink = {
    label,
    link,
    icon,
    icon_text,
    help_text,
    other_attr,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
