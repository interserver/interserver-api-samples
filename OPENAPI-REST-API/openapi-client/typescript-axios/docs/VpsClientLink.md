# VpsClientLink

A navigation link for VPS-related actions in the client portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **string** | Display label for the link. | [optional] [default to undefined]
**link** | **string** | URL or route for the action. | [optional] [default to undefined]
**icon** | **string** | Icon class for the link. | [optional] [default to undefined]
**icon_text** | **string** | Icon text label. | [optional] [default to undefined]
**help_text** | **string** | Help tooltip text for the link. | [optional] [default to undefined]

## Example

```typescript
import { VpsClientLink } from '@interserver/myadmin-client';

const instance: VpsClientLink = {
    label,
    link,
    icon,
    icon_text,
    help_text,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
